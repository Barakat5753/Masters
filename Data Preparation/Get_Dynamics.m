function [Dynamics_Matrix_R , Dynamics_Matrix_L ] = Get_Dynamics(AB_Number,Trial_Number,Header_Mat,Path)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

    AB_Num_STR = AB_String(AB_Number);
    Path_Part_1 = strcat(Path,'\AB',AB_Num_STR);
    Path_Part_2 = strcat('\treadmill_0',num2str(Trial_Number),'_01.csv');
    Dyynamics_File_Path = strcat(Path_Part_1,'\id',Path_Part_2);
    Dynamics_Matrix_Init = table2array(readtable(Dyynamics_File_Path));
    Dynamics_Matrix_R = zeros(size(Header_Mat,1),7);
    Dynamics_Matrix_L = zeros(size(Header_Mat,1),7);
	for i = 1 : 1 : size(Header_Mat,1)
        if Header_Mat(i,1) == Dynamics_Matrix_Init(i,1)
            Dynamics_Matrix_R(i,1:1:3) = Dynamics_Matrix_Init(i,8:1:10); % Hip (Flexion - Adduction - Rotation)
            Dynamics_Matrix_R(i,4:7) = Dynamics_Matrix_Init(i,17:2:23); % Knee Angle - Ankle - Subtalar - MTP
            Dynamics_Matrix_L(i,1:1:3) = Dynamics_Matrix_Init(i,11:1:13); % Hip (Flexion - Adduction - Rotation)
            Dynamics_Matrix_L(i,4:7) = Dynamics_Matrix_Init(i,18:2:24); % Knee Angle - Ankle - Subtalar - MTP
        end
	end
end

