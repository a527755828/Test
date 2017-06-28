function varargout = homework(varargin)
% HOMEWORK MATLAB code for homework.fig
%      HOMEWORK, by itself, creates a new HOMEWORK or raises the existing
%      singleton*.
%
%      H = HOMEWORK returns the handle to a new HOMEWORK or the handle to
%      the existing singleton*.
%
%      HOMEWORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HOMEWORK.M with the given input arguments.
%
%      HOMEWORK('Property','Value',...) creates a new HOMEWORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before homework_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to homework_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help homework

% Last Modified by GUIDE v2.5 01-May-2013 12:39:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @homework_OpeningFcn, ...
                   'gui_OutputFcn',  @homework_OutputFcn, ...
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


% --- Executes just before homework is made visible.
function homework_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to homework (see VARARGIN)

% Choose default command line output for homework
handles.output = hObject;
movegui(gcf,'center');  %��gui�Ƶ���Ļ�м�
guidata(hObject, handles);

%--------------------------------------------------------------------------
% ����򴴽�ģ��temple��
% ���е�pattern��һά10����
% ÿ�������а���num��feature��numָʾfeature�ĸ�����feature��num*25ά���顣
% ��Ӧ����c++�����еĸ����������£�
% struct pattern ->pattern; 
% pattern.num ->pattren(1.*); 
% pattern.feature ->pattren(1.*).feature
% ��������testsample��ֱ��ʹ��untitled.bmpͼƬ��ֱ�Ӳ�����
%--------------------------------------------------------------------------
if exist('template.mat','file')~=0     
    load ('template.mat');
else
    pattern(1,1).num=0;
    pattern(1,1).feature=[];

    pattern(1,2).num=0;
    pattern(1,2).feature=[];

    pattern(1,3).num=0;
    pattern(1,3).feature=[];

    pattern(1,4).num=0;
    pattern(1,4).feature=[];

    pattern(1,5).num=0;
    pattern(1,5).feature=[];

    pattern(1,6).num=0;
    pattern(1,6).feature=[];

    pattern(1,7).num=0;
    pattern(1,7).feature=[];

    pattern(1,8).num=0;
    pattern(1,8).feature=[];

    pattern(1,9).num=0;
    pattern(1,9).feature=[];

    pattern(1,10).num=0;
    pattern(1,10).feature=[];
    save template pattern;
end
global loss
loss = ones(10,10);
for i = 1:10
    loss(i,i) = 0;
end
%------------------------------------------------------------------------
% Update handles structure

% UIWAIT makes homework wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = homework_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function menu1_Callback(hObject, eventdata, handles)
% hObject    handle to menu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu2_Callback(hObject, eventdata, handles)
% hObject    handle to menu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu3_Callback(hObject, eventdata, handles)
% hObject    handle to menu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu4_Callback(hObject, eventdata, handles)
% hObject    handle to menu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu5_Callback(hObject, eventdata, handles)
% hObject    handle to menu5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu6_Callback(hObject, eventdata, handles)
% hObject    handle to menu6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu7_Callback(hObject, eventdata, handles)
% hObject    handle to menu7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu8_Callback(hObject, eventdata, handles)
% hObject    handle to menu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu8_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu8_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ʹ��˵��
% --------------------------------------------------------------------
str  = 'Author : ����';
str = [str 10];
str = [str 'QQ��496570001'];
str = [str 10];
str = [str 'Email: flybx@foxmail.com'];
msgbox(str,'����');


