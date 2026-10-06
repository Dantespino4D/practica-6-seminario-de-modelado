function dxdt = sistema(t, x, L, R, C, Uin, f, D)

dxdt = zeros(2, 1);

T = 1 / f;
if mod(t, T) < (D * T)
    d_t = 1;
else
    d_t = 0;
end



dxdt(1) = -(1/L) * x(2) + (Uin/L) * d_t;
dxdt(2) = (1/C) * x(1) - (1/(R*C)) * x(2);

end
