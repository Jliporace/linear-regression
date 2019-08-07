function [theta, error] = gradientDescentMulti(X, y, theta, alpha, num_iters)

m = length(y);
error = zeros(num_iters,1);
error(1) = costMulti(X, y, theta);

for i = 1:num_iters
   
    theta = theta - alpha*(1/m) * ((X*theta - y)'*X)';
    error(i) = costMulti(X,y, theta);
    if error <= exp(-2)
        break;
    end 
    
end