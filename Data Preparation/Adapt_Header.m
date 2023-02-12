function [Header_Matrix] = Adapt_Header(AB_Number,Trial_Number,Path)
%Adapt_Header Returns Modified Header Matrix
%   AB_Number : Number of Subject
%   Trial_Number : Number of trial
%   Path : string input for input path
    AB_Num_STR = AB_String(AB_Number);
    Path_Part_1 = strcat(Path,'\AB',AB_Num_STR);
    Path_Part_2 = strcat('\treadmill_0',num2str(Trial_Number),'_01.csv');
    Conditions_File_Path = strcat(Path_Part_1,'\conditions',Path_Part_2);
    IMU_File_Path = strcat(Path_Part_1,'\imu',Path_Part_2);
    IMU_Matrix = table2array(readtable(IMU_File_Path));
    Conditions_Matrix = table2array(readtable(Conditions_File_Path));
	Header_Matrix = IMU_Matrix(:,1);

end

