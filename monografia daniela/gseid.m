function [P,dP,Z] = gseid(A,B,P,delta,max1)
%GSEID   Gauss-Seidel iteração para resolver um Sistema Linear.
Z = P';
n = length(B);
Pold = P;
for k=1:max1,
  for r = 1:n,
    Sum1 = B(r) - A(r,[1:r-1,r+1:n])*P([1:r-1,r+1:n]);
    P(r) = Sum1/A(r,r);
  end
  dP = abs(Pold-P);
  err = norm(dP);
  relerr = err/(norm(P)+eps);
  Pold = P;
  Z = [Z;P'];
  if (err<delta)|(relerr<delta), break, end
end