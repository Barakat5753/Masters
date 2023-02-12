clear;
clc;
Input_Path = "F:\University\Ain Shams University\Masters\03- Thesis\02- Thesis (Gait Analysis)\03- Work\01- Data Preparation\Test Cases";

    IMU_DATA_Path = strcat(Input_Path , "\Basic Inputs\Basic_Input_");
    Dyn_R_DATA_Path = strcat(Input_Path , "\Outputs\Dyn_R\Dyn_R_");
    Dyn_L_DATA_Path = strcat(Input_Path , "\Outputs\Dyn_L\Dyn_L_");
    GRF_R_DATA_Path = strcat(Input_Path , "\Outputs\GRF_R\GRF_R_");
    GRF_L_DATA_Path = strcat(Input_Path , "\Outputs\GRF_L\GRF_L_");
    Data_Out_Path   = strcat(Input_Path , "\Test Cases\Test Case 1");
    Input_Mat =[];
    Output_Mat = [];
    All_Data_Cell = {};
    for  p = 1 : 1 : 30
        File_Name_Test = strcat(IMU_DATA_Path , num2str(p) , "_1.csv");
        if exist(File_Name_Test, 'file') == 2
            All_Data_Cell{p} = {};
        end
    end
    k = 0;
	for x = 1 : 1 : 30
        File_Name_Test = strcat(IMU_DATA_Path , num2str(x) , "_1.csv");
            if exist(File_Name_Test, 'file') == 2
                k = k + 1;
                for j = 1 : 1 : 9
                    IMU_filename = strcat(IMU_DATA_Path , num2str(x) , "_" , num2str(j),".csv");
                    if exist(IMU_filename, 'file') == 2
                        Dyn_R_filename = strcat(Dyn_R_DATA_Path , num2str(x) , "_" , num2str(j),".csv");
                        Dyn_L_filename = strcat(Dyn_L_DATA_Path , num2str(x) , "_" , num2str(j),".csv");
                        GRF_R_filename = strcat(GRF_R_DATA_Path , num2str(x) , "_" , num2str(j),".csv");
                        GRF_L_filename = strcat(GRF_L_DATA_Path , num2str(x) , "_" , num2str(j),".csv");
                        All_Data_Cell{k}{1,j} = table2array(readtable(IMU_filename));
                        All_Data_Cell{k}{2,j} = horzcat(table2array(readtable(Dyn_R_filename)) , table2array(readtable(Dyn_L_filename)) , table2array(readtable(GRF_R_filename)) , table2array(readtable(GRF_L_filename)) );
                    end 
                end
            end  
	end





