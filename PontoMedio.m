function y = PontoMedio(f,a,b,n,y0)
    h    = (b-a)/n;
    t(1) = a;
    y(1) = y0;
    for i=1:n   
        y(i+1)=y(i)+h*f(t(i)+(h/2),y(i)+(h/2));
        t(i+1)=t(i)+h;
    end
end