% Dicotomous search for a 1D problem 
% x_BEGIN: start point of the search range
% x_END: end point of the search range 
% epsilon: distance between the subsequent search after which the
% iterations stop. 
% iter_num: maximum number of iterations allowed

x_BEGIN = -1.5;
x_END = 5;
epsilon = 0.0001; 
iter_num = 20;

dicotomous_search_1D(x_BEGIN,x_END,epsilon,iter_num)
