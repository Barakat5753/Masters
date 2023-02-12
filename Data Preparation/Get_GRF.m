function [GRF_Matrix_R , GRF_Matrix_L] = Get_GRF(AB_Number,Trial_Number,Header_Mat,Path)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    AB_Num_STR = AB_String(AB_Number);
    Path_Part_1 = strcat(Path,'\AB',AB_Num_STR);
    Path_Part_2 = strcat('\treadmill_0',num2str(Trial_Number),'_01.csv');
    GRF_File_Path = strcat(Path_Part_1,'\fp',Path_Part_2);
    GRF_Matrix_Init = table2array(readtable(GRF_File_Path));
    GRF_Matrix_R = zeros(size(Header_Mat,1),9);
    GRF_Matrix_L = zeros(size(Header_Mat,1),9);
	for i = 1 : 1 : size(Header_Mat,1)
        if Header_Mat(i,1) == GRF_Matrix_Init(i,1)
            GRF_Matrix_R(i,1:1:9) = GRF_Matrix_Init(i,2:1:10); 
            GRF_Matrix_L(i,1:1:9) = GRF_Matrix_Init(i,11:1:19); 
        end
	end
end

