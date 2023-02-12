function  Print_All_Basic_Outputs(Input_Path,Out_Path)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    for i = 1 : 1 : 30
        for j = 1 : 1 : 10
            if (Verify_Trial(i,j) == 1)
               Header_Mat_Path = strcat(Out_Path ,"\Headers\Header_",num2str(i),'_',num2str(j),".csv");
               [Dyn_R , Dyn_L] = Get_Dynamics(i,j,table2array(readtable(Header_Mat_Path)),Input_Path);
               csvwrite(strcat(Out_Path ,"\Outputs\Dyn_R\Dyn_R_",num2str(i),'_',num2str(j),".csv") , Dyn_R);
               csvwrite(strcat(Out_Path ,"\Outputs\Dyn_L\Dyn_L_",num2str(i),'_',num2str(j),".csv") , Dyn_L);
               [GRF_R , GRF_L] = Get_GRF(i,j,table2array(readtable(Header_Mat_Path)),Input_Path);
               csvwrite(strcat(Out_Path ,"\Outputs\GRF_R\GRF_R_",num2str(i),'_',num2str(j),".csv") , GRF_R);
               csvwrite(strcat(Out_Path ,"\Outputs\GRF_L\GRF_L_",num2str(i),'_',num2str(j),".csv") , GRF_L);               
            end 
        end
    end
end

