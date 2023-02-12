function [IMU_Matrix] = Get_IMU(AB_Number,Trial_Number,Header_Mat,Path)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    AB_Num_STR = AB_String(AB_Number);
    Path_Part_1 = strcat(Path,'\AB',AB_Num_STR);
    Path_Part_2 = strcat('\treadmill_0',num2str(Trial_Number),'_01.csv');
    IMU_File_Path = strcat(Path_Part_1,'\imu',Path_Part_2);
    IMU_Matrix_Init = table2array(readtable(IMU_File_Path));
    IMU_Matrix = zeros(size(Header_Mat,1),24);
	for i = 1 : 1 : size(Header_Mat,1)
        for j = 1 : 1 : size(IMU_Matrix_Init,1)
            if Header_Mat(i,1) == IMU_Matrix_Init(j,1)
                IMU_Matrix(i,1:1:23) = IMU_Matrix_Init(j,2:1:24);
            end
        end
    end
end

