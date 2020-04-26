m =10 ; 
n=10;
y = ones(10,1);
num_labels = 10;
I = eye(num_labels);
Y = zeros(m, num_labels);
for i=1:m
  Y(i, :)= I(y(i), :);
end

y
Y
a =zeros(3,2);

m = size(a,1)