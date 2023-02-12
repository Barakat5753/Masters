function Get_Test_1(Input_Path)
%UNTITLED8 Summary of this function goes here
%   Inputs are only the IMU Sensors
%   Outputs are all for Left & Right Legs normalized to weight


    IMU_DATA_Path = strcat(Input_Path , "\Basic Inputs\Basic_Input_");
    Dyn_R_DATA_Path = strcat(Input_Path , "\Outputs\Dyn_R\Dyn_R_");
    Dyn_L_DATA_Path = strcat(Input_Path , "\Outputs\Dyn_L\Dyn_L_");
    GRF_R_DATA_Path = strcat(Input_Path , "\Outputs\GRF_R\GRF_R_");
    GRF_L_DATA_Path = strcat(Input_Path , "\Outputs\GRF_L\GRF_L_");
    Data_Out_Path   = strcat(Input_Path , "\Test Cases\Test Case 1");
    Input_Mat =[];
    Output_Mat = [];
        for x = 1 : 1 : 30
            File_Name_Test = strcat(IMU_DATA_Path , num2str(x) , "_1.csv");
            if exist(File_Name_Test, 'file') == 2
                    for i = 1 : 1 : 30
                        if x == i
                            for j = 1 : 1 : 9
                                IMU_filename = strcat(IMU_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
                                if exist(IMU_filename, 'file') == 2
                                    Dyn_R_filename = strcat(Dyn_R_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
                                    Dyn_L_filename = strcat(Dyn_L_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
                                    GRF_R_filename = strcat(GRF_R_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
                                    GRF_L_filename = strcat(GRF_L_DATA_Path , num2str(i) , "_" , num2str(j),".csv");
                                    Input_Mat = vertcat(Input_Mat, table2array(readtable(IMU_filename)));
                                    New_Out_Mat  = horzcat(table2array(readtable(Dyn_R_filename)) , table2array(readtable(Dyn_L_filename)) , table2array(readtable(GRF_R_filename)) , table2array(readtable(GRF_L_filename)) );
                                    Output_Mat = vertcat(Output_Mat,New_Out_Mat);
                                end 
                            end
                        end
                    end
            end  
            csvwrite(strcat(Data_Out_Path,"\Input_Mat_", num2str(x) ,".csv"), Input_Mat);
            csvwrite(strcat(Data_Out_Path,"\Output_Mat_", num2str(x) ,".csv"), Output_Mat);
            Input_Mat = [];
            New_Out_Mat = [];
            Output_Mat = [];
        end
end




