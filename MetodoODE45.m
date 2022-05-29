function y = MetodoODE45(f,a,b,y0)
    [t,y] = ode45(f,[a b],y0);
end