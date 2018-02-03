function Optimal_path = path_from_A_star(map)
    Optimal_path = [];
    size_map = size(map,1);

    MAX_X=10;
    MAX_Y=10;
    
    %Define the 2D grid map array.
    %Obstacle=-1, Target = 0, Start=1
    MAP=2*(ones(MAX_X,MAX_Y));
    
    %Initialize MAP with location of the target
    xval=floor(map(size_map, 1));
    yval=floor(map(size_map, 2));
    xTarget=xval;
    yTarget=yval;
    MAP(xval,yval)=0;
    
    %Initialize MAP with location of the obstacle
    for i = 2: size_map-1
        xval=floor(map(i, 1));
        yval=floor(map(i, 2));
        MAP(xval,yval)=-1;
    end 
    
    %Initialize MAP with location of the start point
    xval=floor(map(1, 1));
    yval=floor(map(1, 2));
    xStart=xval;
    yStart=yval;
    MAP(xval,yval)=1;
    
    %start your code
end
