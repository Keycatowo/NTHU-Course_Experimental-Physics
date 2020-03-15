function varargout = Threebodies_2d(varargin)
% THREEBODIES_2D MATLAB code for Threebodies_2d.fig
%      THREEBODIES_2D, by itself, creates a new THREEBODIES_2D or raises the existing
%      singleton*.
%
%      H = THREEBODIES_2D returns the handle to a new THREEBODIES_2D or the handle to
%      the existing singleton*.
%
%      THREEBODIES_2D('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THREEBODIES_2D.M with the given input arguments.
%
%      THREEBODIES_2D('Property','Value',...) creates a new THREEBODIES_2D or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Threebodies_2d_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Threebodies_2d_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to set (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Threebodies_2d

% Last Modified by GUIDE v2.5 28-Dec-2018 16:11:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Threebodies_2d_OpeningFcn, ...
                   'gui_OutputFcn',  @Threebodies_2d_OutputFcn, ...
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


% --- Executes just before Threebodies_2d is made visible.
function Threebodies_2d_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Threebodies_2d (see VARARGIN)

% Choose default command line output for Threebodies_2d
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Threebodies_2d wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Threebodies_2d_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double


% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y1_Callback(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y1 as text
%        str2double(get(hObject,'String')) returns contents of y1 as a double


% --- Executes during object creation, after setting all properties.
function y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z1_Callback(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z1 as text
%        str2double(get(hObject,'String')) returns contents of z1 as a double


% --- Executes during object creation, after setting all properties.
function z1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2_Callback(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x2 as text
%        str2double(get(hObject,'String')) returns contents of x2 as a double


% --- Executes during object creation, after setting all properties.
function x2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y2_Callback(hObject, eventdata, handles)
% hObject    handle to y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y2 as text
%        str2double(get(hObject,'String')) returns contents of y2 as a double


% --- Executes during object creation, after setting all properties.
function y2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z2_Callback(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z2 as text
%        str2double(get(hObject,'String')) returns contents of z2 as a double


% --- Executes during object creation, after setting all properties.
function z2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vx1_Callback(hObject, eventdata, handles)
% hObject    handle to vx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vx1 as text
%        str2double(get(hObject,'String')) returns contents of vx1 as a double


% --- Executes during object creation, after setting all properties.
function vx1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vx1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vy1_Callback(hObject, eventdata, handles)
% hObject    handle to vy1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vy1 as text
%        str2double(get(hObject,'String')) returns contents of vy1 as a double


% --- Executes during object creation, after setting all properties.
function vy1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vy1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m1_Callback(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m1 as text
%        str2double(get(hObject,'String')) returns contents of m1 as a double


% --- Executes during object creation, after setting all properties.
function m1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vx2_Callback(hObject, eventdata, handles)
% hObject    handle to vx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vx2 as text
%        str2double(get(hObject,'String')) returns contents of vx2 as a double


% --- Executes during object creation, after setting all properties.
function vx2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vx2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vy2_Callback(hObject, eventdata, handles)
% hObject    handle to vy2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vy2 as text
%        str2double(get(hObject,'String')) returns contents of vy2 as a double


% --- Executes during object creation, after setting all properties.
function vy2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vy2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m2_Callback(hObject, eventdata, handles)
% hObject    handle to m2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m2 as text
%        str2double(get(hObject,'String')) returns contents of m2 as a double


% --- Executes during object creation, after setting all properties.
function m2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Set.
function Set_Callback(hObject, eventdata, handles)
% hObject    handle to Set (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    x1=str2double(get(handles.x1,'string'));
    y1=str2double(get(handles.y1,'string'));
    r1=str2double(get(handles.z1,'string'));
    x2=str2double(get(handles.x2,'string'));
    y2=str2double(get(handles.y2,'string'));
    r2=str2double(get(handles.z2,'string'));
    x3=str2double(get(handles.x3,'string'));
    y3=str2double(get(handles.y3,'string'));
    r3=str2double(get(handles.z3,'string'));
    
    P1=circle(x1,y1,r1);
    hold on;
    P2=circle(x2,y2,r2);
    P3=circle(x3,y3,r3);
    hold off;
    xmin=str2double(get(handles.Xmin,'string'));
    xmax=str2double(get(handles.Xmax,'string'));
    ymin=str2double(get(handles.Ymin,'string'));
    ymax=str2double(get(handles.Ymax,'string'));
    axis([xmin xmax ymin ymax]);

 
% ---function to write circle
function P=circle(x,y,r)
    q=linspace(0,2*pi);
    X=r*cos(q)+x;
    Y=r*sin(q)+y;
    P=plot(X,Y);


% --- Executes on button press in Go3.
function Go3_Callback(hObject, eventdata, handles)
% hObject    handle to Go3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    x1=str2double(get(handles.x1,'string'));
    y1=str2double(get(handles.y1,'string'));
    r1=str2double(get(handles.z1,'string'));
    x2=str2double(get(handles.x2,'string'));
    y2=str2double(get(handles.y2,'string'));
    r2=str2double(get(handles.z2,'string'));
    u1=str2double(get(handles.vx1,'string'));
    v1=str2double(get(handles.vy1,'string'));
    u2=str2double(get(handles.vx2,'string'));
    v2=str2double(get(handles.vy2,'string'));
    x3=str2double(get(handles.x3,'string'));
    y3=str2double(get(handles.y3,'string'));
    r3=str2double(get(handles.z3,'string'));
    u3=str2double(get(handles.vx3,'string'));
    v3=str2double(get(handles.vy3,'string'));
    m1=str2double(get(handles.m1,'string'));
    m2=str2double(get(handles.m2,'string'));
    m3=str2double(get(handles.m3,'string'));
    X1=x1;
    X2=x2;
    X3=x3;
    Y1=y1;
    Y2=y2;
    Y3=y3;
    U1=u1;
    U2=u2;
    U3=u3;
    V1=v1;
    V2=v2;
    V3=v3;
    Ax1=0;
    Ay1=0;
    Ax2=0;
    Ay2=0;
    Ax3=0;
    Ay3=0;
    hold off;
    P1=circle(x1,y1,r1);
    hold on;
    P2=circle(x2,y2,r2);
    P3=circle(x3,y3,r3);
    t=str2double(get(handles.time_span,'string'));
    while(1)

    R12=sqrt((X1-X2)^2+(Y1-Y2)^2);
    R13=sqrt((X1-X3)^2+(Y1-Y3)^2);
    R23=sqrt((X3-X2)^2+(Y3-Y2)^2);


    if( (R12<r1+r2)|(R13<r1+r3)|(R23<r2+r3) )
        disp('boom!');
        break;
    end
    
    

    f12=9.8*m1*m2* 1/R12^3*[X1-X2,Y1-Y2];
    f23=9.8*m2*m3* 1/R23^3*[X2-X3,Y2-Y3];
    f31=9.8*m1*m3* 1/R13^3*[X3-X1,Y3-Y1];

    Ax1=( -f12(1) + f31(1) )/m1;%
    Ax2=(  f12(1) - f23(1) )/m2;%
    Ax3=(  f23(1) - f31(1) )/m3;%
    Ay1=( -f12(2) + f31(2) )/m1;%
    Ay2=(  f12(2) - f23(2) )/m2;%
    Ay3=(  f23(2) - f31(2) )/m3;%
%     Az1=( -f12(3) + f31(3) );%
%     Az2=(  f12(3) - f23(3) );%
%     Az3=(  f23(3) - f31(3) );%



    U1=U1+Ax1*t;
    U2=U2+Ax2*t;
    U3=U3+Ax3*t;

    V1=V1+Ay1*t;
    V2=V2+Ay2*t;
    V3=V3+Ay3*t;

    X1=X1+U1*t+1/2*Ax1*t^2;
    X2=X2+U2*t+1/2*Ax2*t^2;
    X3=X3+U3*t+1/2*Ax3*t^2;

    Y1=Y1+V1*t+1/2*Ay1*t^2;
    Y2=Y2+V2*t+1/2*Ay2*t^2;
    Y3=Y3+V3*t+1/2*Ay3*t^2;
    hold off;
    circle(X1,Y1,r1);
%     axis([-20 20 -20 20]);
    xmin=str2double(get(handles.Xmin,'string'));
    xmax=str2double(get(handles.Xmax,'string'));
    ymin=str2double(get(handles.Ymin,'string'));
    ymax=str2double(get(handles.Ymax,'string'));
    axis([xmin xmax ymin ymax]);
    hold on;
    circle(X2,Y2,r2);
    circle(X3,Y3,r3);

    drawnow;

    end
    
    
    


% --- Executes on button press in test1.
function test1_Callback(hObject, eventdata, handles)
% hObject    handle to test1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 set(handles.x1,'string','0');
 set(handles.y1,'string','0');
 set(handles.z1,'string','1');
 set(handles.x2,'string','5');
 set(handles.y2,'string','0');
 set(handles.z2,'string','0.5');
 set(handles.vx1,'string','0');
 set(handles.vy1,'string','0');
 set(handles.vx2,'string','0');
 set(handles.vy2,'string','0');
 set(handles.time_span,'string','0.1');
 set(handles.m1,'string','2');
 set(handles.m2,'string','1');
 
 
 



function time_span_Callback(hObject, eventdata, handles)
% hObject    handle to time_span (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time_span as text
%        str2double(get(hObject,'String')) returns contents of time_span as a double


% --- Executes during object creation, after setting all properties.
function time_span_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time_span (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x3_Callback(hObject, eventdata, handles)
% hObject    handle to x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x3 as text
%        str2double(get(hObject,'String')) returns contents of x3 as a double


% --- Executes during object creation, after setting all properties.
function x3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y3_Callback(hObject, eventdata, handles)
% hObject    handle to y3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y3 as text
%        str2double(get(hObject,'String')) returns contents of y3 as a double


% --- Executes during object creation, after setting all properties.
function y3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function z3_Callback(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of z3 as text
%        str2double(get(hObject,'String')) returns contents of z3 as a double


% --- Executes during object creation, after setting all properties.
function z3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to z3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vx3_Callback(hObject, eventdata, handles)
% hObject    handle to vx3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vx3 as text
%        str2double(get(hObject,'String')) returns contents of vx3 as a double


% --- Executes during object creation, after setting all properties.
function vx3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vx3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vy3_Callback(hObject, eventdata, handles)
% hObject    handle to vy3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vy3 as text
%        str2double(get(hObject,'String')) returns contents of vy3 as a double


% --- Executes during object creation, after setting all properties.
function vy3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vy3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function m3_Callback(hObject, eventdata, handles)
% hObject    handle to m3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m3 as text
%        str2double(get(hObject,'String')) returns contents of m3 as a double


% --- Executes during object creation, after setting all properties.
function m3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in test2.
function test2_Callback(hObject, eventdata, handles)
% hObject    handle to test2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 set(handles.x1,'string','-5');
 set(handles.y1,'string','0');
 set(handles.z1,'string','0.1');
 set(handles.x2,'string','5');
 set(handles.y2,'string','0');
 set(handles.z2,'string','0.5');
 set(handles.vx1,'string','-0.2');
 set(handles.vy1,'string','0.5');
 set(handles.vx2,'string','0.2');
 set(handles.vy2,'string','-0.5');
 set(handles.time_span,'string','0.1');
 set(handles.m1,'string','1');
 set(handles.m2,'string','1');


% --- Executes on button press in Set2.
function Set2_Callback(hObject, eventdata, handles)
% hObject    handle to Set2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    x1=str2double(get(handles.x1,'string'));
    y1=str2double(get(handles.y1,'string'));
    r1=str2double(get(handles.z1,'string'));
    x2=str2double(get(handles.x2,'string'));
    y2=str2double(get(handles.y2,'string'));
    r2=str2double(get(handles.z2,'string'));
    hold on;
    P1=circle(x1,y1,r1);
    P2=circle(x2,y2,r2);
    hold off;
    xmin=str2double(get(handles.Xmin,'string'));
    xmax=str2double(get(handles.Xmax,'string'));
    ymin=str2double(get(handles.Ymin,'string'));
    ymax=str2double(get(handles.Ymax,'string'));
    axis([xmin xmax ymin ymax]);
%     axis([-10 10 -10 10]);


% --- Executes on button press in Go2.
function Go2_Callback(hObject, eventdata, handles)
% hObject    handle to Go2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    x1=str2double(get(handles.x1,'string'));
    y1=str2double(get(handles.y1,'string'));
    r1=str2double(get(handles.z1,'string'));
    x2=str2double(get(handles.x2,'string'));
    y2=str2double(get(handles.y2,'string'));
    r2=str2double(get(handles.z2,'string'));
    u1=str2double(get(handles.vx1,'string'));
    v1=str2double(get(handles.vy1,'string'));
    u2=str2double(get(handles.vx2,'string'));
    v2=str2double(get(handles.vy2,'string'));
    m1=str2double(get(handles.m1,'string'));
    m2=str2double(get(handles.m2,'string'));
    X1=x1;
    X2=x2;
    Y1=y1;
    Y2=y2;
    U1=u1;
    U2=u2;
    V1=v1;
    V2=v2;
    Ax1=0;
    Ay1=0;
    Ax2=0;
    Ay2=0;
    hold on;
    P1=circle(x1,y1,r1);
    P2=circle(x2,y2,r2);
    t=str2double(get(handles.time_span,'string'));
    while(1)

    R12=sqrt((X1-X2)^2+(Y1-Y2)^2);
%     disp(R12);

    if(R12<r1+r2)
        disp('boom!');
        break;
    end

    f12=9.8*m1*m2* 1/R12^3*[X1-X2,Y1-Y2];%

    Ax1=-f12(1)/m1;%
    Ax2=f12(1)/m2;%

    Ay1=-f12(2)/m1;%
    Ay2=f12(2)/m2;%



    U1=U1+Ax1*t;
    U2=U2+Ax2*t;

    V1=V1+Ay1*t;
    V2=V2+Ay2*t;

    X1=X1+U1*t+1/2*Ax1*t^2;
    X2=X2+U2*t+1/2*Ax2*t^2;

    Y1=Y1+V1*t+1/2*Ay1*t^2;
    Y2=Y2+V2*t+1/2*Ay2*t^2;
    hold off;
    circle(X1,Y1,r1);
    xmin=str2double(get(handles.Xmin,'string'));
    xmax=str2double(get(handles.Xmax,'string'));
    ymin=str2double(get(handles.Ymin,'string'));
    ymax=str2double(get(handles.Ymax,'string'));
    axis([xmin xmax ymin ymax]);
%     axis([-10 10 -10 10]);
    hold on;
    circle(X2,Y2,r2);



    drawnow;

    end


% --- Executes on button press in test3.
function test3_Callback(hObject, eventdata, handles)
% hObject    handle to test3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     set(handles.x1,'string','-2');
     set(handles.y1,'string','-1');
     set(handles.z1,'string','0.2');
     set(handles.vx1,'string','-2');
     set(handles.vy1,'string','3.46410161513776');
     set(handles.m1,'string','8');
     
     set(handles.x2,'string','0');
     set(handles.y2,'string','2.46410161513776');
     set(handles.z2,'string','0.2');
     set(handles.vx2,'string','4');
     set(handles.vy2,'string','0');
     set(handles.m2,'string','8');
    
     
     set(handles.x3,'string','2');
     set(handles.y3,'string','-1');
     set(handles.z3,'string','0.2');
     set(handles.vx3,'string','-2');
     set(handles.vy3,'string','-3.46410161513776');
     set(handles.m3,'string','8');
     set(handles.Xmin,'string','-10');
     set(handles.Xmax,'string',' 10');
     set(handles.Ymin,'string','-10');
     set(handles.Ymax,'string',' 10');
     
     set(handles.time_span,'string','0.01');



function Xmin_Callback(hObject, eventdata, handles)
% hObject    handle to Xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xmin as text
%        str2double(get(hObject,'String')) returns contents of Xmin as a double


% --- Executes during object creation, after setting all properties.
function Xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Xmax_Callback(hObject, eventdata, handles)
% hObject    handle to Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Xmax as text
%        str2double(get(hObject,'String')) returns contents of Xmax as a double


% --- Executes during object creation, after setting all properties.
function Xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ymin_Callback(hObject, eventdata, handles)
% hObject    handle to Ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ymin as text
%        str2double(get(hObject,'String')) returns contents of Ymin as a double


% --- Executes during object creation, after setting all properties.
function Ymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ymax_Callback(hObject, eventdata, handles)
% hObject    handle to Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ymax as text
%        str2double(get(hObject,'String')) returns contents of Ymax as a double


% --- Executes during object creation, after setting all properties.
function Ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in test4.
function test4_Callback(hObject, eventdata, handles)
% hObject    handle to test4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     set(handles.x1,'string','-500');
     set(handles.y1,'string','0');
     set(handles.z1,'string','20');
     set(handles.vx1,'string','0');
     set(handles.vy1,'string','10');
     set(handles.m1,'string','1');
     
     set(handles.x2,'string','500');
     set(handles.y2,'string','0');
     set(handles.z2,'string','20');
     set(handles.vx2,'string','0');
     set(handles.vy2,'string','-10');
     set(handles.m2,'string','1');
    
     
     set(handles.x3,'string','0');
     set(handles.y3,'string','0');
     set(handles.z3,'string','20');
     set(handles.vx3,'string','0');
     set(handles.vy3,'string','0');
     set(handles.m3,'string','4390');
     
     set(handles.Xmin,'string','-1500');
     set(handles.Xmax,'string',' 1500');
     set(handles.Ymin,'string','-1500');
     set(handles.Ymax,'string',' 1500');
     set(handles.time_span,'string','0.001');
     
     


% --- Executes on button press in test5.
function test5_Callback(hObject, eventdata, handles)
% hObject    handle to test5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     set(handles.x1,'string','0.97');
     set(handles.y1,'string','-0.24309');
     set(handles.z1,'string','0.01');
     set(handles.vx1,'string','0.8662');
     set(handles.vy1,'string','1.9324');
     set(handles.m1,'string','1');
     
     set(handles.x2,'string','-0.97');
     set(handles.y2,'string','0.24309');
     set(handles.z2,'string','0.01');
     set(handles.vx2,'string','0.8662');
     set(handles.vy2,'string','1.9324');
     set(handles.m2,'string','1');
    
     
     set(handles.x3,'string','0');
     set(handles.y3,'string','0');
     set(handles.z3,'string','0.01');
     set(handles.vx3,'string','-0.9324');
     set(handles.vy3,'string','-1.9647');
     set(handles.m3,'string','1');
     
     set(handles.Xmin,'string','-1.5');
     set(handles.Xmax,'string',' 1.5');
     set(handles.Ymin,'string','-1.5');
     set(handles.Ymax,'string',' 1.5');
     set(handles.time_span,'string','0.001');
