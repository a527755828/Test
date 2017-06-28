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
movegui(gcf,'center');  %将gui移到屏幕中间
guidata(hObject, handles);

%--------------------------------------------------------------------------
% 载入或创建模版temple。
% 其中的pattern是一维10数组
% 每个数组中包含num和feature：num指示feature的个数，feature是num*25维数组。
% 对应的是c++程序中的各个部分如下：
% struct pattern ->pattern; 
% pattern.num ->pattren(1.*); 
% pattern.feature ->pattren(1.*).feature
% 不过对于testsample就直接使用untitled.bmp图片来直接产生。
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
% 使用说明
% --------------------------------------------------------------------
str  = 'Author : 炳翔';
str = [str 10];
str = [str 'QQ：496570001'];
str = [str 10];
str = [str 'Email: flybx@foxmail.com'];
msgbox(str,'关于');


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
% 势函数法
% --------------------------------------------------------------------
% global feature
% load('template.mat');
% 
% r = zeros(10,2000); %系数
% x = zeros(2000,2);  %样品
% hx = zeros(1,10);   %判别函数
% c = 1;
% 
% %   循环十次
% for k = 1:10
%     %   十个类别
%     for n = 1:10
%         %   每个类别取20个样品
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
%                         if hx(j)>0  %分类正确
%                             r(n,c) = 0;
%                         else    %分类错误
%                             r(n,c) = 1;
%                         end
%                     else
%                         if hx(j)<0  %分类正确
%                             r(n,c) = 0;
%                         else    %分类错误
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
% [tem,num] = max(hx);    %找到其中的最大值
% num = num-1;
% 
% str = num2str(num);
% str = ['应用势函数分类法识别结果：' str];
% msgbox(str,'结果：');


% --------------------------------------------------------------------
function menu5_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% Fish算法
% --------------------------------------------------------------------
global feature
load('template.mat');
xmeans = zeros(2,25);   %两类的均值
S = zeros(2,25,25);  %样品类内离散度矩阵
sw = zeros(25,25);  %总类间离散度矩阵
sw_ = zeros(25,25); %Sw的逆矩阵
W = zeros(1,25);    %解向量w*
difxmeans = zeros(1,25);    %均值差
X = zeros(1,25);    %未知样品
m0 = 0;     %类样品均值
m1 = 0;     %类样品均值
y0 = 0;     %阈值y0
mode0 = [];     %两类样品特征
mode1 = [];
pnum = zeros(1,10);
fisher_2classes = [];

for m = 1:10
    for n = 1:m
       num0 = pattern(m).num;  %两类样品个数
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
       %求两个样品的均值向量
        for i = 1:25
            xmeans(1,i) = xmeans(1,i)/num0;
            xmeans(2,i) = xmeans(2,i)/num1;
        end
        %求两类样品类内离散度矩阵
        for i = 1:25
            for j = 1:25
                s0 = 0;
                s1 = 0;
                for k = 1:num0
                    s0 = s0+(mode0(k,j)-xmeans(1,i))*(mode0(k,j)-xmeans(1,j));
                end
                s0 = s0/(num0-1);
                S(1,i,j) = s0;  %第一类
                for k = 1:num1
                    s1 = s1+(mode1(k,j)-xmeans(2,i))*(mode1(k,j)-xmeans(2,j));
                end
                s1 = s1/(num1-1);
                S(2,i,j) = s1;  %第二类
            end
        end
        %总类间离散矩阵
        for i = 1:25
            for j = 1:25
                sw(i,j) = S(1,i,j)+S(2,i,j);
            end
        end
        sw_ = pinv(sw);
        %计算w*  w*＝Sw_×(Xmeans0-Xmeans1)
        for i = 1:25
            difxmeans(i) = xmeans(1,i)-xmeans(2,i);
        end
        W = difxmeans*sw_;
        %各类样品均值
        for i = 1:num0
            m0 = m0+W*mode0(i,:)';
        end
        for i = 1:num1
            m1 = m1+W*mode1(i,:)';
        end
        m0 = m0/num0;
        m1 = m1/num1;
        y0 = (num0*m0+num1*m1)/(num0+num1);    %阈值y0
        %对于任意的手写数字
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
str = ['应用Fish算法识别结果：' str];
msgbox(str,'结果：');


