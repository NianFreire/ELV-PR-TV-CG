function [Fi,cfv1,cfv2,G_1,G_2] = Vapor_LM(I,E,x1,Tdata,P,Tc1,Tc2,Pc1,Pc2,W1,W2,N1,N2,K3_1,K3_2,R,g1,g2,n1,n2,Ng1,Ng2,N,M)
    Tr1=Tdata/Tc1;
    Tr2=Tdata/Tc2;
    M1=0.20473+0.83548.*W1-0.1847.*W1.^2+0.16675.*W1.^3-0.09881.*W1.^4;
    M2=0.20473+0.83548.*W2-0.1847.*W2.^2+0.16675.*W2.^3-0.09881.*W2.^4;
    alfa1=(1+M1.*(1-Tr1)+N1.*(1-Tr1).*(0.7-Tr1)).^2;
    alfa2=(1+M2.*(1-Tr2)+N2.*(1-Tr2).*(0.7-Tr2)).^2;
    K1_1=0.00185+0.00438.*W1+0.36322.*W1^.2-0.90831.*W1.^3+0.55885.*W1.^4;
    K1_2=0.00185+0.00438.*W2+0.36322.*W2^.2-0.90831.*W2.^3+0.55885.*W2.^4;
    K2_1=-0.00542-0.51112.*K3_1+0.04533.*K3_1.^2+0.07447.*K3_1.^3-0.03831.*K3_1.^4;
    K2_2=-0.00542-0.51112.*K3_2+0.04533.*K3_2.^2+0.07447.*K3_2.^3-0.03831.*K3_2.^4;
    b1=(0.0778.*R.*Tc1)/Pc1;
    b2=(0.0778.*R.*Tc2)/Pc2;
    bij=((b1.^(3/4)+b2.^(3/4))/2).^(4/3);
    t1=(R.*Tc1/Pc1).*(K1_1+K2_1.*(1-Tr1.^(2/3))+K3_1.*(1-Tr1.^(2/3)).^2);
    t2=(R.*Tc2/Pc2).*(K1_2+K2_2.*(1-Tr2.^(2/3))+K3_2.*(1-Tr2.^(2/3)).^2);
    a1=(0.45724.*(R.^2).*(Tc1.^2).*alfa1)/Pc1;
    a2=(0.45724.*(R.^2).*(Tc2.^2).*alfa2)/Pc2;
    lnPr0_1=5.92714-(6.09648/Tr1)-1.28862.*log(Tr1)+0.169347.*Tr1.^6;
    lnPr0_2=5.92714-(6.09648/Tr2)-1.28862.*log(Tr2)+0.169347.*Tr2.^6;
    lnPr1_1=15.2518-(15.6875/Tr1)-13.4721.*log(Tr1)+0.43577.*Tr1.^6;
    lnPr1_2=15.2518-(15.6875/Tr2)-13.4721.*log(Tr2)+0.43577.*Tr2.^6;
    lnPv1=lnPr0_1+lnPr1_1.*W1;
    lnPv2=lnPr0_2+lnPr1_2.*W2;
    Pvi1=exp(lnPv1);
    Pvi2=exp(lnPv2);
    Pv2=Pvi2.*Pc2;
    Pv1=Pvi1.*Pc1;
    [gamma1,gamma2,~,~,~,~]=CG_Liquid(x1,Tdata,g1,g2,n1,n2,Ng1,Ng2,R,N,M);
    G_1=gamma1;
    G_2=gamma2;
    if I==0
        if E==0
            ydata=1-(1-x1).*Pv2.*G_2/P;
            if ydata>1
                ydata=1;
            end
            if ydata<0
                ydata=0;
            end
        else
            ydata=1-(1-x1).*Pv2/P;
            if ydata>1
                ydata=1;
            end
            if ydata<0
                ydata=0;
            end
        end
        FL1=x1.*G_1.*Pv1;
        FL2=(1-x1).*G_2.*Pv2;
        [gm1,gm2,ge1,ge2] = CG_Vapor(ydata,Tdata,g1,g2,n1,n2,Ng1,Ng2,R,N,M);
        geR = R.*Tdata.*(ydata.*log(gm1)+(1-ydata).*log(gm2));
        bv = ydata.^2.*b1+ydata.*(1-ydata).*bij+(1-ydata).^2.*b2;
        av = bv.*((ydata.*a1/b1+(1-ydata).*a2/b2)+geR/(-0.53087));
        tv = ydata.*t1+(1-ydata).*t2;
        Av = av.*P/(Tdata.^2.*R.^2);
        Bv = bv.*P/(Tdata.*R);
        Tv = tv.*P/(Tdata.*R);
        co1 = 1;
        co2 = Bv+3.*Tv-1;
        co3 = Av-3.*Bv.^2+3.*Tv.^2+2.*Bv.*Tv-2.*Bv-2.*Tv;
        co4 = Bv.^3+Tv.^3+Bv.^2-Tv.^2+Bv.*Tv.^2-3.*(Bv.^2).*Tv-2.*Bv.*Tv-Bv.*Av+Tv.*Av;
        STOP1 = imag(co4);
        if STOP1~=0
            return
        end
        STOP2 = isinf(co4);
        if STOP2==1
            return
        end
        STOP3 = isnan(co4);
        if STOP3==1
            return
        end
        eqn = [co1 co2 co3 co4];
        eqn_r = roots(eqn);
        Zv = max(eqn_r);
        %Coeficiente de fugacidade do componente 1
        tt1_1 = Zv+Tv-1;
        tt1_2 = (2.*(ydata.*((b1.^(3/4)+bij.^(3/4))/2).^(4/3)+(1-ydata).*((b2.^(3/4)+bij.^(3/4))/2).^(4/3))/bv-1);
        tt2 = -log(Zv+Tv-Bv);
        tt3_1 = (a1/b1+ge1/(-0.53087))/((2.^1.5).*Tdata.*R);
        tt3_2 = log((Zv+Tv+(1-2.^0.5).*Bv)/(Zv+Tv+(1+2.^0.5).*Bv));
        cfv1 = exp(tt1_1*tt1_2+tt2+tt3_1*tt3_2);
        %Coeficiente de fugacidade do componente 2
        tt1_1 = Zv+Tv-1;
        tt1_2 = (2.*(ydata.*((b1.^(3/4)+bij.^(3/4))/2).^(4/3)+(1-ydata).*((b2.^(3/4)+bij.^(3/4))/2).^(4/3))/bv-1);
        tt2 = -log(Zv+Tv-Bv);
        tt3_1 = (a2/b2+ge2/(-0.53087))/((2.^1.5).*Tdata.*R);
        tt3_2 = log((Zv+Tv+(1-2.^0.5).*Bv)/(Zv+Tv+(1+2.^0.5).*Bv));
        cfv2 = exp(tt1_1*tt1_2+tt2+tt3_1*tt3_2);
        Fi = abs(FL1-ydata.*P.*cfv1)+abs(FL2-(1-ydata).*P.*cfv2);
    end
end