function Print_All_Headers(Input_Path,Out_Path)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    for i = 1 : 1 : 30
        for j = 1 : 1 : 10
            if (Verify_Trial(i,j) == 1)
               csvwrite(strcat(Out_Path ,"\Headers\Header_",num2str(i),'_',num2str(j),".csv") , Adapt_Header(i,j,Input_Path));
            end
        end

    end
end

