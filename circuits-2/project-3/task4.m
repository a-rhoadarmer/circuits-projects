F1 = [1 5 6]
poly2str(F1,'s')
polyval(F1,1)% value when s=1
roots(F1) %roots of the polynomial 
F2 = poly([0,0,-1,-1+2*j,-1-2*j])
poly2str(F2,'s')
H = conv(F1,F2)
%Define H3 transfer function
n = poly([-1]) %root of (s+1)
d = poly([0,-4]) %root of s(s+4)
s = tf('s');
H3 = tf(n,d)

%Partial Fraction Decomposition
[r,p,k]=residue(n,d)
H3_pf1 = r(1)/(s-p(1)) %pf is partial fraction. part 1
H3_pf2 = r(2)/(s-p(2)) % part2

%Take the inverse Laplace
syms s t      % symbolic math toolbox
snum = poly2sym(n, s)
sden = poly2sym(d, s)            
h3 =  ilaplace(snum/sden)

%Define H4 transfer function
n = [4 1 0 4]% the coefficents 
d = poly([0,0,0,-3,-3,-sqrt(2)*j,sqrt(2)*j]) %root of s(s+4)   
s = tf('s');
H4 = tf(n,d) 

%Partial Fraction Decomposition
[r,p,k]=residue(n,d)
H4_pf1 = (r(1))/(s-p(1)) %pf is partial fraction
H4_pf2 = (r(2))/(s-p(2))^2 

H4_pf3 = (r(3))/(s-p(3))
H4_pf4 = (r(4))/(s-p(4))

H4_pf5 = (r(5))/(s-p(5)) 
H4_pf6 = (r(6))/(s-p(6))^2 
H4_pf7 = (r(7))/(s-p(7))^3 

            
%Find inverse laplace h4
syms s t                                            
snum = poly2sym(n, s);
sden = poly2sym(d, s);       
h4 =  ilaplace(snum/sden)
