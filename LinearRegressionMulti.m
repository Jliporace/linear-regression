%Multivariate Linear Regression

%Load Data 

data = load('ex1data2.txt');
X = data(:,1:2);
y = data(:,3);
m = length(y);

%Choose between Gradient Descent or Normal Equation methods
x = input("Type 1 for Gradient Descent and 2 for Normal Equation solution");

% Gradient Descent
if (x)
    X = featureScaling(X); 
    X = [ones(m,1),X]; %Add ones for the bias term
    theta = zeros(3,1); %Inicialize parameters
    J = costMulti(X, y, theta);
    alpha = 0.01; 
    num_iters = 1500; 
    [theta, error] = gradientDescentMulti(X, y, theta, alpha, num_iters);
    theta
    plot(1:num_iters,error); %Plot cost as a function of the number of iterations

% Normal Equation
else
    theta = normalEquation(X, y); 
    theta
end