% --------------------------------------------------------------------
function menu7_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu7_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu7_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu7_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu7_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu7_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu7_4_Callback(hObject, eventdata, handles)
% hObject    handle to menu7_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function menu6_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu6_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% �ƺ�����
% --------------------------------------------------------------------
% global feature
% load('template.mat');
% 
% r = zeros(10,2000); %ϵ��
% x = zeros(2000,2);  %��Ʒ
% hx = zeros(1,10);   %�б���
% c = 1;
% 
% %   ѭ��ʮ��
% for k = 1:10
%     %   ʮ�����
%     for n = 1:10
%         %   ÿ�����ȡ20����Ʒ
%         for i = 1:20
%             if c==1
%                 for j = 1:10
%                     r(j,1) = 1;
%                 end
%             else
%                 for j = 1:10
%                     t = 0;
%                     for l = 1:c-1
%                         d = 0;
%                         for ii = 1:25
%                             d = d+(pattern(n).feature(i,ii)-pattern(x(l,1)).feature(x(l,2),ii))^2;
%                         end
%                         kk = exp(-d);
%                         t = t+r(j,l)*kk;
%                     end
%                     hx(j) = t;
%                 end
%                 for j = 1:10
%                     if j == n
%                         if hx(j)>0  %������ȷ
%                             r(n,c) = 0;
%                         else    %�������
%                             r(n,c) = 1;
%                         end
%                     else
%                         if hx(j)<0  %������ȷ
%                             r(n,c) = 0;
%                         else    %�������
%                             r(n,c) = -1;
%                         end
%                     end
%                 end
%             end
%             x(c,1) = n;
%             x(c,2) = i;
%             c = c+1;%139
%         end
%     end
% end
% 
% for j = 1:10
%     t = 0;
%     for l = 1:200
%         d = 0;
%         for ii = 1:25
%             d = d+(feature(ii)-pattern(x(l,1)).feature(x(l,2),ii))^2;
%         end
%         kk = exp(-d);
%         t = t+r(j,l)*kk;
%     end
%     hx(j) = t;
% end
% 
% [tem,num] = max(hx);    %�ҵ����е����ֵ
% num = num-1;
% 
% str = num2str(num);
% str = ['Ӧ���ƺ������෨ʶ������' str];
% msgbox(str,'�����');


% --------------------------------------------------------------------
function menu5_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% Fish�㷨
% --------------------------------------------------------------------
global feature
load('template.mat');
xmeans = zeros(2,25);   %����ľ�ֵ
S = zeros(2,25,25);  %��Ʒ������ɢ�Ⱦ���
sw = zeros(25,25);  %�������ɢ�Ⱦ���
sw_ = zeros(25,25); %Sw�������
W = zeros(1,25);    %������w*
difxmeans = zeros(1,25);    %��ֵ��
X = zeros(1,25);    %δ֪��Ʒ
m0 = 0;     %����Ʒ��ֵ
m1 = 0;     %����Ʒ��ֵ
y0 = 0;     %��ֵy0
mode0 = [];     %������Ʒ����
mode1 = [];
pnum = zeros(1,10);
fisher_2classes = [];

