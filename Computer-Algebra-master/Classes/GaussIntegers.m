classdef GaussIntegers 
    properties (Constant)
        zero = 0;
        one = 1;
    end
    methods (Static)
        function r = add(obj,z,w) 
            r = z+w; 
        end
        function r = minus(obj,z,w) 
            r = z-w; 
        end
        function r = prod(obj,z,w) 
            r = z*w; 
        end
        function r = quo(obj,z,w) 
            r = round(z/w); 
        end
        function r = rem(obj,z,w) 
            aux = z/w;
            q = round(aux);
            r = z - q*w;
        end
        function r = np(obj,z)
            if real(z) <= 0 && imag(z) > 0
               r = z*(-i);
            elseif real(z) < 0 && imag(z) <= 0
                r = z*(-1);
            elseif real(z) >= 0 && imag(z) < 0 
                r = z*i;
            end  
        end
    end
end