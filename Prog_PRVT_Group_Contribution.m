function varargout = Prog_PRVT_Group_Contribution(varargin)
% PROG_PRVT_GROUP_CONTRIBUTION MATLAB code for Prog_PRVT_Group_Contribution.fig
%      PROG_PRVT_GROUP_CONTRIBUTION, by itself, creates a new PROG_PRVT_GROUP_CONTRIBUTION or raises the existing
%      singleton*.
%
%      H = PROG_PRVT_GROUP_CONTRIBUTION returns the handle to a new PROG_PRVT_GROUP_CONTRIBUTION or the handle to
%      the existing singleton*.
%
%      PROG_PRVT_GROUP_CONTRIBUTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROG_PRVT_GROUP_CONTRIBUTION.M with the given input arguments.
%
%      PROG_PRVT_GROUP_CONTRIBUTION('Property','Value',...) creates a new PROG_PRVT_GROUP_CONTRIBUTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Prog_PRVT_Group_Contribution_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Prog_PRVT_Group_Contribution_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Prog_PRVT_Group_Contribution

% Last Modified by GUIDE v2.5 16-Nov-2017 09:35:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Prog_PRVT_Group_Contribution_OpeningFcn, ...
                   'gui_OutputFcn',  @Prog_PRVT_Group_Contribution_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Prog_PRVT_Group_Contribution is made visible.
function Prog_PRVT_Group_Contribution_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Prog_PRVT_Group_Contribution (see VARARGIN)

% Choose default command line output for Prog_PRVT_Group_Contribution
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Prog_PRVT_Group_Contribution wait for user response (see UIRESUME)
% uiwait(handles.figure1);

clc
movegui('center')
axes(handles.axes2);
image1=imread('Logo_EEL.jpg');
image(image1);
axis off
axis image
axes(handles.axes3);
image2=imread('Logo_USP.jpg');
image(image2);
axis off
axis image


% --- Outputs from this function are returned to the command line.
function varargout = Prog_PRVT_Group_Contribution_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton1,'Visible','Off');
set(handles.pushbutton4,'Visible','On');
set(handles.pushbutton5,'Visible','On');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton3,'Visible','Off');
set(handles.pushbutton1,'Visible','On');
set(handles.edit17,'Visible','Off');
set(handles.edit17,'String','---');
set(handles.uipanel4,'Visible','Off');
set(handles.text9,'Visible','Off');
set(handles.text10,'Visible','Off');
set(handles.text11,'Visible','Off');
set(handles.text12,'Visible','Off');
set(handles.text13,'Visible','Off');
set(handles.edit6,'Visible','Off');
set(handles.edit7,'Visible','Off');
set(handles.edit8,'Visible','Off');
set(handles.edit9,'Visible','Off');
set(handles.edit10,'Visible','Off');
set(handles.axes1,'Visible','Off');
set(handles.uipanel3,'Visible','Off');
set(handles.edit1,'String',0);
set(handles.edit2,'String',0);
set(handles.edit3,'String','0 0 0');
set(handles.edit4,'String','0 0 0');
set(handles.edit5,'String','0 0 0');
set(handles.edit6,'String','---');
set(handles.edit7,'String','---');
set(handles.edit8,'String',0);
set(handles.edit9,'String',0);
set(handles.edit10,'String',0);
set(handles.edit3,'Visible','On');
set(handles.edit4,'Visible','On');
set(handles.edit5,'Visible','On');
set(handles.popupmenu1,'Value',1);
set(handles.popupmenu2,'Value',1);
axes(handles.axes1)
yh=get(handles.pushbutton3, 'Value');
if yh==1
    cla
end


function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

F1=get(hObject,'String');
S1=get(hObject,'Value');
Name1=F1(S1);
%Ng=Número total de grupos
%n=Número específico de um grupo
%g=Existência de um grupo específico
%1=CH3; 2=CH2; 3=CH; 4=CHd; 5=OH (primário); 6=OH (secundário); 7=CH3OH;
%8=H2O; 9=CH2CO; 10=CH2COO; 11=CO2; 12=IM; 13=Tf2N
if S1==1
    %Dióxido de Carbono
    Tc1=304.13;
    Pc1=73.77;
    W1=0.228;
    N1=0.11333;
    K3_1=0.28996;
    Ng1=1;
    n1=[0 0 0 0 0 0 0 0 0 0 1 0 0 0];
    g1=[0 0 0 0 0 0 0 1 0 0 0];
end
if S1==2
    %Metanol
    Tc1=512.58;
    Pc1=80.96;
    W1=0.566;
    N1=0.03221;
    K3_1=-0.04426;
    Ng1=1;
    n1=[0 0 0 0 0 0 1 0 0 0 0 0 0 0];
    g1=[0 0 0 1 0 0 0 0 0 0 0];
end
if S1==3
    %Etanol
    Tc1=513.9;
    Pc1=63;
    W1=0.649;
    N1=0.20761;
    K3_1=0.02687;
    Ng1=3;
    n1=[1 1 0 0 1 0 0 0 0 0 0 0 0 0];
    g1=[1 0 1 0 0 0 0 0 0 0 0];
end
if S1==4
    %Água
    Tc1=647.13;
    Pc1=220.55;
    W1=0.345;
    N1=0.1156;
    K3_1=0.014171;
    Ng1=1;
    n1=[0 0 0 0 0 0 0 1 0 0 0 0 0 0];
    g1=[0 0 0 0 1 0 0 0 0 0 0];