for m = 1:10
    for n = 1:m
       num0 = pattern(m).num;  %������Ʒ����
       num1 = pattern(n).num;
       for i = 1:num0
           for j = 1:25
               xmeans(1,j) = xmeans(1,j)+pattern(m).feature(i,j);
               mode0(i,j) = pattern(m).feature(i,j);
           end
       end
       for i = 1:num1
           for j = 1:25
               xmeans(2,j) = xmeans(2,j)+pattern(n).feature(i,j);
               mode1(i,j) = pattern(n).feature(i,j);
           end
       end
       %��������Ʒ�ľ�ֵ����
        for i = 1:25
            xmeans(1,i) = xmeans(1,i)/num0;
            xmeans(2,i) = xmeans(2,i)/num1;
        end
        %��������Ʒ������ɢ�Ⱦ���
        for i = 1:25
            for j = 1:25
                s0 = 0;
                s1 = 0;
                for k = 1:num0
                    s0 = s0+(mode0(k,j)-xmeans(1,i))*(mode0(k,j)-xmeans(1,j));
                end
                s0 = s0/(num0-1);
                S(1,i,j) = s0;  %��һ��
                for k = 1:num1
                    s1 = s1+(mode1(k,j)-xmeans(2,i))*(mode1(k,j)-xmeans(2,j));
                end
                s1 = s1/(num1-1);
                S(2,i,j) = s1;  %�ڶ���
            end
        end
        %�������ɢ����
        for i = 1:25
            for j = 1:25
                sw(i,j) = S(1,i,j)+S(2,i,j);
            end
        end
        sw_ = pinv(sw);
        %����w*  w*��Sw_��(Xmeans0-Xmeans1)
        for i = 1:25
            difxmeans(i) = xmeans(1,i)-xmeans(2,i);
        end
        W = difxmeans*sw_;
        %������Ʒ��ֵ
        for i = 1:num0
            m0 = m0+W*mode0(i,:)';
        end
        for i = 1:num1
            m1 = m1+W*mode1(i,:)';
        end
        m0 = m0/num0;
        m1 = m1/num1;
        y0 = (num0*m0+num1*m1)/(num0+num1);    %��ֵy0
        %�����������д����
        for i = 1:25
            X(i) = feature(i);
        end
        y = W*X';
        if y>y0
            fisher_2classes(m,n) = m;
        else
            fisher_2classes(m,n) = n;
        end
              
       pnum(fisher_2classes(m,n)) = pnum(fisher_2classes(m,n))+1;
    end
end
[tem,num] = max(pnum);
num = num-1;

str = num2str(num);
str = ['Ӧ��Fish�㷨ʶ������' str];
msgbox(str,'�����');


% --------------------------------------------------------------------
function menu5_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% �����㷨
% --------------------------------------------------------------------
global feature
load('template.mat');

w = zeros(10,26);   %����Ȩֵ
d = zeros(1,10);    %����������Ȩʸ��
x = zeros(1,26);    %��1��Ʒ
hx = zeros(1,10);   %�б���
c = 0;  %��������
flag = 0;   %��־��(ֻʹ��0��1)
while ~flag
    flag = 1;
    for n = 1:10
        for i = 1:pattern(n).num
            %ȡ��֪����
            for j = 1:25
                x(j) = pattern(n).feature(i,j);
            end
            x(26) = 1;  %���һλ��1
            %������Ȩʸ��
            for j = 1:10
                for k = 1:26
                    d(j) = d(j)+w(j,k)*x(k);
                end
            end
            %�ж�d(n)�Ƿ������ֵ
            if d(n)==max(d)
                flag = 1;   %d(n)Ϊ���ֵʱflag = 1ͨ������
            else
                %   ������Ҫ����Ȩֵ
                for j = 1:10
                    for k = 1:26
                        if j==n
                            w(j,k) = w(j,k)+x(k);
                        elseif d(j)>d(n)
                            w(j,k) = w(j,k)-x(k);
                        end
                    end
                end
                flag = 0;
            end
        end
    end
    c = c+1;
    if(c>2000)
        break
    end
end
%   ���˵õ������б���Ȩʸ��

%   δ֪��Ʒ
num = zeros(1,26);
for i = 1:25
    num(i) = feature(i);
end
num(26) = 1;
%   �����б���
for n = 1:10
    for i = 1:26
        hx(n) = hx(n)+w(n,i)*num(i);
    end
end
[tem,num] = max(hx);    %�ҵ����е����ֵ
num = num-1;

str = num2str(num);
str = ['Ӧ�ý����㷨ʶ������' str];
msgbox(str,'�����');


% --------------------------------------------------------------------
function menu5_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ����У���㷨
% --------------------------------------------------------------------
global feature
load('template.mat');