% --------------------------------------------------------------------
function menu5_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 奖惩算法
% --------------------------------------------------------------------
global feature
load('template.mat');

w = zeros(10,26);   %设置权值
d = zeros(1,10);    %迭代计算结果权矢量
x = zeros(1,26);    %增1样品
hx = zeros(1,10);   %判别函数
c = 0;  %迭代次数
flag = 0;   %标志符(只使用0，1)
while ~flag
    flag = 1;
    for n = 1:10
        for i = 1:pattern(n).num
            %取已知样本
            for j = 1:25
                x(j) = pattern(n).feature(i,j);
            end
            x(26) = 1;  %最后一位置1
            %计算结果权矢量
            for j = 1:10
                for k = 1:26
                    d(j) = d(j)+w(j,k)*x(k);
                end
            end
            %判断d(n)是否是最大值
            if d(n)==max(d)
                flag = 1;   %d(n)为最大值时flag = 1通过检验
            else
                %   否则，需要修正权值
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
%   至此得到线性判别函数权矢量

%   未知样品
num = zeros(1,26);
for i = 1:25
    num(i) = feature(i);
end
num(26) = 1;
%   计算判别函数
for n = 1:10
    for i = 1:26
        hx(n) = hx(n)+w(n,i)*num(i);
    end
end
[tem,num] = max(hx);    %找到其中的最大值
num = num-1;

str = num2str(num);
str = ['应用奖惩算法识别结果：' str];
msgbox(str,'结果：');


% --------------------------------------------------------------------
function menu5_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 增量校正算法
% --------------------------------------------------------------------
global feature
load('template.mat');

w = zeros(10,26);   %设置权值
d = zeros(1,10);    %迭代计算结果权矢量
x = zeros(1,26);    %增1样品
hx = zeros(1,10);   %判别函数
c = 0;  %迭代次数
cc = 1;
flag = 0;   %标志符(只使用0，1)
while(~flag)
    flag = 1;
    for n = 1:10
        for i = 1:pattern(n).num
            %取已知样品
            for j = 1:25
                x(j) = pattern(n).feature(i,j);
            end
            x(26) = 1;  %最后一位置1
            %计算结果权矢量
            for j = 1:10
                for k = 1:26
                    d(j) = d(j)+w(j,k)*x(k);
                end
            end
            %判断d(n)是否是最大值
            if d(n)==max(d)
                flag = 1;   %d(n)为最大值时flag = 1通过检验
            else
                flag = 0;
            end
            %   否则 修改权值
            for j = 1:10
                if j == n   %是当前类别
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
%   至此得到线性判别函数权矢量

%   未知样品
num = zeros(1,26);
for i = 1:25
    num(i) = feature(i);
end
num(26) = 1;
%   计算判别函数
for n = 1:10
    for i = 1:26
        hx(n) = hx(n)+w(n,i)*num(i);
    end
end
[tem,num] = max(hx);    %找到其中的最大值
num = num-1;

str = num2str(num);
str = ['应用增量矫正算法识别结果：' str];
msgbox(str,'结果：');


% --------------------------------------------------------------------
function menu5_4_Callback(hObject, eventdata, handles)
% hObject    handle to menu5_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% LMSE算法
% --------------------------------------------------------------------

% --------------------------------------------------------------------
function menu4_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu4_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 使用二值数据的Bayes方法
% --------------------------------------------------------------------
global feature
load('template.mat');
pw = zeros(1,10);    %先验概率P(wj)=n(i)/N
p = zeros(10,25);     %Pj(wi)wi:wi类，j:第j个特征
pxw = zeros(1,10);   %类条件概率P(X|wj)
pwx = zeros(1,10);   %后验概率P(wj|X)
N = 0;
num = 0;
% 求先验概率
for i = 1:10
    n(i) = pattern(i).num;
    N = N + n(i);  %样品总数
end
for i = 1:10
    pw(i) = n(i)/N;
end
% 求类条件概率
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


% 求后验概率
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
str = ['应用二值数据的Bayes方法识别结果：' str];
msgbox(str,'结果：');

