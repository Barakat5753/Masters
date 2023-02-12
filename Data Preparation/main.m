%%%% Main File
%%%% Defined Input Path for CSV Files
%%%% Defined Output Path to print Trials
%%%% processes each Test Type alone.
clear;
clc;
format long;
Out_Path = "F:\University\Ain Shams University\Masters\03- Thesis\02- Thesis (Gait Analysis)\03- Work\01- Data Preparation\Test Cases";
Input_Path = "F:\University\Ain Shams University\Masters\03- Thesis\02- Thesis (Gait Analysis)\03- Work\01- Data Preparation\CSV Data\Trademill";
%Print_All_Headers(Input_Path,Out_Path);
%Print_All_Basic_Inputs(Input_Path,Out_Path);
%Print_All_Basic_Outputs(Input_Path,Out_Path);
Print_Output("Test_Type_01", Out_Path);
%Print_Output(Input_Path ,Test_Type_02, Out_Path);
%Print_Output(Input_Path ,Test_Type_03, Out_Path);
%Print_Output(Input_Path ,Test_Type_04, Out_Path);