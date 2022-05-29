function y = NRK4(f,a,b,n,y0)
    h = (b-a)/n;
    t = a:h:b;
    y = zeros(1,length(t));
    y(1)= y0;
    for i=1:(length(t)-1)                            
        k1 = f(t(i),y(i));
        k2 = f(t(i)+0.5*h,y(i)+0.5*h*k1);
        k3 = f((t(i)+0.5*h),(y(i)+0.5*h*k2));
        k4 = f((t(i)+h),(y(i)+k3*h));
        y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4)*h; 
    end
end