% --------------------------------------------------------------------
function menu4_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu4_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 最小错误概率的Bayes方法
% --------------------------------------------------------------------
global feature
load('template.mat');
x = zeros(1,25);    %待测样品
xmeans = zeros(1,25);   %样品的均值
S = zeros(25,25);   %协方差矩阵
S_ =zeros(25,25);   %S的逆矩阵
pw = zeros(1,10);    %先验概率P(wj)=n(i)/N
hx = zeros(1,10);   %判别函数
t = zeros(1,25);
mode = [];
N = 0;
% 求先验概率
for i = 1:10
    N = pattern(i).num;  %样品总数
end
for i = 1:10
    pw(i) = pattern(i).num/N;
end
%求样品平均值
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
    %求协方差
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
    %求S的逆矩阵
    S_ = pinv(S);   %求逆函数pinv
    dets = det(S);  %求行列式的值，函数det
    % 求判别函数
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
[tem,num] = max(hx);    %找到其中的最大值
num = num-1;

str = num2str(num);
str = ['应用最小错误率的Bayes方法识别结果：' str];
msgbox(str,'结果：');

% --------------------------------------------------------------------
function menu4_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu4_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 最小风险的Bayes方法
% --------------------------------------------------------------------
global feature loss
load('template.mat');
button = questdlg('是否修改损失风险表？','提示：','Yes','No','Yes');
if strcmp(button,'Yes')
% 隐藏主界面
set(gcf,'visible','off');
% 获得保存选项界面句柄
h = figure(losstab);
set(h,'visible','on');  %显示保存界面
return
end
x = zeros(1,25);    %待测样品
xmeans = zeros(1,25);   %样品的均值
S = zeros(25,25);   %协方差矩阵
S_ =zeros(25,25);   %S的逆矩阵
p = zeros(1,10);    %后验概率
pw = zeros(1,10);    %先验概率
hx = zeros(1,10);   %判别函数
mode = [];
N = 0;
t = zeros(1,25);
% 求先验概率
for i = 1:10
    N = pattern(i).num;  %样品总数
end
for i = 1:10
    pw(i) = pattern(i).num/N;
end

for n = 1:10
    pnum = pattern(n).num;
    %求样品平均值
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
    %求协方差
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
    %求S的逆矩阵
    S_ = pinv(S);   %求逆函数pinv
    dets = det(S);  %求行列式的值，函数det
    % 求判别函数
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
[tem,num] = max(hx);    %找到其中的最大值
num = num-1;

str = num2str(num);
str = ['应用最小风险的Bayes方法识别结果：' str];
msgbox(str,'结果：');



% --------------------------------------------------------------------
function menu3_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu3_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 最临近模版匹配法
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
str = ['应用最小距离法识别结果：' str];
msgbox(str,'结果：');





% --------------------------------------------------------------------
function menu2_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu2_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 保存样品到训练首级
% --------------------------------------------------------------------
% 隐藏主界面
set(gcf,'visible','off');
% 获得保存选项界面句柄
h = figure(save_sample);
set(h,'visible','on');  %显示保存界面


% --------------------------------------------------------------------
function menu2_2_Callback(hObject, eventdata, handles)
% hObject    handle to menu2_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 训练设计样品库
% --------------------------------------------------------------------
set(gcf,'visible','off');
% 获得保存选项界面句柄
h = figure(samplelib);
set(h,'visible','on');  %显示保存界面

% --------------------------------------------------------------------
function menu2_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu2_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 验证样品的可分性
% --------------------------------------------------------------------


% --------------------------------------------------------------------
function menu1_1_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 清除并重写检验样品
% --------------------------------------------------------------------
%完成清屏操作
cla(handles.axes1);
cla(handles.axes2);
set(handles.edit1,'string','');

%初始化axes显示
set(handles.axes1,'xTick',[]);
set(handles.axes1,'ytick',[]);
set(handles.axes1,'box','on');
set(handles.axes1,'visible','on');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
set(handles.axes2,'visible','on');

%重置画笔标志
global flgim;
flgim = 1;  %可以使用画笔操作

%修改菜单操作，启用打开图片，关闭识别功能
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
% 打开256色位图
% --------------------------------------------------------------------

global im flgim;  %定义全局变量im代表样品，flgim代表读图标志

%首先清屏
cla(handles.axes1);
cla(handles.axes2);

%选择图片路径
[filename ,pathname] = ...
    uigetfile({'*.bmp'},'打开一个256色位图：');
%引入一个判断
if isequal(filename,0)||isequal(pathname,0)
    disp('没有选中文件！');
    errordlg('未选择图片！','警告')
   % buttonName = questdlg('是否再次选择','选择','no');