w = zeros(10,26);   %����Ȩֵ
d = zeros(1,10);    %����������Ȩʸ��
x = zeros(1,26);    %��1��Ʒ
hx = zeros(1,10);   %�б���
c = 0;  %��������
cc = 1;
flag = 0;   %��־��(ֻʹ��0��1)
while(~flag)
    flag = 1;
    for n = 1:10
        for i = 1:pattern(n).num
            %ȡ��֪��Ʒ
            for j = 1:25
                x(j) = pattern(n).feature(i,j);
            end
            x(26) = 1;  %���һλ��1
            %������Ȩʸ��
            for j = 1:10
                for k = 1:26
                    d(j) = d(j)+w(j,k)*x(k);
                end
            end
            %�ж�d(n)�Ƿ������ֵ
            if d(n)==max(d)
                flag = 1;   %d(n)Ϊ���ֵʱflag = 1ͨ������
            else
                flag = 0;
            end
            %   ���� �޸�Ȩֵ
            for j = 1:10
                if j == n   %�ǵ�ǰ���
                    rx = 1;
                else
                    rx = 0;
                end
                if d(j)<rx
                    for k = 1:26
                        w(j,k) = w(j,k)+x(k)/cc;
                    end
                else
                    for k = 1:26
                        w(j,k) = w(j,k)-x(k)/cc;
                    end
                end
            end
            cc = cc+1;
        end
    end
    c = c+1;
    if(c>2000)
        break
    end
end
%   ���˵õ������б���Ȩʸ��

%   δ֪��Ʒ
num = zeros(1,26);
for i = 1:25
    num(i) = feature(i);
end
num(26) = 1;
%   �����б���
for n = 1:10
    for i = 1:26
        hx(n) = hx(n)+w(n,i)*num(i);
    end
end
[tem,num] = max(hx);    %�ҵ����е����ֵ
num = num-1;

str = num2str(num);
str = ['Ӧ�����������㷨ʶ������' str];
msgbox(str,'�����');


% --------------------------------------------------------------------
function menu5_4_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% LMSE�㷨
% --------------------------------------------------------------------

% --------------------------------------------------------------------
function menu4_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu4_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ʹ�ö�ֵ���ݵ�Bayes����
% --------------------------------------------------------------------
global feature
load('template.mat');
pw = zeros(1,10);    %�������P(wj)=n(i)/N
p = zeros(10,25);     %Pj(wi)wi:wi�࣬j:��j������
pxw = zeros(1,10);   %����������P(X|wj)
pwx = zeros(1,10);   %�������P(wj|X)
N = 0;
num = 0;
% ���������
for i = 1:10
    n(i) = pattern(i).num;
    N = N + n(i);  %��Ʒ����
end
for i = 1:10
    pw(i) = n(i)/N;
end
% ������������
for i = 1:10
    for j = 1:25
        numof1 = 0;
        for k = 1:pattern(i).num
            if pattern(i).feature(k,j)>0.1
                numof1 = numof1 + 1;
            end
        end
        p(i,j) = (numof1+1)/(n(i)+2);
    end
end
for i=1:10
    pp = 1;
    for j = 1:25
        if feature(j)>0.1
            pp = pp*p(i,j);
        else
            pp = pp*(1-p(i,j));
        end
    end
    pxw(i) = pp;
end


% ��������
px = 0;
maxp = 0;
for i = 1:10
    px = px+pw(i)*pxw(i);
end
for i = 1:10
    pwx(i) = pw(i)*pxw(i)/px;
    if pwx(i) > maxp
        maxp = pwx(i);
        num = i-1;
    end
end

str = num2str(num);
str = ['Ӧ�ö�ֵ���ݵ�Bayes����ʶ������' str];
msgbox(str,'�����');

% --------------------------------------------------------------------
function menu4_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu4_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ��С������ʵ�Bayes����
% --------------------------------------------------------------------
global feature
load('template.mat');
x = zeros(1,25);    %������Ʒ
xmeans = zeros(1,25);   %��Ʒ�ľ�ֵ
S = zeros(25,25);   %Э�������
S_ =zeros(25,25);   %S�������
pw = zeros(1,10);    %�������P(wj)=n(i)/N
hx = zeros(1,10);   %�б���
t = zeros(1,25);
mode = [];
N = 0;
% ���������
for i = 1:10
    N = pattern(i).num;  %��Ʒ����
end
for i = 1:10
    pw(i) = pattern(i).num/N;
end
%����Ʒƽ��ֵ
for n = 1:10
    pnum = pattern(n).num;
    for k = 1:pnum
        for i = 1:25
            if pattern(n).feature(k,i)>0.1
                xmeans(i) = xmeans(i)+1;
            else
                xmeans(i) = xmeans(i)+0;
            end
        end
    end
    for i = 1:25
        xmeans(i) = xmeans(i)/pnum;
    end
    %��Э����
    for i = 1:pnum
        for j = 1:25
            if pattern(n).feature(i,j)>0.1
                mode(i,j) = 1.04;
            else
                mode(i,j) = 0;
            end
        end
    end
    for i = 1:25
        for j = 1:25
            s = 0;
            for k = 1:pnum
                s = s+(mode(k,i)-xmeans(i))*(mode(k,j)-xmeans(j)); 
            end
            s = s/(pnum - 1);
            S(i,j) = s;
        end
    end
    %��S�������
    S_ = pinv(S);   %���溯��pinv
    dets = det(S);  %������ʽ��ֵ������det
    % ���б���
    for i = 1:25
        if feature(i)>0.1
            x(i) = 1;
        else
            x(i) = 0;
        end
    end
    for i = 1:25
        x(i) = x(i) - xmeans(i);
    end
    t = x*S_;
    t1 = t*x';
    t2 = log(pw(n));
    t3 = log(dets+1);
    hx(n) = -t1/2+t2-t3/2;
end
[tem,num] = max(hx);    %�ҵ����е����ֵ
num = num-1;

str = num2str(num);
str = ['Ӧ����С�����ʵ�Bayes����ʶ������' str];
msgbox(str,'�����');

% --------------------------------------------------------------------
function menu4_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu4_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ��С���յ�Bayes����
% --------------------------------------------------------------------
global feature loss
load('template.mat');
button = questdlg('�Ƿ��޸���ʧ���ձ�','��ʾ��','Yes','No','Yes');
if strcmp(button,'Yes')
% ����������
set(gcf,'visible','off');
% ��ñ���ѡ�������
h = figure(losstab);
set(h,'visible','on');  %��ʾ�������
return
end
x = zeros(1,25);    %������Ʒ
xmeans = zeros(1,25);   %��Ʒ�ľ�ֵ
S = zeros(25,25);   %Э�������
S_ =zeros(25,25);   %S�������
p = zeros(1,10);    %�������
pw = zeros(1,10);    %�������
hx = zeros(1,10);   %�б���
mode = [];
N = 0;
t = zeros(1,25);
% ���������
for i = 1:10
    N = pattern(i).num;  %��Ʒ����
end
for i = 1:10
    pw(i) = pattern(i).num/N;
end

for n = 1:10
    pnum = pattern(n).num;
    %����Ʒƽ��ֵ
    for k = 1:pnum
        for i = 1:25
            if pattern(n).feature(k,i)>0.3
                xmeans(i) = xmeans(i)+1;
            else
                xmeans(i) = xmeans(i)+0;
            end
        end
    end
    for i = 1:25
        xmeans(i) = xmeans(i)/pnum;
    end
    %��Э����
    for i = 1:pnum
        for j = 1:25
            if pattern(n).feature(i,j)>0.3
                mode(i,j) = 1;
            else
                mode(i,j) = 0;
            end
        end
    end
    for i = 1:25
        for j = 1:25
            s = 0;
            for k = 1:pnum
                s = s+(mode(k,i)-xmeans(i))*(mode(k,j)-xmeans(j)); 
            end
            s = s/(pnum - 1);
            S(i,j) = s;
        end
    end
    %��S�������
    S_ = pinv(S);   %���溯��pinv
    dets = det(S);  %������ʽ��ֵ������det
    % ���б���
    for i = 1:25
        if feature(i)>0.3
            x(i) = 1;
        else
            x(i) = 0;
        end
    end
    for i = 1:25
        x(i) = x(i) - xmeans(i);
    end
    t = x*S_;
    t1 = t*x';
    t2 = log(pw(n));
    t3 = log(dets+1);
    p(n) = -t1/2+t2-t3/2;
