function  Print_All_Basic_Inputs(Input_Path,Out_Path)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    for i = 1 : 1 : 30
        for j = 1 : 1 : 10
            if (Verify_Trial(i,j) == 1)
               Header_Mat_Path = strcat(Out_Path ,"\Headers\Header_",num2str(i),'_',num2str(j),".csv"); 
               csvwrite(strcat(Out_Path ,"\Basic Inputs\Basic_Input_",num2str(i),'_',num2str(j),".csv") , Get_IMU(i,j,table2array(readtable(Header_Mat_Path)),Input_Path));
            end 
        end
    end
end