else
%合成路径+文件名
str = [pathname filename];
%读取图片
im = imread(str);
%使用第一个axes
axes(handles.axes1);
%显示图片
image(im);
end
set(handles.axes1,'xTick',[]);   %因为image函数的原因需要清除坐标轴
set(handles.axes1,'ytick',[]);   %因为image函数的原因需要清除坐标轴

% --------------------------------------------------------------------
function menu1_3_Callback(hObject, eventdata, handles)
% hObject    handle to menu1_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 显示打开图像
% --------------------------------------------------------------------
global im flgim;  %定义全局变量im代表样品，flgim代表读图标志

%首先清屏
cla(handles.axes1);
cla(handles.axes2);

%选择图片路径
[filename ,pathname] = ...
    uigetfile({'*.bmp';'*.jpg';'*.gif'},'选择图片');
%引入一个判断
if isequal(filename,0)||isequal(pathname,0)
    disp('没有选中文件！');
    errordlg('未选择文件！','警告')
   % buttonName = questdlg('是否再次选择','选择','no');
else
%合成路径+文件名
str = [pathname filename];
%读取图片
im = imread(str);
%使用第一个axes
axes(handles.axes1);
%显示图片
image(im);
end
set(handles.axes1,'xTick',[]);   %因为image函数的原因需要清除坐标轴
set(handles.axes1,'ytick',[]);   %因为image函数的原因需要清除坐标轴

%禁止画笔操作
flgim = 0;



% --------------------------------------------------------------------
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 退出
% --------------------------------------------------------------------

%清除数据，关闭窗口，退出系统
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
%清除所有全局变量
clear global flg flgim mark rgb x0 y0 x y im feature loss;


function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
global flg mark rgb im flgim;   %flg代表画笔标志，flgim代表画笔标志，mark和rgb代表线形和颜色
flg = 0;  %初始情况下鼠标没有按下
mark = '-';  %初始情况下为线性
rgb = [0,0,0];  %初始情况下为黑色
im = [];   %储存图像
flgim = 1;  %画图笔启用标识符


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
flg = 0;  %鼠标抬起


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% --------------------------------------------------------------------
% 保存
% --------------------------------------------------------------------
[FileName,PathName] = uiputfile({ '*.bmp','Bitmap(*.bmp)';...
                                 '*.jpg','JPEG(*.jpg)';...
                                 '*.gif','GIF(*.gif)';...
                                 '*.*',  'All Files (*.*)'},...
                                 '保存样品','Untitled');
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
% 确定
% --------------------------------------------------------------------
%屏蔽干扰按键
set(handles.menu1_2,'Enable','off');
set(handles.menu1_3,'Enable','off');

%在axes2中显示待分类样品

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
im = ind2rgb(im,map);   %为了image显示需要，修改了im值。
set(handles.axes1,'visible','on');
axes(handles.axes2);
image(im);
set(handles.axes2,'xTick',[]);   %因为image函数的原因需要清除坐标轴
set(handles.axes2,'ytick',[]);   %因为image函数的原因需要清除坐标轴

%在edit1中显示获得的特征
im = imread('untitled.bmp');   %重新获得im
testsample = Getfeature(im);
str=[];
feature = testsample;
    for i = 0:4
        for j=1:5
        if feature(i*5+j)>0.1
           str_tem='■';
        else
            str_tem='□';
        end
        str = [str str_tem];
        end
        str = [str 10];
    end
    set(handles.edit1,'string',str);

%屏蔽画笔
flgim = 0;  %禁止画笔操作

%开放算法按键
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
% 清除
% --------------------------------------------------------------------
%   实现“清除并重写检验样品”一样的功能
%完成清屏操作
cla(handles.axes1);
cla(handles.axes2);
set(handles.edit1,'string','');

%初始化axes显示
set(handles.axes1,'xTick',[]);
set(handles.axes1,'ytick',[]);
set(handles.axes1,'box','on');
set(handles.axes1,'visible','on');
set(handles.axes2,'xTick',[]);
set(handles.axes2,'ytick',[]);
set(handles.axes2,'box','on');
set(handles.axes2,'visible','on');

%重置画笔标志
global flgim;
flgim = 1;  %可以使用画笔操作

%修改菜单操作，启用打开图片，关闭识别功能
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
