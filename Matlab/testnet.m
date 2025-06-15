close all
clear all
clc
%
% [file path]=uigetfile('*.*','Select image');
% filename=strcat(path,file);
% img=(imread(filename));
%  figure,imshow(img);
%     title('Input Image');
% dim=ndims(img);
% 
% if(dim==3)
%     img=rgb2gray(img);
%     figure,imshow(img);
%     title('Gray Image'); 
% end
% wresize=256;
% wsize=3;
% img_data=(imresize(img,[wresize wresize]));
% figure,imshow(uint8(img_data));
%  title('Resized Image');


 fileid=fopen('image_textfilex.txt','w');


[file path]=uigetfile('*.*','Select image');
filename=strcat(path,file);
b=(imread(filename));
imshow(b);
k=1;
w=256;
h=256;
for i=1:h % height  
for j=1:w %width
a(k)=b(i,j);
k=k+1;
end
end
fid = fopen('image_textfilex.txt', 'wt');
fprintf(fid, '%x\n', a); %writes in hexadecimal

fclose(fid);
% %%
% [file path]=uigetfile('*.*','Select image');
% filename=strcat(path,file);
% img=(imread(filename));
%  figure,imshow(img);
%     title('Input Image');
% dim=ndims(img);
% 
% if(dim==3)
%     img=rgb2gray(img);
%     figure,imshow(img);
%     title('Gray Image'); 
% end
% 
% wresize=256;
% wsize=3;
% img_data=(imresize(img,[wresize wresize]));
% figure,imshow(uint8(img_data));
%  title('Resized Image');


 fileid=fopen('image_textfiley.txt','w');
[file path]=uigetfile('*.*','Select image');
filename=strcat(path,file);
b=(imread(filename));
imshow(b);
k=1;
w=256;
h=256;
for i=1:h % height  
for j=1:w %width
a(k)=b(i,j);
k=k+1;
end
end
fid = fopen('image_textfiley.txt', 'wt');
fprintf(fid, '%x\n', a);

%

con_fid=fopen('para.h','wt');
fprintf(con_fid,'%s \t %s \t %s','`define','MAX_LEN');
fprintf(con_fid,'\n');
fclose(con_fid);


hdldaemon('socket',4999)
cmd={'vlib work', 'vlog main.v mux2_1.v test.v',...
    'vsim test',...
    'view wave',...
    'add wave -r /*','run -all','exit'};

vsim('tclstart',cmd);
% hdldaemon('kill')
pause
h=256;
w=256;
fid= fopen('clk.txt','r');
img= fscanf(fid,'%d',[h w]);
fclose(fid);
ap=imresize(img,[h w]);
ap=ap';
figure,imshow(ap,[]);
