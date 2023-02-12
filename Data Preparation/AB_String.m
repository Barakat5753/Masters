function [AB_NUM_STR] = AB_String(AB_Number)
%AB_String Converts the number from number into string and add 0 if needed
%   AB_Number is the subject number
%   AB_NUM_STR is the subject number written in string
	AB_NUM_STR =  num2str(AB_Number);
	if AB_Number <=9
        AB_NUM_STR = strcat("0",AB_NUM_STR) ;
	end
    
end

