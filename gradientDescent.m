function [theta,error] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y);
error = zeros(num_iters,1); 
error(1) = cost(X, y, theta);
for i = 1:num_iters
    
    theta = theta - alpha * (1/m) * ((X*theta - y)'*X)';
    error(i) = cost(X, y, theta); 
    if error(i) <= exp(-2)
        break;
    end

 
end

