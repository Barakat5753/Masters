clear
clc
Data_Input_Path = 'F:\University\Ain Shams University\Masters\03- Thesis\02- Thesis (Gait Analysis)\03- Work\01- Data Preparation\CSV Data\Trademill\';
Signal_Name = string({'conditions','fp','gcLeft','id','ik','imu','jp'});
Data_Output_Path = 'F:\University\Ain Shams University\Masters\03- Thesis\02- Thesis (Gait Analysis)\03- Work\01- Data Preparation\Merged Data\';
Output_Types = string({'Test_Type_01','Test_Type_02','Test_Type_03','Test_Type_04'});

for Output_Type = 1 : 1 : size(Output_Types,2)
    
        %%% The first For loop to loop over the whole AB01 -> AB30
        for Example_Number = 1 : 1 : 30  %% For Loop 1
            %%% The following partition of code outputs numbers from 01 to 30 to loop over AB01 -> AB30 
            Example_Number_str =  num2str(Example_Number);
            if Example_Number <=9
                Example_Number_str = strcat("0",Example_Number_str) ;
            end
        end
        Get_Output(Output_Types(Output_Type));
end % Loop Over Output Types