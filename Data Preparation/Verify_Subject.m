function [Verification_Index] = Verify_Subject(AB_Number)
%Verify_Subject To verify if the subject is available in the Dataset or not
%   AB_Number is the subject Number
%   Verification_Index is a logical value (1 -> Available & 0 -> Not Found)

Subjects_Mat = [6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,23,24,25,27,28,30];

    if any(ismember(Subjects_Mat, AB_Number)) 
        Verification_Index = 1;
    else
        Verification_Index = 0;
    end
end