end

for n = 1:10
    tem = 0;
    for i = 1:10
        tem = tem+loss(n,i)*p(i);
    end
    hx(n) = tem;
end
[tem,num] = max(hx);    %�ҵ����е����ֵ
num = num-1;

str = num2str(num);
str = ['Ӧ����С���յ�Bayes����ʶ������' str];
msgbox(str,'�����');



% --------------------------------------------------------------------
function menu3_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu3_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ���ٽ�ģ��ƥ�䷨
% --------------------------------------------------------------------
global feature
load('template.mat');
num = 0;
str = [];
min = 10000;
for i = 1:10
    for j = 1:pattern(i).num
        tem = 0;
        for m = 1:25
            sqr = 0;
            sqr = pattern(i).feature(j,m) - feature(m);
            sqr = sqr*sqr;
            tem = tem + sqr;
        end
        if tem < min
            min = tem;
            num = i-1;
        end
    end
end
str = num2str(num);
str = ['Ӧ����С���뷨ʶ������' str];
msgbox(str,'�����');





% --------------------------------------------------------------------
function menu2_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ������Ʒ��ѵ���׼�
% --------------------------------------------------------------------
% ����������
set(gcf,'visible','off');
% ��ñ���ѡ�������
h = figure(save_sample);
set(h,'visible','on');  %��ʾ�������


% --------------------------------------------------------------------
function menu2_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ѵ�������Ʒ��
% --------------------------------------------------------------------
set(gcf,'visible','off');
% ��ñ���ѡ�������
h = figure(samplelib);
set(h,'visible','on');  %��ʾ�������

% --------------------------------------------------------------------
function menu2_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu2_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ��֤��Ʒ�Ŀɷ���
% --------------------------------------------------------------------


% --------------------------------------------------------------------
function menu1_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% �������д������Ʒ
% --------------------------------------------------------------------
%�����������
cla(handles.axes1);
cla(handles.axes2);
set(handles.edit1,'string','');

%��ʼ��axes��ʾ
set(handles.axes1,'xTick',[]);
set(handles.axes1,'ytick',[]);
set(handles.axes1,'box','on');
set(handles.axes1,'visible','on');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
set(handles.axes2,'visible','on');

%���û��ʱ�־
global flgim;
flgim = 1;  %����ʹ�û��ʲ���

%�޸Ĳ˵����������ô�ͼƬ���ر�ʶ����
set(handles.menu1_3,'Enable','on');
set(handles.menu2_1,'Enable','off');
set(handles.menu2_3,'Enable','off');
set(handles.menu3_1,'Enable','off');
set(handles.menu4_1,'Enable','off');
set(handles.menu4_2,'Enable','off');
set(handles.menu4_3,'Enable','off');
set(handles.menu5_1,'Enable','off');
set(handles.menu5_2,'Enable','off');
set(handles.menu5_3,'Enable','off');
set(handles.menu5_4,'Enable','off');
set(handles.menu6_1,'Enable','off');
set(handles.menu7_1,'Enable','off');
set(handles.menu7_2,'Enable','off');
set(handles.menu7_3,'Enable','off');
set(handles.menu7_4,'Enable','off');


% --------------------------------------------------------------------
function menu1_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ��256ɫλͼ
% --------------------------------------------------------------------

global im flgim;  %����ȫ�ֱ���im������Ʒ��flgim�����ͼ��־

%��������
cla(handles.axes1);
cla(handles.axes2);

