classdef Pixel
    % a simple pixel object
    
    properties
        distance;%distancetranform value
        value;%value of pixel,1 or 0
        x;%row
        y;%col
    end
    
    methods
        function obj = Pixel(val,m,n,d)
        %constructor
            obj.value = val;
            obj.x = m;
            obj.y = n;
            obj.distance = d;
        end
    end
end

