% Linear Regression 
% This code fits a linear model y = theta1 + theta2*x to a set of data.
% The data file is a mx2 matrix where m stands for the number of examples. 
% The first column is the input (x) and the second column is the output
% (y).

%Load and Plot data
data = load('ex1data1.txt');
X = data(:,1);
y = data(:,2);
m = length(y);
plot(X,y,'rx','Markersize',10); 
xlabel('Input');
ylabel('Output');


%Cost Function

X = [ones(m,1), X]; %Add a column of zeros to fit bias. The X matrix is an 
% mxf+1 matrix where f is the number of features of the data set. 
theta = zeros(2,1); %Inicializing model parameters
J = cost(X, y, theta); 

%Gradient Descent
alpha = 0.01; %Set learning rate alpha
num_iters = 1500; %Set number of interations of gradient descent loop 
[theta, error] = gradientDescent(X, y, theta, alpha, num_iters); 


y2 = X*theta;
hold on;
plot(data(:,1), y2);
theta
cost(X, y, theta)
figure(2); 
plot(1:num_iters, error);
xlabel('Number of iterations');
ylabel('Cost');
