function Print_Output(Test_Type, Out_Path , Number_Subjects)
%The Main Function to print the inputs and outputs of te Test Type in a
%specific path
%   Test_Type is the Test type among 4 tests given in the practice
%   Out_Path is the path where to print the arrays of the input features
%   and outputs targets

All_Data = Prepare_All_Data(Out_Path);


    switch Test_Type
        case "Test_Type_01"
            Print_Test_1(Out_Path,All_Data);

        
        case Test_Type_02
            [Input_Mat , Output_Mat] = Get_Test_2(Out_Path);
            csvwrite(strcat(Out_Path,'\Test_2\Input_Matrix.csv'), Input_Mat);
            csvwrite(strcat(Out_Path,'\Test_2\Output_Matrix.csv'), Output_Mat);
        
        case Test_Type_03
            [Input_Mat , Output_Mat] = Get_Test_3(Out_Path);
            csvwrite(strcat(Out_Path,'\Test_3\Input_Matrix.csv'), Input_Mat);
            csvwrite(strcat(Out_Path,'\Test_3\Output_Matrix.csv'), Output_Mat);
            
        case Test_Type_04
           [Input_Mat , Output_Mat] = Get_Test_4(Out_Path);    
            csvwrite(strcat(Out_Path,'\Test_4\Input_Matrix.csv'), Input_Mat);
            csvwrite(strcat(Out_Path,'\Test_4\Output_Matrix.csv'), Output_Mat);            
    end

end

