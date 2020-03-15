%%
%    Name: Threebody_V1.0
%  Auther: Chen Tianyang, Li Hao
% Company: WHUEIS
%    Data: 2017-10-25
%
%%
function varargout = Threebody(varargin)
% THREEBODY MATLAB code for Threebody.fig
%      THREEBODY, by itself, creates a new THREEBODY or raises the existing
%      singleton*.
%
%      H = THREEBODY returns the handle to a new THREEBODY or the handle to
%      the existing singleton*.
%
%      THREEBODY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in THREEBODY.M with the given input arguments.
%
%      THREEBODY('Property','Value',...) creates a new THREEBODY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Threebody_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      pause.  All inputs are passed to Threebody_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to menu_help Threebody

% Last Modified by GUIDE v2.5 28-Oct-2017 15:50:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Threebody_OpeningFcn, ...
                   'gui_OutputFcn',  @Threebody_OutputFcn, ...
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

%%
% --- Executes just before Threebody is made visible.
function Threebody_OpeningFcn(hObject, eventdata, handles, varargin)
%%
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Threebody (see VARARGIN)

%��l�Ƥ��^��?�q��?�M�t��
handles.Star=Model_Init_1();
handles.type=1;
handles.pretype=handles.type;
%?��?�Ӧ�A�P?�O�_�b���b?��
global Is_Running;   
%��l��?�Ӧ�A�P?�O�_�b�w��l��
global Is_Init;    
%�q????�w��l�ƥB���b?��
Is_Running=true;  
Is_Init=true;
handles.output = hObject;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Threebody wait for user response (see UIRESUME)
% uiwait(handles.figure1);

%%
% --- Outputs from this function are returned to the command line.
function varargout = Threebody_OutputFcn(hObject, eventdata, handles) 
%%
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
%��??��run()��?�A���ݤ�?
run();

