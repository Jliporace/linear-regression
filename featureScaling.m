function X = featureScaling(X)

X = (X - mean(X))./std(X); 

end