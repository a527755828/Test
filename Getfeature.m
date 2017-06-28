%�������������ֵľ��󰴳��Ϳ��5����С������ȡ����Ϊ25��С���󣨴�С��Ϊw*h����ÿ��С������������ر��������㺬�бʼ��ĸ��ʣ���ΪҪ��ȡ������
function testsample = Getfeature(im)

[row,col]=find(im==0); %�õ�ͼƬ���������ҵı߽�
im = im(min(row):max(row),min(col):max(col));   %�ҵ�ͼƬ����д���ֵ�λ�ã����½��պ���ס��д���ֵľ����im

[row,col] = size(im);  %��ס��д���ֵ��к���

w = fix(row/5);   % fix��Ϊ��ȡ��������������
h = fix(col/5);
count = 0;
k=1;
testsample= zeros(1,25);  
% �ƶ���СΪw*h��С�����ص��ر��������������ȡ�Ĵ�СΪ5w*5h�ľ���һ��25��С����ÿ��������ȡһ����������
for i=1:w:5*w  %�ӵ�һ�п�ʼ
    for j=1:h:5*h  %�ӵ�һ�п�ʼ
        for m=i:i+w-1   %�ӵ�i�����������Ĺ�w��
            for n=j:j+h-1  %�ӵ�j�����������Ĺ�h��
                if im(m,n)==0
                    count=count+1; 
                end
            end
        end
        testsample(k)=count/(w*h);  %��k����������
        count=0;
        k=k+1;
    end
end
end

        

% struct pattern//pattern�ṹ�壬����ĳ���������(0��9)��������Ʒ����
% {
% 	int number;  %����д������Ʒ����
% 	double feature[200][25];  %����Ʒ������ÿ����д���������200����Ʒ��ÿ����Ʒ��25������
% };
% 
% class GetFeature : public CDib  
% {
% public:
% 	pattern pattern[10];  %��д������Ʒ������
% 	double testsample[25];  %�������д����
% 	int width;  %��д���ֵĿ�
% 	int height;  %��д���ֵĸ�
% 	int LineBytes;
% 
% 	void Save(int cls);  %����д�����ֱ��浽cls(0��9)�����
% 	BOOL Saveable(int cls);  %�ж���д�������ܷ񱣴浽cls(0��9)����У���Ϊ���������Ʒ���������ظ�
% 	double Cal(int row, int col);  %����ָ�õ�5��5С�����У���������ռ�ı���
% 	void SetFeature();  %������д���ֵ���������ֵ��testsample
% 	void GetPosition();  %�����д���ֵ�λ��
% 	GetFeature();
% 	virtual ~GetFeature();
% 
% protected:
% 	int bottom;  %��д���ֵĵײ�
% 	int top;  %��д���ֵĶ���
% 	int left;  %��д���ֵ����
% 	int right;  %��д���ֵ��ұ�
% };
% ***************************************************************
% *   �������ƣ�GetPosition()
% *   �������ͣ�void 
% *   �������ܣ�������д���ֵ�λ�ã���ֵ��bottom,down,right,left
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
% *   �������ƣ�SetFeature()
% *   �������ͣ�void 
% *   �������ܣ�����д�������������ڱ���testsample��
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
% *   �������ƣ�Cal(int row, int col)
% *   �������ͣ�double 
% *   ����˵����int row, int col:��row�У���col������
% *   �������ܣ�����ĳһС�����ں�������ռ����,����ĳһС�����ں�������ռ����
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
% *   �������ƣ�Savealbe(int cls)
% *   �������ͣ�BOOL 
% *   ����˵����int cls:���
% *   �������ܣ��ж���д���ֿɷ񱣴�Ϊcls����һ����Ʒ
% *             ͬһ������Ʒ�������ظ���
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
%    �������ƣ�Save(int cls)
%    �������ͣ�void 
%    ����˵����int cls:���
%    �������ܣ�����д���ֱ���Ϊcls����һ����Ʒ����������Ʒ�ĵ�һ��
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