%%
%�P�^??��?
function run()
%%
global Is_Running;
global Is_Init;
%�E���ޤO�`?
G=6.67*10^(-11);        
%�H0.00001��??�B?���N
T=0.00001;   
%�`�N���`?
while (1)
    handles=guidata(gcf);
    %�h�X
    if(isempty(handles))        
        close all;
        return;
    end
    %�w��l�ƷN?�@??�q?��?��?���A??�G?��
    if(Is_Init==true)
        %?��??
        star=handles.Star;
        %--------------------�@?�P�^--------------------
        M1=star(1).M;
        X1=star(1).X;
        Y1=star(1).Y;
        Z1=star(1).Z;
        U1=star(1).U;
        V1=star(1).V;
        W1=star(1).W;
        %--------------------�G?�P�^--------------------
        M2=star(2).M;
        X2=star(2).X;
        Y2=star(2).Y;
        Z2=star(2).Z;
        U2=star(2).U;
        V2=star(2).V;
        W2=star(2).W;
        %--------------------�T?�P�^--------------------
        M3=star(3).M;
        X3=star(3).X;
        Y3=star(3).Y;
        Z3=star(3).Z;
        U3=star(3).U;
        V3=star(3).V;
        W3=star(3).W;
        %�M��
        cla;
        axis([-1000 1010 -1000 1000 -1000 1000]);
        %�������q?��??���A�Z���ۤv??
        axis off;
        %�q??���U���k��t
        set(gca,'XDir','reverse');
        set(gca,'YDir','reverse');
        %?�I��
        x=-1000:125:1000;
        y=-1000:125:1000;
        for i=1:length(x)
            line([x(i) x(i)],[1000 -1000],[0 0],'Color',[0.1 0.1 0.1],'LineWidth',0.5);
            line([1000 -1000],[y(i) y(i)],[0 0],'Color',[0.1 0.1 0.1],'LineWidth',0.5);
        end
        %?�b?
        line([1000 0],[0 0],[0 0],'Color',[1 0 1],'LineWidth',2);
        line([0 0],[1000 0],[0 0],'Color',[1 0 1],'LineWidth',2);
        line([0 0],[0 0],[1000 0],'Color',[1 0 1],'LineWidth',2);
        %??��??
        text(1050,0,0,'X','Color',[1 0 1],'FontSize',12);
        text(0,1050,0,'Y','Color',[1 0 1],'FontSize',12);
        text(0,0,1050,'Z','Color',[1 0 1],'FontSize',12);
        %???��?��
        text(125,0,0,'125','Color',[1 0 1],'FontSize',12);
        text(0,125,0,'125','Color',[1 0 1],'FontSize',12);
        
        %��l?�m���^?��B?���B�j�p��??�A�C���`?�����s?�m��??��
        if(M1~=0)
            h=line('Color',[1 0 0],'Marker','.','MarkerSize',25,'erasemode','normal');
            line(X1,Y1,Z1,'Color',[1 0 0],'Marker','.','MarkerSize',10);
        end
        if(M2~=0)
            i=line('Color',[0 1 0],'Marker','.','MarkerSize',25,'erasemode','normal');
            line(X2,Y2,Z2,'Color',[0 1 0],'Marker','.','MarkerSize',10);
        end
        if(M3~=0)
            l=line('Color',[0 0 1],'Marker','.','MarkerSize',25,'erasemode','normal');
            line(X3,Y3,Z3,'Color',[0 0 1],'Marker','.','MarkerSize',10);
        end
       
        %��s?��
        drawnow;
        Is_Init=false;
    else
        [y,fs] = audioread('E:\My Matlab Files\threebodyformer\Windows Background.wav');
        %�C?��200����?�@��
        for k=1:200;            
            %?��Z��
            R12=sqrt((X1-X2)^2+(Y1-Y2)^2+(Z1-Z2)^2);
            R13=sqrt((X1-X3)^2+(Y1-Y3)^2+(Z1-Z3)^2);
            R23=sqrt((X2-X3)^2+(Y2-Y3)^2+(Z2-Z3)^2);
            %���P?�P�y?��?�I���z���A��?�Z�åH8�쭭
            if ((R12<=8)&&(M1~=0)&&(M2~=0))
                M1=0;
                M2=0;
                delete(h);
                delete(i);
                %�I������               
                sound(y,fs);
            end
            if ((R23<=8)&&(M3~=0)&&(M3~=0))
                M2=0;
                M3=0;
                delete(i);
                delete(l);               
                sound(y,fs);
            end
            if ((R13<=8)&&(M1~=0)&&(M3~=0))
                M1=0;
                M3=0;
                delete(h);
                delete(l);  
                sound(y,fs);
            end
            %�E���ޤO�w��
            f12=G*M1*M2/R12^3*[X1-X2,Y1-Y2,Z1-Z2];
            f23=G*M2*M3/R23^3*[X2-X3,Y2-Y3,Z2-Z3];
            f31=G*M3*M1/R13^3*[X3-X1,Y3-Y1,Z3-Z1];

            if(Is_Running==true)      
                t=T;
            %����??
            else                    
                t=0;
            end
            %�P�^1
            if (M1~=0)
                Ax1=(f31(1)-f12(1))/M1;
                Ay1=(f31(2)-f12(2))/M1;
                Az1=(f31(3)-f12(3))/M1;
                %�`�N�A�ݥ�?�⧤?�A�Z?��t��
                X1=X1+U1*t+1/2*Ax1*t^2;
                Y1=Y1+V1*t+1/2*Ay1*t^2;
                Z1=Z1+W1*t+1/2*Az1*t^2;
                U1=U1+Ax1*t; 
                V1=V1+Ay1*t;
                W1=W1+Az1*t;
            end    

            %�P�^2
            if (M2~=0)
                Ax2=(f12(1)-f23(1))/M2;
                Ay2=(f12(2)-f23(2))/M2;
                Az2=(f12(3)-f23(3))/M2;
                X2=X2+U2*t+1/2*Ax2*t^2;
                Y2=Y2+V2*t+1/2*Ay2*t^2;
                Z2=Z2+W2*t+1/2*Az2*t^2;
                U2=U2+Ax2*t; 
                V2=V2+Ay2*t;
                W2=W2+Az2*t;
            end     

            %�P�^3
            if (M3~=0)
                Ax3=(f23(1)-f31(1))/M3;
                Ay3=(f23(2)-f31(2))/M3;
                Az3=(f23(3)-f31(3))/M3;
                X3=X3+U3*t+1/2*Ax3*t^2;
                Y3=Y3+V3*t+1/2*Ay3*t^2;
                Z3=Z3+W3*t+1/2*Az3*t^2;
                U3=U3+Ax3*t; 
                V3=V3+Ay3*t;
                W3=W3+Az3*t;
            end  
        end
        %���m�P�^����m
        if(M1~=0)
            set(h,'XData',X1,'YData',Y1,'ZData',Z1);
            line(X1,Y1,Z1,'Color',[1 0 0],'Marker','.','MarkerSize',10);
        end
        if(M2~=0)
            set(i,'XData',X2,'YData',Y2,'ZData',Z2);
            line(X2,Y2,Z2,'Color',[0 1 0],'Marker','.','MarkerSize',10);
        end
        if(M3~=0)
            set(l,'XData',X3,'YData',Y3,'ZData',Z3);
            line(X3,Y3,Z3,'Color',[0 0 1],'Marker','.','MarkerSize',10);
        end
        %?��?�u
        %?�ܲĤ@?�P�^��?�u
        set(handles.Text_m1,'String',num2str(M1*10^(-19)));
        set(handles.Text_x1,'String',num2str(X1));
        set(handles.Text_y1,'String',num2str(Y1));
        set(handles.Text_z1,'String',num2str(Z1));
        set(handles.Text_v1,'String',num2str(V1*10^(-3)));
        set(handles.Text_u1,'String',num2str(U1*10^(-3)));
        set(handles.Text_w1,'String',num2str(W1*10^(-3)));
        %?�ܲĤG?�P�^��?�u
        set(handles.Text_m2,'String',num2str(M2*10^(-19)));
        set(handles.Text_x2,'String',num2str(X2));
        set(handles.Text_y2,'String',num2str(Y2));
        set(handles.Text_z2,'String',num2str(Z2));
        set(handles.Text_u2,'String',num2str(U2*10^(-3)));
        set(handles.Text_v2,'String',num2str(V2*10^(-3)));
        set(handles.Text_w2,'String',num2str(W2*10^(-3)));
        %?�ܲĤT?�P�^��?�u
        set(handles.Text_m3,'String',num2str(M3*10^(-19)));     
        set(handles.Text_x3,'String',num2str(X3));    
        set(handles.Text_y3,'String',num2str(Y3));    
        set(handles.Text_z3,'String',num2str(Z3));     
        set(handles.Text_u3,'String',num2str(U3*10^(-3)));    
        set(handles.Text_v3,'String',num2str(V3*10^(-3)));     
        set(handles.Text_w3,'String',num2str(W3*10^(-3)));
        %?�ܬP�^��?���Z��
        set(handles.value_r12,'String',num2str(R12));  
        set(handles.value_r23,'String',num2str(R23));
        set(handles.value_r13,'String',num2str(R13));
        %?�m�r�^?��
        %�Ĥ@?�P�^�r�^????��
        set(handles.Text_m1,'ForegroundColor',[1 0 0]);
        set(handles.Text_x1,'ForegroundColor',[1 0 0]);
        set(handles.Text_y1,'ForegroundColor',[1 0 0]);
        set(handles.Text_z1,'ForegroundColor',[1 0 0]);
        set(handles.Text_u1,'ForegroundColor',[1 0 0]);
        set(handles.Text_v1,'ForegroundColor',[1 0 0]);
        set(handles.Text_w1,'ForegroundColor',[1 0 0]);
        %�ĤG?�P�^�r�^????��
        set(handles.Text_m2,'ForegroundColor',[0 1 0]);
        set(handles.Text_x2,'ForegroundColor',[0 1 0]);
        set(handles.Text_y2,'ForegroundColor',[0 1 0]);
        set(handles.Text_z2,'ForegroundColor',[0 1 0]);
        set(handles.Text_u2,'ForegroundColor',[0 1 0]);
        set(handles.Text_v2,'ForegroundColor',[0 1 0]);
        set(handles.Text_w2,'ForegroundColor',[0 1 0]);
        %�ĤT?�P�^�r�^????��
        set(handles.Text_m3,'ForegroundColor',[0 0 1]);
        set(handles.Text_x3,'ForegroundColor',[0 0 1]);
        set(handles.Text_y3,'ForegroundColor',[0 0 1]);
        set(handles.Text_z3,'ForegroundColor',[0 0 1]);
        set(handles.Text_u3,'ForegroundColor',[0 0 1]);
        set(handles.Text_v3,'ForegroundColor',[0 0 1]);
        set(handles.Text_w3,'ForegroundColor',[0 0 1]);
        %��s?��
        drawnow;
    end
end 

%%
%�ҫ���l�ƨ�?
%%A�P-B�P(����?�q?�PI��)
function star = Model_Init_1() 
%%
%�P�^1
star(1).M=500*10^19;
star(1).X=500;
star(1).Y=0;
star(1).Z=0;
star(1).U=0;
star(1).V=6*10^3;
star(1).W=0;
%�P�^2
star(2).M=250*10^19;
star(2).X=-500;
star(2).Y=0;
star(2).Z=0;
star(2).U=0;
star(2).V=-12*10^3;
star(2).W=0;
%�P�^3
star(3).M=0;
star(3).X=0;
star(3).Y=0;
star(3).Z=0;
star(3).U=0;
star(3).V=0;
star(3).W=0;
%%

%%
%%A�P-B�P(����?�q?�PII��)
function star = Model_Init_2() 
%%
%�P�^1
star(1).M=674.663*10^19;
star(1).X=250;
star(1).Y=0;
star(1).Z=0;
star(1).U=0;
star(1).V=10*10^3;
star(1).W=0;
%�P�^2
star(2).M=337.331*10^19;
star(2).X=-500;
star(2).Y=0;
star(2).Z=0;
star(2).U=0;
star(2).V=-20*10^3;
star(2).W=0;
%�P�^3
star(3).M=0;
star(3).X=0;
star(3).Y=0;
star(3).Z=0;
star(3).U=0;
star(3).V=0;
star(3).W=0;
%%

%%
%%�����?�T����I���]�C�t���^
function star = Model_Init_3() 
%%
%�P�^1
star(1).M=8*10^19;
star(1).X=-200;
star(1).Y=-100;
star(1).Z=0;
star(1).U=-2*10^3;
star(1).V=3.46410161513776*10^3;
star(1).W=0;
%�P�^2
star(2).M=8*10^19;
star(2).X=0;
star(2).Y=246.410161513776;
star(2).Z=0;
star(2).U=4*10^3;
star(2).V=0;
star(2).W=0;
%�P�^3
star(3).M=8*10^19;
star(3).X=200;
star(3).Y=-100;
star(3).Z=0;
star(3).U=-2*10^3;
star(3).V=-3.46410161513776*10^3;
star(3).W=0;
%%

%%
%%�����?�T����II���]���t���^
function star = Model_Init_4() 
%%
%�P�^1
star(1).M=80*10^19;
star(1).X=-600;
star(1).Y=-300;
star(1).Z=0;
star(1).U=-2*10^3;
star(1).V=3.46410161513776*10^3;
star(1).W=0;
%�P�^2
star(2).M=80*10^19;
star(2).X=0;
star(2).Y=739.230484541326;
star(2).Z=0;
star(2).U=4*10^3;
star(2).V=0;
star(2).W=0;
%�P�^3
star(3).M=80*10^19;
star(3).X=600;
star(3).Y=-300;
star(3).Z=0;
star(3).U=-2*10^3;
star(3).V=-3.46410161513776*10^3;
star(3).W=0;
%%

%%
%%?�ڬP?��P�t?I
function star = Model_Init_5() 
%%
%�P�^1
star(1).M=10*10^19;
star(1).X=450;
star(1).Y=50;
star(1).Z=0;
star(1).U=0;
star(1).V=0;
star(1).W=-10*10^3;
%�P�^2
star(2).M=300*10^19;
star(2).X=0;
star(2).Y=0;
star(2).Z=0;
star(2).U=0;
star(2).V=0;
star(2).W=2*10^2;
%�P�^3
star(3).M=5*10^19;
star(3).X=-500;
star(3).Y=200;
star(3).Z=0;
star(3).U=0;
star(3).V=0;
star(3).W=8*10^3;
%%

%%
%%?�ڬP?��P�t?II
function star = Model_Init_6() 
%%
%�P�^1
star(1).M=10*10^19;
star(1).X=350;
star(1).Y=30;
star(1).Z=0;
star(1).U=0;
star(1).V=0;
star(1).W=-20*10^3;
%�P�^2
star(2).M=300*10^19;
star(2).X=0;
star(2).Y=0;
star(2).Z=0;
star(2).U=0;
star(2).V=0;
star(2).W=4*10^2;
%�P�^3
star(3).M=5*10^19;
star(3).X=-500;
star(3).Y=400;
star(3).Z=0;
star(3).U=0;
star(3).V=0;
star(3).W=16*10^3;
%%

%%
%%��??�T�P(?�q�u��-?�ߪ�?��?��?)
function star = Model_Init_7() 
%%
%�P�^1
star(1).M=80*10^19;
star(1).X=-80;
star(1).Y=20;
star(1).Z=1000;
star(1).U=0;
star(1).V=0;
star(1).W=9*10^3;
%�P�^2
star(2).M=50*10^19;
star(2).X=100;
star(2).Y=-20;
star(2).Z=1000;
star(2).U=0;
star(2).V=0;
star(2).W=-9*10^3;
%�P�^3
star(3).M=60*10^19;
star(3).X=240;
star(3).Y=132;
star(3).Z=1000;
star(3).U=0;
star(3).V=0;
star(3).W=-8*10^3;
%%

%%
%%��������
function star = Model_Init_8() 
%%
%�P�^1
star(1).M=2*10^19;
star(1).X=200;
star(1).Y=0;
star(1).Z=-880;
star(1).U=0;
star(1).V=0;
star(1).W=12*10^3;
%�P�^2
star(2).M=2*10^19;
star(2).X=-200;
star(2).Y=0;
star(2).Z=-1000;
star(2).U=0;
star(2).V=0;
star(2).W=12*10^3;
%�P�^3
star(3).M=40*10^19;
star(3).X=0;
star(3).Y=0;
star(3).Z=-1000;
star(3).U=0;
star(3).V=0;
star(3).W=6*10^3;
%%

%%
%%?�ڬP?�ڬPI��
function star = Model_Init_9() 
%%
%�P�^1
star(1).M=200*10^19;
star(1).X=-570;
star(1).Y=30;
star(1).Z=0;
star(1).U=0;
star(1).V=0;
star(1).W=4*10^3;
%�P�^2
star(2).M=160*10^19;
star(2).X=750;
star(2).Y=0;
star(2).Z=0;
star(2).U=0;
star(2).V=0;
star(2).W=-5*10^3;
%�P�^3
star(3).M=0.1*10^19;
star(3).X=255;
star(3).Y=0;
star(3).Z=0;
star(3).U=0;
star(3).V=0;
star(3).W=-18*10^3;
%%

%%
%%?�ڬP?�ڬPII��
function star = Model_Init_10() 
%%
%�P�^1
star(1).M=200*10^19;
star(1).X=750;
star(1).Y=30;
star(1).Z=0;
star(1).U=0;
star(1).V=0;
star(1).W=4*10^3;
%�P�^2
star(2).M=200*10^19;
star(2).X=-750;
star(2).Y=-30;
star(2).Z=0;
star(2).U=0;
star(2).V=0;
star(2).W=-4*10^3;
%�P�^3
star(3).M=0.1*10^19;
star(3).X=0;
star(3).Y=0;
star(3).Z=0;
star(3).U=0;
star(3).V=0;
star(3).W=0;
%%

%%
%%��?��������?
function star = Model_Init_11() 
%%
%�P�^1
star(1).M=60*10^19;
star(1).X=-800;
star(1).Y=-50;
star(1).Z=0;
star(1).U=10^3;
star(1).V=0;
star(1).W=-14.145671*10^3;
%�P�^2
star(2).M=60*10^19;
star(2).X=-800;
star(2).Y=50;
star(2).Z=0;
star(2).U=10^3;
star(2).V=0;
star(2).W=14.145671*10^3;
%�P�^3
star(3).M=0.1*10^19;
star(3).X=-800;
star(3).Y=400;
star(3).Z=0;
star(3).U=10^3;
star(3).V=0;
star(3).W=14.145671*10^3;
%%

%%
%%��a��?�w�t?
function star = Model_Init_12() 
%%
%�P�^1
star(1).M=500*10^19;
star(1).X=0;
star(1).Y=0;
star(1).Z=0;
star(1).U=0;
star(1).V=-169.1;
star(1).W=0;
%�P�^2
star(2).M=4*10^19;
star(2).X=800;
star(2).Y=0;
star(2).Z=-60;
star(2).U=0;
star(2).V=21.1337*10^3;
star(2).W=0;
%�P�^3
star(3).M=0.1*10^19;
star(3).X=825;
star(3).Y=0;
star(3).Z=-50;
star(3).U=0;
star(3).V=10.330537*10^3;
star(3).W=0;
%%

%%
%%8�r��??�S��
function star = Model_Init_13() 
%%
%�P�^1
star(1).M=16*10^19;
star(1).X=194.000872*2;
star(1).Y=-48.617506*2;
star(1).Z=0;
star(1).U=18.6481474*129;
star(1).V=17.2946292*129;
star(1).W=0;
%�P�^2
star(2).M=16*10^19;
star(2).X=-194.000872*2;
star(2).Y=48.617506*2;
star(2).Z=0;
star(2).U=18.6481474*129;
star(2).V=17.2946292*129;
star(2).W=0;
%�P�^3
star(3).M=16*10^19;
star(3).X=0;
star(3).Y=0;
star(3).Z=0;
star(3).U=-37.2962948*129;
star(3).V=-34.5892584*129;
star(3).W=0;
%%

%%
%%�Ĥ@�Ԯ�Ԥ�?(��?�w)
function star = Model_Init_14() 
%%
%�P�^1
star(1).M=100*10^19;
star(1).X=-60;
star(1).Y=0;
star(1).Z=0;
star(1).U=0;
star(1).V=-sqrt(667/66/11)*10^3;
star(1).W=0;
%�P�^2
star(2).M=10*10^19;
star(2).X=600;
star(2).Y=0;
star(2).Z=0;
star(2).U=0;
star(2).V=sqrt(667/66/11)*10^4;
star(2).W=0;
%�P�^3
star(3).M=0.1*10^19;
star(3).X=413.55830757;
star(3).Y=0;
star(3).Z=0;
star(3).U=0;
star(3).V=6.5066*10^3;
star(3).W=0;
%%

%%
%%�Ĥ��Ԯ�Ԥ�?
function star = Model_Init_15() 
%%
%�P�^1
star(1).M=100*10^19;
star(1).X=-5;
star(1).Y=0;
star(1).Z=0;
star(1).U=0;
star(1).V=57.749*10^3;
star(1).W=0;
%�P�^2
star(2).M=90*10^19;
star(2).X=5;
star(2).Y=0;
star(2).Z=0;
star(2).U=0;
star(2).V=-70.0*10^3;
star(2).W=0;
%�P�^3
star(3).M=10*10^19;
star(3).X=400;
star(3).Y=-200;
star(3).Z=200;
star(3).U=0;
star(3).V=8*10^3;
star(3).W=-10*10^3;
%%

% --- Executes when selected object is changed in uipanel_type.
function uipanel_type_SelectionChangeFcn(hObject, eventdata, handles)
%%
% hObject    handle to the selected object in uipanel_type 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
switch(hObject)
    case handles.Threebody_type1
        star=Model_Init_1();
        handles.pretype=1;
    case handles.Threebody_type2
        star=Model_Init_2();
        handles.pretype=2;
    case handles.Threebody_type3
        star=Model_Init_3();
        handles.pretype=3;
    case handles.Threebody_type4
        star=Model_Init_4();
        handles.pretype=4;
    case handles.Threebody_type5
        star=Model_Init_5();
        handles.pretype=5;
    case handles.Threebody_type6
        star=Model_Init_6();
        handles.pretype=6;
    case handles.Threebody_type7
        star=Model_Init_7();
        handles.pretype=7;
    case handles.Threebody_type8
        star=Model_Init_8();
        handles.pretype=8;
    case handles.Threebody_type9
        star=Model_Init_9();
        handles.pretype=9;
    case handles.Threebody_type10
        star=Model_Init_10();
        handles.pretype=10;
    case handles.Threebody_type11
        star=Model_Init_11();
        handles.pretype=11;
    case handles.Threebody_type12
        star=Model_Init_12();   
        handles.pretype=12;
    case handles.Threebody_type13
        star=Model_Init_13();   
        handles.pretype=13; 
    case handles.Threebody_type14
        star=Model_Init_14();   
        handles.pretype=14;
    case handles.Threebody_type15
        star=Model_Init_15();   
        handles.pretype=15;
    otherwise
        star=Model_Init_1();  
        handles.pretype=1;
end
%?�N?��?��??�u?�J�Ĥ@��?��?(�Ĥ@?�P)
set(handles.Edit_m1,'String',num2str(star(1).M*10^(-19)));
set(handles.Edit_x1,'String',num2str(star(1).X));
set(handles.Edit_y1,'String',num2str(star(1).Y));
set(handles.Edit_z1,'String',num2str(star(1).Z));
set(handles.Edit_u1,'String',num2str(star(1).U*10^(-3)));
set(handles.Edit_v1,'String',num2str(star(1).V*10^(-3)));
set(handles.Edit_w1,'String',num2str(star(1).W*10^(-3)));
%?�N?��?��??�u?�J�ĤG��?��?(�ĤG?�P)
set(handles.Edit_m2,'String',num2str(star(2).M*10^(-19)));
set(handles.Edit_x2,'String',num2str(star(2).X));
set(handles.Edit_y2,'String',num2str(star(2).Y));
set(handles.Edit_z2,'String',num2str(star(2).Z));
set(handles.Edit_u2,'String',num2str(star(2).U*10^(-3)));
set(handles.Edit_v2,'String',num2str(star(2).V*10^(-3)));
set(handles.Edit_w2,'String',num2str(star(2).W*10^(-3)));
%?�N?��?��??�u?�J�ĤT��?��?(�ĤT?�P)
set(handles.Edit_m3,'String',num2str(star(3).M*10^(-19)));
set(handles.Edit_x3,'String',num2str(star(3).X));
set(handles.Edit_y3,'String',num2str(star(3).Y));
set(handles.Edit_z3,'String',num2str(star(3).Z));
set(handles.Edit_u3,'String',num2str(star(3).U*10^(-3)));
set(handles.Edit_v3,'String',num2str(star(3).V*10^(-3)));
set(handles.Edit_w3,'String',num2str(star(3).W*10^(-3)));
%�O�s?�u
guidata(gcf,handles);

% --- Executes on button press in Button_confirm.
function Button_confirm_Callback(hObject, eventdata, handles)
%%
% hObject    handle to Button_confirm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Is_Running;
global Is_Init;
%���u�Ĥ@��?��??�e?�Ĥ@?�P?��
star(1).M=str2double(get(handles.Edit_m1,'String'))*10^19;
star(1).X=str2double(get(handles.Edit_x1,'String'));
star(1).Y=str2double(get(handles.Edit_y1,'String'));
star(1).Z=str2double(get(handles.Edit_z1,'String'));
star(1).U=str2double(get(handles.Edit_u1,'String'))*10^3;
star(1).V=str2double(get(handles.Edit_v1,'String'))*10^3;
star(1).W=str2double(get(handles.Edit_w1,'String'))*10^3;
%���u�ĤG��?��??�e?�ĤG?�P?��
star(2).M=str2double(get(handles.Edit_m2,'String'))*10^19;
star(2).X=str2double(get(handles.Edit_x2,'String'));
star(2).Y=str2double(get(handles.Edit_y2,'String'));
star(2).Z=str2double(get(handles.Edit_z2,'String'));
star(2).U=str2double(get(handles.Edit_u2,'String'))*10^3;
star(2).V=str2double(get(handles.Edit_v2,'String'))*10^3;
star(2).W=str2double(get(handles.Edit_w2,'String'))*10^3;
%���u�ĤT��?��??�e?�ĤT?�P?��
star(3).M=str2double(get(handles.Edit_m3,'String'))*10^19;
star(3).X=str2double(get(handles.Edit_x3,'String'));
star(3).Y=str2double(get(handles.Edit_y3,'String'));
star(3).Z=str2double(get(handles.Edit_z3,'String'));
star(3).U=str2double(get(handles.Edit_u3,'String'))*10^3;
star(3).V=str2double(get(handles.Edit_v3,'String'))*10^3;
star(3).W=str2double(get(handles.Edit_w3,'String'))*10^3;
%??�u??�ܥ���?���^handles��?�qStar
handles.Star=star;
%�̩w�w��l��
Is_Init=true;
%???��
Is_Running=true;
handles.type=handles.pretype;
%?���??�m�ɭ����i?
set(handles.uipanel_param,'Visible','off');
%�O�s?�u
guidata(gcf,handles);

%%
% --- Executes on button press in Button_cancel.
function Button_cancel_Callback(hObject, eventdata, handles)
%%
% hObject    handle to Button_cancel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%?���??�m�ɭ����i?
global Is_Running;
set(handles.uipanel_param,'Visible','off');
%???��
Is_Running=true;

% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
%
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Is_Running;
%�k?���U
if strcmp(get(gcf,'SelectionType'),'alt')  
    %���X?�m�ɭ�
    set(handles.uipanel_param,'Visible','on');
    Is_Running=false;
    %
    set(handles.Threebody_type1,'Value',0);
    set(handles.Threebody_type2,'Value',0);
    set(handles.Threebody_type3,'Value',0);
    set(handles.Threebody_type4,'Value',0);
    set(handles.Threebody_type5,'Value',0);
    set(handles.Threebody_type6,'Value',0);
    set(handles.Threebody_type7,'Value',0);
    set(handles.Threebody_type8,'Value',0);
    set(handles.Threebody_type9,'Value',0);
    set(handles.Threebody_type10,'Value',0);
    set(handles.Threebody_type11,'Value',0);
    set(handles.Threebody_type12,'Value',0);
    set(handles.Threebody_type13,'Value',0);
    set(handles.Threebody_type14,'Value',0);
    set(handles.Threebody_type15,'Value',0);
    switch(handles.type)
        case 1
            star=Model_Init_1();
            handles.pretype=1;
            set(handles.Threebody_type1,'Value',1);
        case 2
            star=Model_Init_2();
            handles.pretype=2;
            set(handles.Threebody_type2,'Value',1);
        case 3
            star=Model_Init_3();
            handles.pretype=3;
            set(handles.Threebody_type3,'Value',1);
        case 4
            star=Model_Init_4();
            handles.pretype=4;
            set(handles.Threebody_type4,'Value',1);
        case 5
            star=Model_Init_5();
            handles.pretype=5;
            set(handles.Threebody_type5,'Value',1);
        case 6
            star=Model_Init_6();
            handles.pretype=6;
            set(handles.Threebody_type6,'Value',1);
        case 7
            star=Model_Init_7();
            handles.pretype=7;
            set(handles.Threebody_type7,'Value',1);
        case 8
            star=Model_Init_8();
            handles.pretype=8;
            set(handles.Threebody_type8,'Value',1);
        case 9
            star=Model_Init_9();
            handles.pretype=9;
            set(handles.Threebody_type9,'Value',1);
        case 10
            star=Model_Init_10();
            handles.pretype=10;
            set(handles.Threebody_type10,'Value',1);
        case 11
            star=Model_Init_11();
            handles.pretype=11;
            set(handles.Threebody_type11,'Value',1);
        case 12
            star=Model_Init_12();   
            handles.pretype=12;
            set(handles.Threebody_type12,'Value',1);
        case 13
            star=Model_Init_13();
            handles.pretype=13;
            set(handles.Threebody_type13,'Value',1);
        case 14
            star=Model_Init_14();
            handles.pretype=14;
            set(handles.Threebody_type14,'Value',1);
        case 15
            star=Model_Init_15();   
            handles.pretype=15;
            set(handles.Threebody_type15,'Value',1);
        otherwise
            star=Model_Init_1();  
            handles.pretype=1;
            set(handles.Threebody_type1,'Value',1);
    end
    %??����???����?�u??��T��?��?���h
    %?�N?��?��??�u?�J�Ĥ@��?��?(�Ĥ@?�P)
    set(handles.Edit_m1,'String',num2str(star(1).M*10^(-19)));
    set(handles.Edit_x1,'String',num2str(star(1).X));
    set(handles.Edit_y1,'String',num2str(star(1).Y));
    set(handles.Edit_z1,'String',num2str(star(1).Z));
    set(handles.Edit_u1,'String',num2str(star(1).U*10^(-3)));
    set(handles.Edit_v1,'String',num2str(star(1).V*10^(-3)));
    set(handles.Edit_w1,'String',num2str(star(1).W*10^(-3)));
    %?�N?��?��??�u?�J�ĤG��?��?(�ĤG?�P)
    set(handles.Edit_m2,'String',num2str(star(2).M*10^(-19)));
    set(handles.Edit_x2,'String',num2str(star(2).X));
    set(handles.Edit_y2,'String',num2str(star(2).Y));
    set(handles.Edit_z2,'String',num2str(star(2).Z));
    set(handles.Edit_u2,'String',num2str(star(2).U*10^(-3)));
    set(handles.Edit_v2,'String',num2str(star(2).V*10^(-3)));
    set(handles.Edit_w2,'String',num2str(star(2).W*10^(-3)));
    %?�N?��?��??�u?�J�ĤT��?��?(�ĤT?�P)
    set(handles.Edit_m3,'String',num2str(star(3).M*10^(-19))); 
    set(handles.Edit_x3,'String',num2str(star(3).X));     
    set(handles.Edit_y3,'String',num2str(star(3).Y));   
    set(handles.Edit_z3,'String',num2str(star(3).Z));
    set(handles.Edit_u3,'String',num2str(star(3).U*10^(-3))); 
    set(handles.Edit_v3,'String',num2str(star(3).V*10^(-3))); 
    set(handles.Edit_w3,'String',num2str(star(3).W*10^(-3)));
    %�O�s?�u
    guidata(gcf,handles);
end
   
%%
% --------------------------------------------------------------------
function normal_Callback(hObject, eventdata, handles)
%%
% hObject    handle to normal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([-37.5,30]); 

%%
% --------------------------------------------------------------------
function XOY_view_Callback(hObject, eventdata, handles)
%%
% hObject    handle to XOY_view (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([-90,90]); 

%%
% --------------------------------------------------------------------
function YOZ_view_Callback(hObject, eventdata, handles)
%%
% hObject    handle to YOZ_view (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([-90,0]);

%%
% --------------------------------------------------------------------
function ZOX_view_Callback(hObject, eventdata, handles)
%%
% hObject    handle to ZOX_view (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
view([180,0]);

%%
% --------------------------------------------------------------------
function Version_Callback(hObject, eventdata, handles)
%%
% hObject    handle to Version (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hs = msgbox({'?��ާ@?��:'
   ''
   '    Version: 1.0 '
   ''
   '    Author:'
   ''
   '    Chen Tianyang, Li Hao'
   ''
   '    Data:2017-10-25'
   ''},'Version Information');
%��?�r�^�j�p
ht = findobj(hs, 'Type', 'text');
set(ht,'FontSize',10);
%��???�ؤj�p
set(hs, 'Resize', 'on'); 

%%
% --------------------------------------------------------------------
function UserGuide_Callback(hObject, eventdata, handles)
% hObject    handle to UserGuide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hs = msgbox({'?��ާ@?��:'
   ''
   '       ?�O�@?�T�^??��??��,�y�z�ۥѪ�?���s�b��?�ܤT?�i?�@??���P�^'
   '�b�ۤ���?���E���ޤO�@�ΤU�Ұ���??�C'
   ''
   '       ?���_��??��O?��z�A���έ��N�k?��?�ȼ�?�A???�ܬP�^����m'
   '�H��??�C'
   ''
   '       ?��?��?�m�F15���i�઺��l?��A�b�I��?�W??�k?�Y�i?�J?�m�ɭ��A'
   '�b?�m�ɭ����i�H??���P����l?��C'
   ''
   '       �P?�a�A�b?�m�ɭ����]�i�H�V�奻�ؤ�����?�J�P�^??�A�t??�H��?��'
   '�l?????��U�h�C'
   ''
   '       ?��u��?����????��?�i�H��?����?��M?��?�����\��C'
   ''
   '       ?��k?��?�u?�ܳ���???�ܬP�^��?�q�B��m��?�M??�t�׵�?�u�C'
   ''
   '       ?�󪺵�??�]�A???�e�C�Ĥ@?��?��??���A�]�A?��?���BXOY?���B'
   'XOZ?���MYOZ?���C�ĤG?��??��?�󪩥��H�Υ�?��?�C'
   ''
   '       May you enjoy the codes�I'
   '       �p?��?�󦳥����?�κ�?�A�Ʊ�z�O��??�t�C??�I'
   ''
   '?�t�覡�G2015301200079@whu.edu.cn'
   '    ?�t�H�GChen Tianyang(?��?)'
   ''},'UserGuide');
%��?�r�^�j�p
ht = findobj(hs, 'Type', 'text');
set(ht,'FontSize',10);
%��???�ؤj�p
set(hs, 'Resize', 'on'); 
