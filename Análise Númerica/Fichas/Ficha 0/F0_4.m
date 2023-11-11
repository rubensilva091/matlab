%4

%a)
a = ones(4)*2;

%b)
b = eye(4)*2;

%c)
c = zeros(15);

for i = 1:15
    for j = 1:15
        if i == j
            c(i,j)=4;
        elseif i==j-1
            c(i,j) = -1;
        elseif i==j+1
            c(i,j) = 1;
        end
    end
end