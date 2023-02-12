clear;
clc;
format long;
Out_Path = "F:\University\Ain Shams University\Masters\03- Thesis\02- Thesis (Gait Analysis)\03- Work\01- Data Preparation\Test Cases";
Input_Path = "F:\University\Ain Shams University\Masters\03- Thesis\02- Thesis (Gait Analysis)\03- Work\01- Data Preparation\CSV Data\Trademill";
IMU_DATA_Path = strcat(Out_Path , "\Basic Inputs\Basic_Input_");
Dyn_R_DATA_Path = strcat(Out_Path , "\Outputs\Dyn_R\Dyn_R_");
Dyn_L_DATA_Path = strcat(Out_Path , "\Outputs\Dyn_L\Dyn_L_");
GRF_R_DATA_Path = strcat(Out_Path , "\Outputs\GRF_R\GRF_R_");
GRF_L_DATA_Path = strcat(Out_Path , "\Outputs\GRF_L\GRF_L_");
Input_Mat = [];
Output_Mat = [];
z = 0;
y = 0;
for i = 1 : 1 : 30        
	for j = 1 : 1 : 9
        IMU_filename = strcat(IMU_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
        if exist(IMU_filename, 'file') == 2
            Dyn_R_filename = strcat(Dyn_R_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
            Dyn_L_filename = strcat(Dyn_L_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
            GRF_R_filename = strcat(GRF_R_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
            GRF_L_filename = strcat(GRF_L_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
            Input_Mat = vertcat(Input_Mat, table2array(readtable(IMU_filename)));
            z = z + size(readtable(IMU_filename),1);
            %New_Out_Mat  = horzcat(table2array(readtable(Dyn_R_filename)),table2array(readtable(Dyn_L_filename), horzcat(table2array(readtable(GRF_R_filename)) , horzcat(table2array(readtable(GRF_L_filename)));
            New_Out_Mat  = horzcat(table2array(readtable(Dyn_R_filename)) , table2array(readtable(Dyn_L_filename)) , table2array(readtable(GRF_R_filename)) , table2array(readtable(GRF_L_filename)) );
            Output_Mat = vertcat(Output_Mat,New_Out_Mat);
            y = y + size(readtable(Dyn_R_filename),1);
        end 
    end
end
