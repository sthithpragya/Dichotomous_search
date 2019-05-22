function y = f_2D(x)
    % x is a 2D point: [x1, x2]
    % y = x1(x1-1.5) + x2(x2-1.5)
    y = x.*(x-1.5);
    y = sum(y,2);
end