end
if S1==5
    %Etano
    Tc1=305.32;
    Pc1=48.72;
    W1=0.09949;
    N1=0.11292;
    K3_1=0.20077;
    Ng1=2;
    n1=[2 0 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==6
    %Butano
    Tc1=425.12;
    Pc1=37.96;
    W1=0.20016;
    N1=0.15546;
    K3_1=0.25370;
    Ng1=4;
    n1=[2 2 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==7
    %Pentano
    Tc1=469.8;
    Pc1=33.6;
    W1=0.251;
    N1=0.16851;
    K3_1=0.26392;
    Ng1=5;
    n1=[2 3 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==8
    %Hexano
    Tc1=507.43;
    Pc1=30.12;
    W1=0.305;
    N1=0.16397;
    K3_1=0.27558;
    Ng1=6;
    n1=[2 4 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==9
    %Heptano
    Tc1=540.26;
    Pc1=27.36;
    W1=0.34947;
    N1=0.17822;
    K3_1=0.26154;
    Ng1=7;
    n1=[2 5 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==10
    %Dodecano
    Tc1=658;
    Pc1=18.2;
    W1=0.5764;
    N1=0.28162;
    K3_1=0.08256;
    Ng1=12;
    n1=[2 10 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==11
    %Tetradecano
    Tc1=693;
    Pc1=15.7;
    W1=0.64302;
    N1=0.29092;
    K3_1=-0.02270;
    Ng1=14;
    n1=[2 12 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==12
    %Octacosano
    Tc1=832;
    Pc1=8.5;
    W1=1.238;
    N1=0.76902;
    K3_1=1.85456;
    Ng1=28;
    n1=[2 26 0 0 0 0 0 0 0 0 0 0 0 0];
    g1=[1 0 0 0 0 0 0 0 0 0 0];
end
if S1==13
    %Glicerol
    Tc1=850;
    Pc1=75;
    W1=0.51269;
    N1=0.6069;
    K3_1=0.1826;
    Ng1=6;
    n1=[0 2 1 0 2 1 0 0 0 0 0 0 0 0];
    g1=[1 0 1 0 0 0 0 0 0 0 0];
end
if S1==14
    %Caproato de Metila
    Tc1=602.75;
    Pc1=29.5;
    W1=0.490;
    N1=0.17561;
    K3_1=0.27194;
    Ng1=6;
    n1=[2 3 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==15
    %Caproato de Etila
    Tc1=615.2;
    Pc1=26.57;
    W1=0.54;
    N1=0.16041;
    K3_1=0.25307;
    Ng1=7;
    n1=[2 4 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==16
    %Caprilato de Metila
    Tc1=655;
    Pc1=24.12;
    W1=0.492;
    N1=0.22524;
    K3_1=0.19016;
    Ng1=8;
    n1=[2 5 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==17
    %Caprilato de Etila
    Tc1=656.39;
    Pc1=21.6;
    W1=0.628;
    N1=0.07186;
    K3_1=0.02892;
    Ng1=9;
    n1=[2 6 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==18
    %Caprato de Metila
    Tc1=671;
    Pc1=19.9;
    W1=0.69929;
    N1=0.16841;
    K3_1=-0.0246;
    Ng1=10;
    n1=[2 7 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==19
    %Caprato de Etila
    Tc1=690.2;
    Pc1=18.46;
    W1=0.709;
    N1=0.09051;
    K3_1=-0.13055;
    Ng1=11;
    n1=[2 8 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==20
    %Laurato de Metila
    Tc1=712;
    Pc1=17.4;
    W1=0.69242;
    N1=0.29683;
    K3_1=-0.0764;
    Ng1=12;
    n1=[2 9 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==21
    %Laurato de Etila
    Tc1=719.13;
    Pc1=15.97;
    W1=0.787;
    N1=-0.06894;
    K3_1=-0.25249;
    Ng1=13;
    n1=[2 10 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==22
    %Miristato de Metila
    Tc1=740;
    Pc1=14.287;
    W1=0.7365;
    N1=0.28474;
    K3_1=-0.26082;
    Ng1=14;
    n1=[2 11 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==23
    %Miristato de Etila
    Tc1=744.27;
    Pc1=14.02;
    W1=0.862;
    N1=0.04307;
    K3_1=-0.18917;
    Ng1=15;
    n1=[2 12 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==24
    %Palmitato de Metila
    Tc1=765;
    Pc1=12.77;
    W1=0.8037;
    N1=0.34676;
    K3_1=-0.33905;
    Ng1=16;
    n1=[2 13 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==25
    %Palmitato de Etila
    Tc1=766.41;
    Pc1=12.43;
    W1=0.935;
    N1=-0.19741;
    K3_1=-0.16089;
    Ng1=17;
    n1=[2 14 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==26
    %Estearato de Metila
    Tc1=788;
    Pc1=11.65;
    W1=0.8645;
    N1=0.37791;
    K3_1=-0.37991;
    Ng1=18;
    n1=[2 15 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==27
    %Estearato de Etila
    Tc1=775.7869;
    Pc1=11.9783;
    W1=0.961;
    N1=1.9262;
    K3_1=0.002996;
    Ng1=19;
    n1=[2 16 0 0 0 0 0 0 0 1 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==28
    %Oleato de Metila
    Tc1=764;
    Pc1=12.8;
    W1=1.049;
    N1=0.34319;
    K3_1=0.39609;
    Ng1=17;
    n1=[2 13 0 1 0 0 0 0 0 1 0 0 0 0];
    g1=[1 1 0 0 0 0 1 0 0 0 0];
end
if S1==29
    %Oleato de Etila
    Tc1=771;
    Pc1=11.9417;
    W1=0.992;
    N1=1.1753;
    K3_1=0.05645;
    Ng1=18;
    n1=[2 14 0 1 0 0 0 0 0 1 0 0 0 0];
    g1=[1 1 0 0 0 0 1 0 0 0 0];
end
if S1==30
    %Linoleato de Metila
    Tc1=791.1;
    Pc1=12.55;
    W1=0.9731;
    N1=-0.3148;
    K3_1=-0.1245;
    Ng1=16;
    n1=[2 11 0 2 0 0 0 0 0 1 0 0 0 0];
    g1=[1 1 0 0 0 0 1 0 0 0 0];
end
if S1==31
    %Linoleato de Etila
    Tc1=785.89;
    Pc1=11.57;
    W1=1.008;
    N1=-0.25427;
    K3_1=-0.00984;
    Ng1=17;
    n1=[2 12 0 2 0 0 0 0 0 1 0 0 0 0];
    g1=[1 1 0 0 0 0 1 0 0 0 0];
end
if S1==32
    %Tricaprilina
    Tc1=793.4;
    Pc1=7.43;
    W1=1.05;
    N1=3.15;
    K3_1=-0.2062;
    Ng1=24;
    n1=[3 17 1 0 0 0 0 0 0 3 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==33
    %Tricaprina
    Tc1=835.6;
    Pc1=5.91;
    W1=1.21;
    N1=3.1733;
    K3_1=-1.9247;
    Ng1=30;
    n1=[3 23 1 0 0 0 0 0 0 3 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==34
    %Trilaurina
    Tc1=869.8;
    Pc1=4.9;
    W1=1.37;
    N1=3.6511;
    K3_1=-2.4155;
    Ng1=36;
    n1=[3 29 1 0 0 0 0 0 0 3 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==35
    %Trimiristina
    Tc1=898.56;
    Pc1=4.18;
    W1=1.51;
    N1=5.0589;
    K3_1=-2.7157;
    Ng1=42;
    n1=[3 35 1 0 0 0 0 0 0 3 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==36
    %Tripalmitina
    Tc1=923.4;
    Pc1=3.7;
    W1=1.63;
    N1=5.8451;
    K3_1=-2.8826;
    Ng1=48;
    n1=[3 41 1 0 0 0 0 0 0 3 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==37
    %Triestearina
    Tc1=945.2;
    Pc1=3.3;
    W1=1.73;
    N1=6.3987;
    K3_1=-3.0225;
    Ng1=54;
    n1=[3 47 1 0 0 0 0 0 0 3 0 0 0 0];
    g1=[1 0 0 0 0 0 1 0 0 0 0];
end
if S1==38
    %Trioleína
    Tc1=954.1;
    Pc1=3.6;
    W1=1.686;
    N1=6.6467;
    K3_1=-3.2452;
    Ng1=51;
    n1=[3 41 1 3 0 0 0 0 0 3 0 0 0 0];
    g1=[1 1 0 0 0 0 1 0 0 0 0];
end
if S1==39
    %1-Hexyl-3-methylimidazolium Bis(trifluormethylsulfonyl)imide
    Tc1=1292.8;
    Pc1=23.89;
    W1=0.3893;
    N1=0.24412;
    K3_1=0.19999;
    Ng1=8;
    n1=[2 5 0 0 0 0 0 0 0 0 0 1 0 0];
    g1=[1 0 0 0 0 0 0 0 1 0 0];
end
V1=[Tc1 Pc1 W1 N1 K3_1 Ng1 S1];
set(handles.edit11,'String',V1);
set(handles.edit12,'String',n1);
set(handles.edit13,'String',g1);
set(handles.edit6,'String',Name1);


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

F2=get(hObject,'String');
S2=get(hObject,'Value');
Name2=F2(S2);
%Ng=Número total de grupos
%n=Número específico de um grupo
%g=Existência de um grupo específico
%1=CH3; 2=CH2; 3=CH; 4=CHd; 5=OH (primário); 6=OH (secundário); 7=CH3OH; 8=H2O; 9=CH2CO; 10=CH2COO; 11=CO2
if S2==1
    %Dióxido de Carbono
    Tc2=304.13;
    Pc2=73.77;
    W2=0.228;
    N2=0.11333;
    K3_2=0.28996;
    Ng2=1;
    n2=[0 0 0 0 0 0 0 0 0 0 1 0 0 0];
    g2=[0 0 0 0 0 0 0 1 0 0 0];
end
if S2==2
    %Metanol
    Tc2=512.58;
    Pc2=80.96;
    W2=0.566;
    N2=0.03221;
    K3_2=-0.04426;
    Ng2=1;
    n2=[0 0 0 0 0 0 1 0 0 0 0 0 0 0];
    g2=[0 0 0 1 0 0 0 0 0 0 0];
end
if S2==3
    %Etanol
    Tc2=513.9;
    Pc2=63;
    W2=0.649;
    N2=0.20761;
    K3_2=0.02687;
    Ng2=3;
    n2=[1 1 0 0 1 0 0 0 0 0 0 0 0 0];
    g2=[1 0 1 0 0 0 0 0 0 0 0];
end
if S2==4
    %Água
    Tc2=647.13;
    Pc2=220.55;
    W2=0.345;
    N2=0.1156;
    K3_2=0.014171;
    Ng2=1;
    n2=[0 0 0 0 0 0 0 1 0 0 0 0 0 0];
    g2=[0 0 0 0 1 0 0 0 0 0 0];
end
if S2==5
    %Etano
    Tc2=305.32;
    Pc2=48.72;
    W2=0.09949;
    N2=0.11292;
    K3_2=0.20077;
    Ng2=2;
    n2=[2 0 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==6
    %Butano
    Tc2=425.12;
    Pc2=37.96;
    W2=0.20016;
    N2=0.15546;
    K3_2=0.25370;
    Ng2=4;
    n2=[2 2 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==7
    %Pentano
    Tc2=469.8;
    Pc2=33.6;
    W2=0.251;
    N2=0.16851;
    K3_2=0.26392;
    Ng2=5;
    n2=[2 3 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==8
    %Hexano
    Tc2=507.43;
    Pc2=30.12;
    W2=0.305;
    N2=0.16397;
    K3_2=0.27558;
    Ng2=6;
    n2=[2 4 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==9
    %Heptano
    Tc2=540.26;
    Pc2=27.36;
    W2=0.34947;
    N2=0.17822;
    K3_2=0.26154;
    Ng2=7;
    n2=[2 5 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==10
    %Dodecano
    Tc2=658;
    Pc2=18.2;
    W2=0.5764;
    N2=0.28162;
    K3_2=0.08256;
    Ng2=12;
    n2=[2 10 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==11
    %Tetradecano
    Tc2=693;
    Pc2=15.7;
    W2=0.64302;
    N2=0.29092;
    K3_2=-0.02270;
    Ng2=14;
    n2=[2 12 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==12
    %Octacosano
    Tc2=832;
    Pc2=8.5;
    W2=1.238;
    N2=0.76902;
    K3_2=1.85456;
    Ng2=28;
    n2=[2 26 0 0 0 0 0 0 0 0 0 0 0 0];
    g2=[1 0 0 0 0 0 0 0 0 0 0];
end
if S2==13
    %Glicerol
    Tc2=850;
    Pc2=75;
    W2=0.51269;
    N2=0.6069;
    K3_2=0.1826;
    Ng2=6;
    n2=[0 2 1 0 2 1 0 0 0 0 0 0 0 0];
    g2=[1 0 1 0 0 0 0 0 0 0 0];
end
if S2==14
    %Caproato de Metila
    Tc2=602.75;
    Pc2=29.5;
    W2=0.490;
    N2=0.17561;
    K3_2=0.27194;
    Ng2=6;
    n2=[2 3 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==15
    %Caproato de Etila
    Tc2=615.2;
    Pc2=26.57;
    W2=0.54;
    N2=0.16041;
    K3_2=0.25307;
    Ng2=7;
    n2=[2 4 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==16
    %Caprilato de Metila
    Tc2=655;
    Pc2=24.12;
    W2=0.492;
    N2=0.22524;
    K3_2=0.19016;
    Ng2=8;
    n2=[2 5 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==17
    %Caprilato de Etila
    Tc2=656.39;
    Pc2=21.6;
    W2=0.628;
    N2=0.07186;
    K3_2=0.02892;
    Ng2=9;
    n2=[2 6 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==18
    %Caprato de Metila
    Tc2=671;
    Pc2=19.9;
    W2=0.69929;
    N2=0.16841;
    K3_2=-0.0246;
    Ng2=10;
    n2=[2 7 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==19
    %Caprato de Etila
    Tc2=690.2;
    Pc2=18.46;
    W2=0.709;
    N2=0.09051;
    K3_2=-0.13055;
    Ng2=11;
    n2=[2 8 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==20
    %Laurato de Metila
    Tc2=712;
    Pc2=17.4;
    W2=0.69242;
    N2=0.29683;
    K3_2=-0.0764;
    Ng2=12;
    n2=[2 9 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==21
    %Laurato de Etila
    Tc2=719.13;
    Pc2=15.97;
    W2=0.787;
    N2=-0.06894;
    K3_2=-0.25249;
    Ng2=13;
    n2=[2 10 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==22
    %Miristato de Metila
    Tc2=740;
    Pc2=14.287;
    W2=0.7365;
    N2=0.28474;
    K3_2=-0.26082;
    Ng2=14;
    n2=[2 11 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==23
    %Miristato de Etila
    Tc2=744.27;
    Pc2=14.02;
    W2=0.862;
    N2=0.04307;
    K3_2=-0.18917;
    Ng2=15;
    n2=[2 12 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==24
    %Palmitato de Metila
    Tc2=765;
    Pc2=12.77;
    W2=0.8037;
    N2=0.34676;
    K3_2=-0.33905;
    Ng2=16;
    n2=[2 13 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==25
    %Palmitato de Etila
    Tc2=766.41;
    Pc2=12.43;
    W2=0.935;
    N2=-0.19741;
    K3_2=-0.16089;
    Ng2=17;
    n2=[2 14 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==26
    %Estearato de Metila
    Tc2=788;
    Pc2=11.65;
    W2=0.8645;
    N2=0.37791;
    K3_2=-0.37991;
    Ng2=18;
    n2=[2 15 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==27
    %Estearato de Etila
    Tc2=775.7869;
    Pc2=11.9783;
    W2=0.961;
    N2=1.9262;
    K3_2=0.002996;
    Ng2=19;
    n2=[2 16 0 0 0 0 0 0 0 1 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==28
    %Oleato de Metila
    Tc2=764;
    Pc2=12.8;
    W2=1.049;
    N2=0.34319;
    K3_2=0.39609;
    Ng2=17;
    n2=[2 13 0 1 0 0 0 0 0 1 0 0 0 0];
    g2=[1 1 0 0 0 0 1 0 0 0 0];
end
if S2==29
    %Oleato de Etila
    Tc2=771;
    Pc2=11.9417;
    W2=0.992;
    N2=1.1753;
    K3_2=0.05645;
    Ng2=18;
    n2=[2 14 0 1 0 0 0 0 0 1 0 0 0 0];
    g2=[1 1 0 0 0 0 1 0 0 0 0];
end
if S2==30
    %Linoleato de Metila
    Tc2=791.1;
    Pc2=12.55;
    W2=0.9731;
    N2=-0.3148;
    K3_2=-0.1245;
    Ng2=16;
    n2=[2 11 0 2 0 0 0 0 0 1 0 0 0 0];
    g2=[1 1 0 0 0 0 1 0 0 0 0];
end
if S2==31
    %Linoleato de Etila
    Tc2=785.89;
    Pc2=11.57;
    W2=1.008;
    N2=-0.25427;
    K3_2=-0.00984;
    Ng2=17;
    n2=[2 12 0 2 0 0 0 0 0 1 0 0 0 0];
    g2=[1 1 0 0 0 0 1 0 0 0 0];
end
if S2==32
    %Tricaprilina
    Tc2=793.4;
    Pc2=7.43;
    W2=1.05;
    N2=3.15;
    K3_2=-0.2062;
    Ng2=24;
    n2=[3 17 1 0 0 0 0 0 0 3 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==33
    %Tricaprina
    Tc2=835.6;
    Pc2=5.91;
    W2=1.21;
    N2=3.1733;
    K3_2=-1.9247;
    Ng2=30;
    n2=[3 23 1 0 0 0 0 0 0 3 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==34
    %Trilaurina
    Tc2=869.8;
    Pc2=4.9;
    W2=1.37;
    N2=3.6511;
    K3_2=-2.4155;
    Ng2=36;
    n2=[3 29 1 0 0 0 0 0 0 3 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==35
    %Trimiristina
    Tc2=898.56;
    Pc2=4.18;
    W2=1.51;
    N2=5.0589;
    K3_2=-2.7157;
    Ng2=42;
    n2=[3 35 1 0 0 0 0 0 0 3 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==36
    %Tripalmitina
    Tc2=923.4;
    Pc2=3.7;
    W2=1.63;
    N2=5.8451;
    K3_2=-2.8826;
    Ng2=48;
    n2=[3 41 1 0 0 0 0 0 0 3 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==37
    %Triestearina
    Tc2=945.2;
    Pc2=3.3;
    W2=1.73;
    N2=6.3987;
    K3_2=-3.0225;
    Ng2=54;
    n2=[3 47 1 0 0 0 0 0 0 3 0 0 0 0];
    g2=[1 0 0 0 0 0 1 0 0 0 0];
end
if S2==38
    %Trioleína
    Tc2=954.1;
    Pc2=3.6;
    W2=1.686;
    N2=6.6467;
    K3_2=-3.2452;
    Ng2=51;
    n2=[3 41 1 3 0 0 0 0 0 3 0 0 0 0];
    g2=[1 1 0 0 0 0 1 0 0 0 0];
end
if S2==39
    %1-Hexyl-3-methylimidazolium Bis(trifluormethylsulfonyl)imide
    Tc2=1292.8;
    Pc2=23.89;
    W2=0.3893;
    N2=0.24412;
    K3_2=0.19999;
    Ng2=9;
    n2=[2 5 0 0 0 0 0 0 0 0 0 1 0 0];
    g2=[1 0 0 0 0 0 0 0 1 0 0];
end
V2=[Tc2 Pc2 W2 N2 K3_2 Ng2 S2];
set(handles.edit14,'String',V2);
set(handles.edit15,'String',n2);
set(handles.edit16,'String',g2);
set(handles.edit7,'String',Name2);


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton3,'Visible','On');
set(handles.pushbutton2,'Visible','Off');
set(handles.text14,'Visible','Off');
P=str2double(get(handles.edit1, 'String'));
Tol=str2double(get(handles.edit2, 'String'));
Ts=str2num(get(handles.edit3, 'String'));
x1s=str2num(get(handles.edit4, 'String'));
y1s=str2num(get(handles.edit5, 'String'));
n1=str2num(get(handles.edit12, 'String'));
g1=str2num(get(handles.edit13, 'String'));
n2=str2num(get(handles.edit15, 'String'));
g2=str2num(get(handles.edit16, 'String'));
V1=str2num(get(handles.edit11, 'String'));
Tc1=V1(1);
Pc1=V1(2);
W1=V1(3);
N1=V1(4);
K3_1=V1(5);
Ng1=V1(6);
V2=str2num(get(handles.edit14, 'String'));
Tc2=V2(1);
Pc2=V2(2);
W2=V2(3);
N2=V2(4);
K3_2=V2(5);
Ng2=V2(6);
if V1(end)==2
    if g2(3)==1
        Ng1=2;
        n1=[1; 0; 0; 0; 1; 0; 0; 0; 0; 0; 0];
        g1=[1; 0; 1; 0; 0; 0; 0; 0];
    end
end
R=0.083144;
%Total=1000;
%Rep=0;
Hx=max(size(x1s));
Hy=max(size(y1s));
Hp=max(size(Ts));
Aviso=0;
if (Hx~=Hy)
    Aviso=1;
end
if (Hy~=Hp)
    Aviso=1;
end
if Aviso~=1
N=0;
M=0;
%q=1;
%mini=0;
%maxi=3;
%passo=0.1;
%for M=mini:passo:maxi
%    w=1;
%    for N=mini:passo:maxi
        for u=1:max(size(x1s))
            I=0;
            E=0;
            x1=x1s(u);
            Tchute=Ts(u);
            fun=@(Tdata)Vapor_LM(I,E,x1,Tdata,P,Tc1,Tc2,Pc1,Pc2,W1,W2,N1,N2,K3_1,K3_2,R,g1,g2,n1,n2,Ng1,Ng2,N,M);
            options.Algorithm='levenberg-marquardt';
            options.Display='off';
            I0=Tchute;
            Tki=lsqnonlin(fun,I0,[],[],options);
            Tk(u)=Tki;
            Tdata=Tki;
            [~,cfv1,cfv2,G_1,G_2]=Vapor_LM(I,E,x1,Tdata,P,Tc1,Tc2,Pc1,Pc2,W1,W2,N1,N2,K3_1,K3_2,R,g1,g2,n1,n2,Ng1,Ng2,N,M);
            Tr1=Tdata/Tc1;
            Tr2=Tdata/Tc2;
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
            y1i=x1.*(G_1).*Pv1/(cfv1.*P);
            y2i=(1-x1).*(G_2).*Pv2/(cfv2.*P);
            y1=y1i/(y1i+y2i);
            Yk(u)=y1;
            Xk(u)=x1;
        end
        ErroY=0;
        ErroT=0;
        for u=1:max(size(Tk))
            EY=sum(abs(y1s(u)-Yk(u))/y1s(u));
            EN=isnan(EY);
            EI=isinf(EY);
            if EN==1
                EY=0;
            end
            if EI==1
                EY=0;
            end
            ErroY=ErroY+EY;
            ErroT=ErroT+sum(abs(Ts(u)-Tk(u))/Ts(u));
        end
        ErroY=ErroY*100/max(size(y1s));
        ErroT=ErroT*100/max(size(Ts));
        ErroTmax=15;
        if ErroT>ErroTmax
            for u=1:max(size(x1s))
                I=0;
                E=1;
                x1=x1s(u);
                Tchute=Ts(u);
                fun=@(Tdata)Vapor_LM(I,E,x1,Tdata,P,Tc1,Tc2,Pc1,Pc2,W1,W2,N1,N2,K3_1,K3_2,R,g1,g2,n1,n2,Ng1,Ng2,N,M);
                options.Algorithm='levenberg-marquardt';
                options.Display='off';
                I0=Tchute;
                Tki=lsqnonlin(fun,I0,[],[],options);
                Tk(u)=Tki;
                Tdata=Tki;
                [~,cfv1,cfv2,G_1,G_2]=Vapor_LM(I,E,x1,Tdata,P,Tc1,Tc2,Pc1,Pc2,W1,W2,N1,N2,K3_1,K3_2,R,g1,g2,n1,n2,Ng1,Ng2,N,M);
                y1i=x1.*(G_1).*Pv1/(cfv1.*P);
                y2i=(1-x1).*(G_2).*Pv2/(cfv2.*P);
                y1=y1i/(y1i+y2i);
                Yk(u)=y1;
                Xk(u)=x1;
            end
            ErroY=0;
            ErroT=0;
            for u=1:max(size(Tk))
                EY=sum(abs(y1s(u)-Yk(u))/y1s(u));
                EN=isnan(EY);
                EI=isinf(EY);
                if EN==1
                    EY=0;
                end
                if EI==1
                    EY=0;
                end
                ErroY=ErroY+EY;
                ErroT=ErroT+sum(abs(Ts(u)-Tk(u))/Ts(u));
            end
            ErroY=ErroY*100/max(size(y1s));
            ErroT=ErroT*100/max(size(Ts));
        end
        %EFi(q,w)=ErroT;
        %Noi(q,w)=N;
        %Moi(q,w)=M;
        %w=w+1;
    %end
    %q=q+1;
%end
%disp(EFi)
%[EFmin,B]=min(EFi(:));
%disp(EFmin)
%disp(B)
%No=Noi(:);
%Mo=Moi(:);
%Notimo=No(B);
%Motimo=Mo(B);
%disp(Notimo)
%disp(Motimo)
%disp('-----')
disp(Ts)
disp(Tk)
disp(Yk)
set(handles.uipanel4,'Visible','On');
set(handles.text9,'Visible','On');
set(handles.text10,'Visible','On');
set(handles.text11,'Visible','On');
set(handles.text12,'Visible','On');
set(handles.text13,'Visible','On');
set(handles.edit6,'Visible','On');
set(handles.edit7,'Visible','On');
set(handles.edit8,'Visible','On');
set(handles.edit9,'Visible','On');
set(handles.edit10,'Visible','On');
set(handles.edit9,'String',ErroT);
set(handles.edit10,'String',ErroY);
set(handles.edit8,'String',P);
set(handles.axes1,'Visible','On');
axes(handles.axes1)
plot(Xk,Tk,'b',Yk,Tk,'r',x1s,Ts,'ko',y1s,Ts,'k+')
hold on
xlim([0 1])
title('Curva de Equilíbrio para sistema binário líquido-vapor')
xlabel('x1 e y1')
ylabel('Temperatura (K)')
legend('Curva de Bolha','Curva de Orvalho','Pontos experimentais de x1','Pontos experimentais de y1','Location','Northwest')
else
    set(handles.uipanel4,'Visible','On')
    set(handles.edit17,'Visible','On');
    set(handles.edit17,'String','As matrizes experimentais têm tamanhos diferentes.')
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton4,'Visible','Off');
set(handles.pushbutton5,'Visible','Off');
set(handles.pushbutton2,'Visible','On');
set(handles.uipanel3,'Visible','On');
V1=str2num(get(handles.edit11, 'String'));
V2=str2num(get(handles.edit14, 'String'));
index1=V1(7);
index2=V2(7);
G=0;
if index1==2
    %Metanol
    if index2==13
        %Glicerol
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[533.4 370.35 351.85 342.85 336.4 332 328.5 325.65 323.1 320.75 318.5];
        xss=[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
        yss=[0 0.999722 0.999955 0.999985 0.999993 0.999997 0.999998 0.99999 0.99999 1 1];
        set(handles.edit1,'String',0.453);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==20
        %Laurato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[392.58 375.67 365.15 354.12 349.55 347 345.05 343.86 343.01 342.51 341.36 340.83 340.43 340.15 339.96];
        xss=[0.0904 0.1145 0.1598 0.2581 0.3243 0.3949 0.4321 0.4766 0.5255 0.5601 0.6392 0.7009 0.7379 0.7698 0.7976];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==22
        %Miristato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[398.42 373.7 362.81 351.34 346.78 344.58 343.31 342.49 341.87 341.35 340.51 340.08 339.82 339.61 339.49];
        xss=[0.0915 0.1422 0.1658 0.2693 0.3535 0.4233 0.4711 0.5229 0.5592 0.5916 0.65 0.7269 0.7679 0.7957 0.8199];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==24
        %Palmitato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[414.15 365.95 362.5 359.8 357.55 354.2 350.8 348.65 346.7 344.25 343 342.15 341.3 340.05 339.3 338.65 338.4 338.2 338 337.85 337.5];
        xss=[0.0577 0.1694 0.1936 0.211 0.2386 0.2645 0.2793 0.3028 0.3812 0.4064 0.4607 0.5097 0.5603 0.61 0.6735 0.7184 0.8086 0.8735 0.9409 0.9665 0.9732];
        %Tss=[383.72 351.68 348.46 343.94 340.44 338.24 335.00 332.94 331.08 328.74 327.55 326.74 325.98 324.78 324.07 323.45 323.21 323.02 322.83 322.68 322.35];
        %xss=[0.0825 0.1602 0.1823 0.2008 0.2360 0.2648 0.2797 0.3024 0.3788 0.4059 0.4611 0.5093 0.5594 0.6090 0.6730 0.7189 0.8079 0.8730 0.9405 0.9652 0.9737];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        set(handles.edit1,'String',0.503);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==28
        %Oleato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[387.11 359.94 350.63 346.91 344.13 342.85 342.18 341.62 341.18 340.77 339.94 339.61 339.34 339.15 339.02];
        xss=[0.1178 0.2149 0.2951 0.3625 0.4454 0.4915 0.5123 0.5411 0.5673 0.5914 0.6527 0.7203 0.757 0.7908 0.8165];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==3
    %Etanol
    if index2==13
        %Glicerol
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        %Tss=[352.6 354 355.1 356.2 358 359.6 361.2 363.1 363.8 365.9 368.3 368.8 372.9 374.7 379.3 381.1 393 401 404.9];
        %xss=[0.8943 0.8138 0.7495 0.6949 0.6317 0.5616 0.4921 0.4416 0.3995 0.374 0.3274 0.3154 0.2486 0.2438 0.195 0.1713 0.1228 0.0857 0.0948];
        %yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        Tss=[405.61 389.22 373.58 365.94 363.49 361.14 359.34 358.04];
        xss=[0.0537 0.1029 0.2643 0.3594 0.4173 0.479 0.5525 0.6505];
        yss=[1 1 1 1 1 1 1 1];
        %set(handles.edit1,'String',0.92);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==20
        %Laurato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[413.01 389.38 376.59 369.08 365.4 362.87 361.7 360.4 359.81 359.03 358.36 357.94 357.26 356.64 356.16 355.78 355.47];
        xss=[0.0776 0.129 0.1985 0.2602 0.3155 0.3651 0.4101 0.4376 0.4637 0.4999 0.5224 0.5638 0.601 0.6503 0.6795 0.7126 0.7309];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==22
        %Miristato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[420.08 389.1 376.41 369.67 365.74 362.61 360.79 359.56 358.74 357.9 357.45 356.82 356.4 356.19 355.83];
        xss=[0.0667 0.1467 0.2149 0.276 0.3305 0.3943 0.4368 0.4753 0.5103 0.5214 0.5525 0.5812 0.6161 0.6242 0.6475];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==25
        %Palmitato de Etila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        %Psinm=351.55 == 0.7/ 388.55 == 0.15;  
        %Psimn=351.55 == 2.4/ 388.55 == 0.45;
        %Tss=[351.35 351.45 351.65 351.85 351.65 351.85 352.15 353.15 352.85 358.85 368.15 388.15 408.15 423.85];
        %xss=[0.9586 0.9216 0.9086 0.8963 0.8928 0.8633 0.8222 0.7590 0.7396 0.6951 0.4525 0.2496 0.1000 0.0875];
        %yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        Tss=[351.35 351.45 351.65 351.85 352.05 352.15 352.85 353.15 356.05 358.85 360.45 363.55 368.15 372.25 376.55 380.35 388.15 393.35 408.15 423.85];
        xss=[0.9586 0.9216 0.9086 0.8963 0.8633 0.8222 0.7590 0.7396 0.6923 0.6451 0.6034 0.5480 0.4525 0.4031 0.3481 0.3190 0.2496 0.1987 0.1000 0.0875];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        %Tss=[416.9 389.32 380.03 351.45 351.15 350.5 350.3 348.35 347 346.3 346.05 345.3 345.15 344];
        %xss=[0.0474 0.1017 0.2172 0.4847 0.536 0.5699 0.5908 0.6765 0.7624 0.828 0.8813 0.9222 0.9627 0.9739];
        %yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        %Tss=[419.95 410.26 381.51 374.15 368.12 365.90 361.70 358.35 354.27 352.23 350.66 349.20 347.49 346.55 344.89 342.83 341.33 340.55 340.21 339.98];
        %xss=[0.0821 0.1003 0.2001 0.2507 0.3097 0.3370 0.3998 0.4621 0.5541 0.6060 0.6478 0.6878 0.7346 0.7605 0.8031 0.8534 0.8873 0.9041 0.9111 0.9510];
        %yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        %set(handles.edit1,'String',0.503);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==27
        %Estearato de Etila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[418.85 382.67 364.94 361.04 353.5 352.45 351.8 350.6 350.1 349.8 348.9];
        xss=[0.0655 0.2213 0.3838 0.4434 0.6012 0.6896 0.7594 0.8743 0.9204 0.9541 0.9789];
        yss=[1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',0.92);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==28
        %Oleato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[388.47 374.01 367.79 363.63 361.49 359.91 358.78 358.37 357.24 356.7 356.28 355.72 354.89 354.46 354.19];
        xss=[0.1666 0.2547 0.31 0.3754 0.4186 0.4695 0.5036 0.5347 0.5731 0.5975 0.6209 0.6816 0.7207 0.7631 0.7875];
        yss=[1 1 1 1 1 1 1 1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',1.01325);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==4
    %Água
    if index2==13
        %Glicerol
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[422.65 396.47 379.08 366.29 361.89 356.09 354.6 353.6];
        xss=[0.1896 0.3329 0.4761 0.651 0.7438 0.8673 0.9141 0.9512];
        yss=[1 1 1 1 1 1 1 1];
        set(handles.edit1,'String',0.45);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==16
    %Caprilato de Metila
    if index2==18
        %Caprato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[424.43 421.07 418.71 415.46 413.48 409.12 405.67 401.32 398.43 396.5 394.76 393.92 391.77];
        xss=[0 0.0609 0.0921 0.1442 0.1821 0.2753 0.3662 0.5213 0.6485 0.7507 0.8352 0.8785 1];
        yss=[0 0.2296 0.3112 0.4286 0.4928 0.6246 0.7087 0.8163 0.8814 0.9228 0.9526 0.9657 1];
        set(handles.edit1,'String',0.1);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==18
    %Caprato de Metila
    if index2==20
        %Laurato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[443.3 439.01 437.07 434.63 432.01 428.75 425.49 421.95 418.93 417.1 415.91 415.12 413.57];
        xss=[0 0.0676 0.1 0.1552 0.2136 0.295 0.3951 0.5375 0.673 0.7596 0.8365 0.8802 1];
        yss=[0 0.2139 0.2936 0.4028 0.4971 0.6019 0.6933 0.7933 0.8703 0.9099 0.9407 0.9577 1];
        set(handles.edit1,'String',0.06);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==20
    %Laurato de Metila
    if index2==22
        %Miristato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[486.95 481.45 473.65 469.15 468.45];
        xss=[0.196 0.37 0.651 0.854 0.889];
        yss=[0.503 0.59 0.823 0.935 0.952];
        set(handles.edit1,'String',0.1333);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==22
    %Miristato de Metila
    if index2==24
        %Palmitato de Metila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[450.97 447.08 446.01 445.23 442.4 440.62 437.74 434.77 432.04 430.46 429.64 429.12 428.42];
        xss=[0 0.0813 0.1418 0.1678 0.2432 0.3488 0.4759 0.5882 0.7428 0.808 0.8778 0.927 1];
        yss=[0 0.21 0.3253 0.3615 0.4685 0.5911 0.7101 0.7896 0.8833 0.9159 0.9464 0.9673 1];
        set(handles.edit1,'String',0.01);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==23
    %Miristato de Etila
    if index2==25
        %Palmitato de Etila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[457.98 455.23 454.1 452.21 449.2 446.21 443.4 441.74 440.64 438.47 436.91 436.05 435.58 434.98];
        xss=[0 0.0829 0.0999 0.1569 0.2543 0.3691 0.4882 0.5282 0.5907 0.7077 0.8114 0.8675 0.9264 1];
        yss=[0 0.211 0.2421 0.3495 0.497 0.6283 0.7331 0.7632 0.8029 0.8722 0.9236 0.948 0.9718 1];
        set(handles.edit1,'String',0.01);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
if index1==25
    %Palmiato de Etila
    if index2==27
        %Estearato de Etila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[520.56 517.76 512.76 510.87 509.54 506.75 505.14 502.27];
        xss=[0 0.1017 0.3012 0.4004 0.5003 0.7001 0.801 1];
        yss=[0 0.2084 0.5198 0.6215 0.6901 0.8179 0.8869 1];
        set(handles.edit1,'String',0.05333);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==29
        %Oleato de Etila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[514.61 512.78 511.97 508.64 507.08 506.2 505.39 504.47 503.23 502.27];
        xss=[0 0.1017 0.199 0.4021 0.5051 0.595 0.7007 0.7979 0.9024 1];
        yss=[0 0.1782 0.2503 0.5425 0.6608 0.7294 0.7911 0.854 0.9384 1];
        set(handles.edit1,'String',0.05333);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
    if index2==31
        %Linoleato de Etila
        set(handles.edit3,'Visible','Off');
        set(handles.edit4,'Visible','Off');
        set(handles.edit5,'Visible','Off');
        Tss=[537.69 535.36 532.4 529.87 527.73 525.48 523.12 520.25 518.25 516.51 515.13];
        xss=[0 0.0974 0.1935 0.2965 0.3984 0.4977 0.6105 0.7042 0.7958 0.8992 1];
        yss=[0 0.1291 0.3097 0.4377 0.5325 0.63 0.7509 0.8394 0.9051 0.9586 1];
        set(handles.edit1,'String',0.09333);
        set(handles.edit2,'String',0.1);
        set(handles.edit3,'String',Tss);
        set(handles.edit4,'String',xss);
        set(handles.edit5,'String',yss);
        G=1;
    end
end
%if index1==8
%    %Hexano
%    if index2==25
%        %1-etil-3-metilimidazólio Tf2N
%        set(handles.edit3,'Visible','Off');
%        set(handles.edit4,'Visible','Off');
%        set(handles.edit5,'Visible','Off');
%        Tss=[];
%        xss=[];
%        yss=[];
%        set(handles.edit1,'String',);
%        set(handles.edit2,'String',0.1);
%        set(handles.edit3,'String',Tss);
%        set(handles.edit4,'String',xss);
%        set(handles.edit5,'String',yss);
%        G=1;
%    end
%end
if G~=1
    set(handles.text14,'Visible','On');
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbutton4,'Visible','Off')
set(handles.pushbutton5,'Visible','Off');
set(handles.pushbutton2,'Visible','On');
set(handles.uipanel3,'Visible','On');
