% Dicotomous search for a 2D problem 
% x_BEGIN: start point of the search range
% x_END: end point of the search range 
% epsilon: distance between the subsequent search after which the
% iterations stop. 
% iter_num: maximum number of iterations allowed

x_BEGIN = [-1,-1];
x_END = [3,3];
epsilon = 0.0001; 
iter_num = 100;

dichotomous_search_2D(x_BEGIN,x_END,epsilon,iter_num)