%ѡ��ͼƬ·��
[filename ,pathname] = ...
    uigetfile({'*.bmp'},'��һ��256ɫλͼ��');
%����һ���ж�
if isequal(filename,0)||isequal(pathname,0)
    disp('û��ѡ���ļ���');
    errordlg('δѡ��ͼƬ��','����')
   % buttonName = questdlg('�Ƿ��ٴ�ѡ��','ѡ��','no');
else
%�ϳ�·��+�ļ���
str = [pathname filename];
%��ȡͼƬ
im = imread(str);
%ʹ�õ�һ��axes
axes(handles.axes1);
%��ʾͼƬ
image(im);
end
set(handles.axes1,'xTick',[]);   %��Ϊimage������ԭ����Ҫ���������
set(handles.axes1,'ytick',[]);   %��Ϊimage������ԭ����Ҫ���������

% --------------------------------------------------------------------
function menu1_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ��ʾ��ͼ��
% --------------------------------------------------------------------
global im flgim;  %����ȫ�ֱ���im������Ʒ��flgim�����ͼ��־

%��������
cla(handles.axes1);
cla(handles.axes2);

%ѡ��ͼƬ·��
[filename ,pathname] = ...
    uigetfile({'*.bmp';'*.jpg';'*.gif'},'ѡ��ͼƬ');
%����һ���ж�
if isequal(filename,0)||isequal(pathname,0)
    disp('û��ѡ���ļ���');
    errordlg('δѡ���ļ���','����')
   % buttonName = questdlg('�Ƿ��ٴ�ѡ��','ѡ��','no');
else
%�ϳ�·��+�ļ���
str = [pathname filename];
%��ȡͼƬ
im = imread(str);
%ʹ�õ�һ��axes
axes(handles.axes1);
%��ʾͼƬ
image(im);
end
set(handles.axes1,'xTick',[]);   %��Ϊimage������ԭ����Ҫ���������
set(handles.axes1,'ytick',[]);   %��Ϊimage������ԭ����Ҫ���������

%��ֹ���ʲ���
flgim = 0;



% --------------------------------------------------------------------
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% �˳�
% --------------------------------------------------------------------

%������ݣ��رմ��ڣ��˳�ϵͳ
CleanGlobals;
delete untitled.bmp;
delete feature.dat;
close(gcf)



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
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1

% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes during object creation, after setting all properties.

function CleanGlobals
%�������ȫ�ֱ���
clear global flg flgim mark rgb x0 y0 x y im feature loss;


function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global flg mark rgb im flgim;   %flg�����ʱ�־��flgim�����ʱ�־��mark��rgb�������κ���ɫ
flg = 0;  %��ʼ��������û�а���
mark = '-';  %��ʼ�����Ϊ����
rgb = [0,0,0];  %��ʼ�����Ϊ��ɫ
im = [];   %����ͼ��
flgim = 1;  %��ͼ�����ñ�ʶ��


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flg x0 y0 x y mark rgb flgim;
flg = 1;
if flg&&flgim
axes(handles.axes1)
currPt = get(gca,'CurrentPoint');
x = currPt(1,1);
y = currPt(1,2);
line(x,y,'LineStyle',mark,'color',rgb,'linewidth',8);
x0 = x;
y0 = y;
end

% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flg x0 y0 x y mark rgb flgim;
if flg&&flgim
    x0 = x;
    y0 = y;
    currPt = get(gca,'CurrentPoint');
    x = currPt(1,1);
    y = currPt(1,2);
    line([x0 x],[y0 y],'LineStyle',mark,'color',rgb,'linewidth',5);
