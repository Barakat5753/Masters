clear;
clc;
A = [6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,23,24,25,27,28,30];
for w = 1:1:length(A)
    eval(['B_' num2str(A(w)) ' = [A(w), A(w)];']);
end
B_Cell = {};

k = 1;
for i = min(A) : 1 : max(A)
    if ismember(i,A)
        B_Cell{k} = eval(['B_' num2str(i)]);
        k = k + 1;
    end
end

C = cell(1,numel(B_Cell));
D = cell(1,numel(B_Cell));
for i = 1:numel(A)
    % Concatenate all elements of A except the i-th element
    C{i} = vertcat(C{i}, B_Cell{[1:i-1 i+1:end]});
end


