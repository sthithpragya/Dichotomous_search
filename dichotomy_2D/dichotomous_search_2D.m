function [x_min,x_list] = dichotomous_search_2D(x_BEGIN,x_END,epsilon,iter_num)
% Dicotomous search function that searches in 2D the minimum of function f_2D
    
    x_begin = x_BEGIN;
    x_end = x_END;

    x_list = [x_begin];

    L = pdist([x_begin;x_end],'euclidean');
    d = (x_end - x_begin)/L;
    %euclidean distance([x_end,x_begin]);
    iter = 1;
    while iter <= iter_num+1 && pdist([x_end;x_begin],'euclidean') > epsilon
        L = pdist([x_end;x_begin],'euclidean');%euclidean distance([x_end,x_begin]);
        x1 = x_begin + (d)*(L - epsilon)/2;
        x2 = x_begin + (d)*(L + epsilon)/2;
        
        if f_2D(x1) > f_2D(x2)
            x_begin = x1;
            x_list = [x_list;x1];
        else
            x_end = x2;
            x_list = [x_list;x2];
        end
        iter = iter + 1;
        
    end %while function
    x_min = x_list(end);
    
    % Contour plot for visualization 
    contour_plot(x_BEGIN,x_END,1000,x_list);
    
end




