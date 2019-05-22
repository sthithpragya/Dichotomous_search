function contour_plot(x_begin,x_end,no_of_points,x_list)

% no_of_points = 1000;
pts = -1 + rand ([no_of_points,2])*4;
func = [];

for i = 1:no_of_points
    func = [func; f_2D(pts(i,:))];
end

x = double(pts(:,1)) ;
y = double(pts(:,2)) ;
z = double(func) ;
xl = linspace(x_begin(1),x_end(1),no_of_points);
yl = linspace(x_begin(2),x_end(2),no_of_points);
% xl = linspace(-1,3,no_of_points) ; 
% yl = linspace(-1,3,no_of_points) ; 
[X,Y] = meshgrid(xl,yl) ;
%%do inteprolation 
P = [x,y] ; V = z ;
F = scatteredInterpolant(P,V) ;
F.Method = 'natural';
F.ExtrapolationMethod = 'linear' ;  % none if you dont want to extrapolate
% Take points lying insuide the region
pq = [X(:),Y(:)] ; 
vq = F(pq) ;
Z = vq ;
Z = reshape(Z,size(X)) ;
contourf(X, Y, Z)

% Make a scatter3 plot with the z-data, and also use the z-data to color the markers. The fourth input is empty ( [] ) because we want the markers to all be the same size.
hold on
scatter(x_list(:,1),x_list(:,2),'ko');

hold on
plot([x_begin(1),x_end(1)],[x_begin(2),x_end(2)]) 
% Just for good measure
colorbar
text(x_list(end,1)+0.1,x_list(end,2),num2str(x_list(end,1))+","+num2str(x_list(end,2)))

end