function x_min = dicotomous_search_1D(x_BEGIN,x_END,epsilon,iter_num)    
    x_begin = x_BEGIN;
    x_end = x_END;

    iter = 1;
    x_list = [x_begin];
    while iter <= iter_num+1 && x_end - x_begin > epsilon
        L = x_end - x_begin;
        x1 = x_begin + L/2 - epsilon/2;
        x2 = x_begin + L/2 + epsilon/2;
        if f_1D(x1) > f_1D(x2)
            x_begin = x1;
            x_list = [x_list;x1];
        else
            x_end = x2;
            x_list = [x_list;x2];
        end
        iter = iter + 1;
    end
    
    x_min = x_list(end);

    % graphs for visualization 
    x_pts = linspace(x_BEGIN,x_END,1000);
    fx_pts = f_1D(x_pts);
    axis square
    plot(x_pts,fx_pts)
    hold on
    plot(x_list,zeros(size(x_list)),'b--o')
    text(x_list(end),1.25,"optimal point is x = "+num2str(x_list(end)))
    hold off

end




