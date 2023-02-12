function Print_Test_1(Input_Path,All_Data)
%Leave One Subject OUT
%   Detailed explanation goes here

    Data_Out_Path   = strcat(Input_Path , "\Test Cases\Test Case 1");
    Output_Cell = {{},{}};
    Specific_Data = {};
    Info = load('SubjectInfo.mat');
    % Concatenate All Data for each subject alone
    for i = 1 : 1 : 22
        Specific_Data{1}{i} = vertcat(All_Data{1}{i}{:});
        Specific_Data{2}{i} = vertcat(All_Data{2}{i}{:});
        Output_Cell{1}{i} = [];
        Output_Cell{2}{i} = [];
    end
    for i = 1 : 1 : 22
        x = size(Output_Cell{1}{i},1);
        Age    = Info.data.Age(i)*ones(x,1);
        Gender = cell2mat(Info.data.Gender(i))*ones(x,1);
        Height = Info.data.Height(i)*ones(x,1);
        Weight = Info.data.Weight(i)*ones(x,1);
        
        % Concatenate all elements of All_Data except the i-th element
        Output_Cell{1}{i} = vertcat(Output_Cell{1}{i}, Specific_Data{1}{[1:i-1 i+1:end]});
        Output_Cell{2}{i} = vertcat(Output_Cell{2}{i}, Specific_Data{2}{[1:i-1 i+1:end]});
        csvwrite(strcat(Data_Out_Path,"\X\Train_Input_Mat_X_", num2str(i) ,".csv"), Output_Cell{1}{i});
        csvwrite(strcat(Data_Out_Path,"\X\Test_Input_Mat_X_", num2str(i) ,".csv"), Specific_Data{1}{i});
        csvwrite(strcat(Data_Out_Path,"\X\Train_Output_Mat_X_", num2str(i) ,".csv"), Output_Cell{2}{i});
        csvwrite(strcat(Data_Out_Path,"\X\Test_Output_Mat_X_", num2str(i) ,".csv"), Specific_Data{2}{i});
        csvwrite(strcat(Data_Out_Path,"\W\Train_Input_Mat_W_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight]);
        csvwrite(strcat(Data_Out_Path,"\W\Test_Input_Mat_W_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight]);
        csvwrite(strcat(Data_Out_Path,"\W\Train_Output_Mat_W_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight]);
        csvwrite(strcat(Data_Out_Path,"\W\Test_Output_Mat_W_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight]);
        csvwrite(strcat(Data_Out_Path,"\G\Train_Input_Mat_G_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender]);
        csvwrite(strcat(Data_Out_Path,"\G\Test_Input_Mat_G_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender]);
        csvwrite(strcat(Data_Out_Path,"\G\Train_Output_Mat_G_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender]);
        csvwrite(strcat(Data_Out_Path,"\G\Test_Output_Mat_G_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender]);
        csvwrite(strcat(Data_Out_Path,"\H\Train_Input_Mat_H_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height]);
        csvwrite(strcat(Data_Out_Path,"\H\Test_Input_Mat_H_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height]);
        csvwrite(strcat(Data_Out_Path,"\H\Train_Output_Mat_H_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height]);
        csvwrite(strcat(Data_Out_Path,"\H\Test_Output_Mat_H_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height]);  
        csvwrite(strcat(Data_Out_Path,"\A\Train_Input_Mat_A_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Age]);
        csvwrite(strcat(Data_Out_Path,"\A\Test_Input_Mat_A_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Age]);
        csvwrite(strcat(Data_Out_Path,"\A\Train_Output_Mat_A_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Age]);
        csvwrite(strcat(Data_Out_Path,"\A\Test_Output_Mat_A_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Age]);
        csvwrite(strcat(Data_Out_Path,"\WG\Train_Input_Mat_WG_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender]);
        csvwrite(strcat(Data_Out_Path,"\WG\Test_Input_Mat_WG_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender]);
        csvwrite(strcat(Data_Out_Path,"\WG\Train_Output_Mat_WG_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender]);
        csvwrite(strcat(Data_Out_Path,"\WG\Test_Output_Mat_WG_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender]); 
        csvwrite(strcat(Data_Out_Path,"\WH\Train_Input_Mat_WH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height]);
        csvwrite(strcat(Data_Out_Path,"\WH\Test_Input_Mat_WH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height]);
        csvwrite(strcat(Data_Out_Path,"\WH\Train_Output_Mat_WH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height]);
        csvwrite(strcat(Data_Out_Path,"\WH\Test_Output_Mat_WH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height]); 
        csvwrite(strcat(Data_Out_Path,"\WA\Train_Input_Mat_WA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Age]);
        csvwrite(strcat(Data_Out_Path,"\WA\Test_Input_Mat_WA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Age]);
        csvwrite(strcat(Data_Out_Path,"\WA\Train_Output_Mat_WA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Age]);
        csvwrite(strcat(Data_Out_Path,"\WA\Test_Output_Mat_WA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Age]); 
        csvwrite(strcat(Data_Out_Path,"\GA\Train_Input_Mat_GA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\GA\Test_Input_Mat_GA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\GA\Train_Output_Mat_GA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\GA\Test_Output_Mat_GA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\GH\Train_Input_Mat_GH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\GH\Test_Input_Mat_GH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\GH\Train_Output_Mat_GH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\GH\Test_Output_Mat_GH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\HA\Train_Input_Mat_HA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\HA\Test_Input_Mat_HA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\HA\Train_Output_Mat_HA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\HA\Test_Output_Mat_HA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGH\Train_Input_Mat_WGH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\WGH\Test_Input_Mat_WGH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\WGH\Train_Output_Mat_WGH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\WGH\Test_Output_Mat_WGH_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height]);
        csvwrite(strcat(Data_Out_Path,"\WGA\Train_Input_Mat_WGA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGA\Test_Input_Mat_WGA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGA\Train_Output_Mat_WGA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGA\Test_Output_Mat_WGA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Age]);
        csvwrite(strcat(Data_Out_Path,"\WHA\Train_Input_Mat_WHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WHA\Test_Input_Mat_WHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WHA\Train_Output_Mat_WHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WHA\Test_Output_Mat_WHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\GHA\Train_Input_Mat_GHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\GHA\Test_Input_Mat_GHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\GHA\Train_Output_Mat_GHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\GHA\Test_Output_Mat_GHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Gender, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGHA\Train_Input_Mat_WGHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGHA\Test_Input_Mat_WGHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGHA\Train_Output_Mat_WGHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height, Age]);
        csvwrite(strcat(Data_Out_Path,"\WGHA\Test_Output_Mat_WGHA_", num2str(i) ,".csv"), [Output_Cell{1}{i}, Weight, Gender, Height, Age]);
    end

end







