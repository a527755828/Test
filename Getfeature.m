%将紧紧包含数字的矩阵按长和宽均5倍缩小（向下取整）为25个小矩阵（大小均为w*h），每个小矩阵里逐个像素遍历，计算含有笔迹的概率，作为要提取的特征
function testsample = Getfeature(im)

[row,col]=find(im==0); %得到图片的上下左右的边界
im = im(min(row):max(row),min(col):max(col));   %找到图片中手写数字的位置，重新将刚好镶住手写数字的矩阵给im

[row,col] = size(im);  %镶住手写数字的行和列

w = fix(row/5);   % fix是为了取不大于它的整数
h = fix(col/5);
count = 0;
k=1;
testsample= zeros(1,25);  
% 移动大小为w*h的小矩阵不重叠地遍历完参与特征提取的大小为5w*5h的矩阵，一共25个小矩阵，每个矩阵提取一个特征分量
for i=1:w:5*w  %从第一行开始
    for j=1:h:5*h  %从第一列开始
        for m=i:i+w-1   %从第i个到紧跟其后的共w个
            for n=j:j+h-1  %从第j个到紧跟其后的共h个
                if im(m,n)==0
                    count=count+1; 
                end
            end
        end
        testsample(k)=count/(w*h);  %第k个特征分量
        count=0;
        k=k+1;
    end
end
end

        

% struct pattern//pattern结构体，保存某个数字类别(0～9)的所有样品特征
% {
% 	int number;  %该手写数字样品个数
% 	double feature[200][25];  %各样品特征，每类手写数字最多有200个样品，每个样品有25个特征
% };
% 
% class GetFeature : public CDib  
% {
% public:
% 	pattern pattern[10];  %手写数字样品特征库
% 	double testsample[25];  %待测的手写数字
% 	int width;  %手写数字的宽
% 	int height;  %手写数字的高
% 	int LineBytes;
% 
% 	void Save(int cls);  %将手写的数字保存到cls(0～9)类别中
% 	BOOL Saveable(int cls);  %判断手写的数字能否保存到cls(0～9)类别中，因为各类别中样品特征不能重复
% 	double Cal(int row, int col);  %计算分割好的5×5小区域中，黑像素所占的比例
% 	void SetFeature();  %计算手写数字的特征，赋值给testsample
% 	void GetPosition();  %获得手写数字的位置
% 	GetFeature();
% 	virtual ~GetFeature();
% 
% protected:
% 	int bottom;  %手写数字的底部
% 	int top;  %手写数字的顶部
% 	int left;  %手写数字的左边
% 	int right;  %手写数字的右边
% };
% ***************************************************************
% *   函数名称：GetPosition()
% *   函数类型：void 
% *   函数功能：搜索手写数字的位置，赋值给bottom,down,right,left
% ****************************************************************/
% void GetFeature::GetPosition()
% {
% 	width=GetWidth();
% 	height=GetHeight();
% 	LineBytes=(width*8+31)/32*4;
% 
% 	int i,j;
% 	BOOL flag;
% 	for(j=0;j<height;j++)
% 	{
% 		flag=FALSE;
% 		for(i=0;i<width;i++)
% 			if(m_pData[j*LineBytes+i]==0)
% 			{
% 				flag=TRUE;
% 				break;
% 			}
% 		if(flag)
% 			break;
% 	}
% 	bottom=j;
% 	for(j=height-1;j>0;j--)
% 	{
% 		flag=FALSE;
% 		for(i=0;i<width;i++)
% 			if(m_pData[j*LineBytes+i]==0)
% 			{
% 				flag=TRUE;
% 				break;
% 			}
% 		if(flag)
% 			break;
% 	}
% 	top=j;
% 	for(i=0;i<width;i++)
% 	{
% 		flag=FALSE;
% 		for(j=0;j<height;j++)
% 			if(m_pData[j*LineBytes+i]==0)
% 			{
% 				flag=TRUE;
% 				break;
% 			}
% 		if(flag)
% 			break;
% 	}
% 	left=i;
% 	for(i=width-1;i>0;i--)
% 	{
% 		flag=FALSE;
% 		for(j=0;j<height;j++)
% 			if(m_pData[j*LineBytes+i]==0)
% 			{
% 				flag=TRUE;
% 				break;
% 			}
% 		if(flag)
% 			break;
% 	}
% 	right=i;
% }
% 
% /***************************************************************
% *   函数名称：SetFeature()
% *   函数类型：void 
% *   函数功能：将手写数字特征保存在变量testsample中
% ****************************************************************/
% void GetFeature::SetFeature()
% {
% 	int i,j;
% 	for(j=0;j<5;j++)
% 	{
% 		for(i=0;i<5;i++)
% 		{
% 			testsample[5*(4-j)+i]=Cal(j,i);//(Cal(j,i)>0.10)?1:0;//
% 		}
% 	}	
% }
% 
% /****************************************************************
% *   函数名称：Cal(int row, int col)
% *   函数类型：double 
% *   参数说明：int row, int col:第row行，第col个区域
% *   函数功能：计算某一小区域内黑像素所占比例,返回某一小区域内黑像素所占比例
% ****************************************************************/
% double GetFeature::Cal(int row, int col)
% {
% 	double w,h,count;
% 	w=(right-left)/5;
% 	h=(top-bottom)/5;
% 	count=0;
% 
% 	for(int j=bottom+row*h;j<bottom+(row+1)*h;j++)
% 	for(int i=left+col*w;i<left+(col+1)*w;i++)
% 	{
% 		if(m_pData[j*LineBytes+i]==0)
% 			count++;
% 	}
% 
% 	return (double)count/(w*h);
% }
% 
% /***************************************************************
% *   函数名称：Savealbe(int cls)
% *   函数类型：BOOL 
% *   参数说明：int cls:类别
% *   函数功能：判断手写数字可否保存为cls类别的一个样品
% *             同一类别的样品不能有重复的
% ****************************************************************/
% BOOL GetFeature::Saveable(int cls)
% {
% 	for(int i=0;i<pattern[cls].number;i++)
% 	{
% 		BOOL flag=TRUE;
% 		for(int j=0;j<25;j++)
% 			flag&=(pattern[cls].feature[i][j]==testsample[j])?TRUE:FALSE;
% 		if (flag) return FALSE;
% 	}
% 	return TRUE;
% }
% 
% /***************************************************************
%    函数名称：Save(int cls)
%    函数类型：void 
%    参数说明：int cls:类别
%    函数功能：将手写数字保存为cls类别的一个样品，保存在样品的第一个
% ***************************************************************/
% void GetFeature::Save(int cls)
% {
% 	for(int i=pattern[cls].number;i>0;i--)
% 		for(int j=0;j<25;j++)
% 			pattern[cls].feature[i][j]=pattern[cls].feature[i-1][j];
% 	for(i=0;i<25;i++)
% 		pattern[cls].feature[0][i]=testsample[i];
% 	pattern[cls].number++;	
% }