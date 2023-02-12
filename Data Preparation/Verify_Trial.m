function [Verification_Index] = Verify_Trial(AB_Number,Trial_Number)
%Verify_Trial Summary of this function goes here
%   Detailed explanation goes here

Verification_Index = 0;
if Verify_Subject(AB_Number)
    switch AB_Number
        case 6 
            if Trial_Number <= 8
                Verification_Index = 1;
            end
        case 7 
            if Trial_Number <= 9
                Verification_Index = 1;
            end
        otherwise
            if Trial_Number <= 7
                Verification_Index = 1;
            end 
    end
end
end

