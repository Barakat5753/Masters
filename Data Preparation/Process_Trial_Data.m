function [Input_Matrix,Output_Matrix] = Process_Trial_Data(AB_Number,Trial_Number,Path)
%UNTITLED2 Function Merges All Data for signle iteration 
%   Detailed explanation goes here



if Verify_Trial(AB_Number,Trial_Number)
    Header = Adapt_Header(AB_Number,Trial_Number,Path);
    IMU_Data = Get_IMU(AB_Number,Trial_Number,Header,Path);
    Info = Get_Info(AB_Number);
end
Input_Matrix = zeros(size(Header,1),28);

Output_Matrix = Trial_Number;
end