end


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global flg;
flg = 0;  %���̧��


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ����
% --------------------------------------------------------------------
[FileName,PathName] = uiputfile({ '*.bmp','Bitmap(*.bmp)';...
                                 '*.jpg','JPEG(*.jpg)';...
                                 '*.gif','GIF(*.gif)';...
                                 '*.*',  'All Files (*.*)'},...
                                 '������Ʒ','Untitled');
 if FileName == 0
    return;
 else
     set(handles.axes1,'visible','off');
     str= getframe(handles.axes1);
     imwrite(str.cdata,[PathName,FileName]);
 end
 set(handles.axes1,'visible','on');
 

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ȷ��
% --------------------------------------------------------------------
%���θ��Ű���
set(handles.menu1_2,'Enable','off');
set(handles.menu1_3,'Enable','off');

%��axes2����ʾ��������Ʒ

global im flgim feature
set(handles.axes1,'visible','off');
str= getframe(handles.axes1);
imwrite(str.cdata,'untitled.bmp','bmp');
im = imread('untitled.bmp');
im =rgb2gray(im);
im = im2bw(im);
imwrite(im,'untitled.bmp');
im = imread('untitled.bmp');
map = [0 0 0;1 1 1];
im = ind2rgb(im,map);   %Ϊ��image��ʾ��Ҫ���޸���imֵ��
set(handles.axes1,'visible','on');
axes(handles.axes2);
image(im);
set(handles.axes2,'xTick',[]);   %��Ϊimage������ԭ����Ҫ���������
set(handles.axes2,'ytick',[]);   %��Ϊimage������ԭ����Ҫ���������

%��edit1����ʾ��õ�����
im = imread('untitled.bmp');   %���»��im
testsample = Getfeature(im);
str=[];
feature = testsample;
    for i = 0:4
        for j=1:5
        if feature(i*5+j)>0.1
           str_tem='��';
        else
            str_tem='��';
        end
        str = [str str_tem];
        end
        str = [str 10];
    end
    set(handles.edit1,'string',str);

%���λ���
flgim = 0;  %��ֹ���ʲ���

%�����㷨����
set(handles.menu2_1,'Enable','on');
set(handles.menu2_3,'Enable','on');
set(handles.menu3_1,'Enable','on');
set(handles.menu4_1,'Enable','on');
set(handles.menu4_2,'Enable','on');
set(handles.menu4_3,'Enable','on');
set(handles.menu5_1,'Enable','on');
set(handles.menu5_2,'Enable','on');
set(handles.menu5_3,'Enable','on');
set(handles.menu5_4,'Enable','on');
set(handles.menu6_1,'Enable','on');
set(handles.menu7_1,'Enable','on');
set(handles.menu7_2,'Enable','on');
set(handles.menu7_3,'Enable','on');
set(handles.menu7_4,'Enable','on');

save ('feature.dat','feature');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% ���
% --------------------------------------------------------------------
%   ʵ�֡��������д������Ʒ��һ���Ĺ���
%�����������
cla(handles.axes1);
cla(handles.axes2);
set(handles.edit1,'string','');

%��ʼ��axes��ʾ
set(handles.axes1,'xTick',[]);
set(handles.axes1,'ytick',[]);
set(handles.axes1,'box','on');
set(handles.axes1,'visible','on');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
set(handles.axes2,'visible','on');

%���û��ʱ�־
global flgim;
flgim = 1;  %����ʹ�û��ʲ���

%�޸Ĳ˵����������ô�ͼƬ���ر�ʶ����
set(handles.menu1_3,'Enable','on');
set(handles.menu2_1,'Enable','off');
set(handles.menu2_3,'Enable','off');
set(handles.menu3_1,'Enable','off');
set(handles.menu4_1,'Enable','off');
set(handles.menu4_2,'Enable','off');
set(handles.menu4_3,'Enable','off');
set(handles.menu5_1,'Enable','off');
set(handles.menu5_2,'Enable','off');
set(handles.menu5_3,'Enable','off');
set(handles.menu5_4,'Enable','off');
set(handles.menu6_1,'Enable','off');
set(handles.menu7_1,'Enable','off');
set(handles.menu7_2,'Enable','off');
set(handles.menu7_3,'Enable','off');
set(handles.menu7_4,'Enable','off');
