%**************************************************************************
% Compute U from W
% -------------------------------------------------------------------------
%  Input:  u = conservative variables (rho, rho*u, rho*v, rho*E)
% Output:  w =    primitive variables (rho,     u,     v,     p)
% -------------------------------------------------------------------------
%**************************************************************************
function w = u2w(u,gamma)

% Compute primitive variables
w(1,1) = u(1);
w(2,1) = u(2)/u(1);
w(3,1) = u(3)/u(1);
w(4,1) = (gamma-1)*(u(4)-0.5*w(1)*(w(2)*w(2)+w(3)*w(3)));

end
