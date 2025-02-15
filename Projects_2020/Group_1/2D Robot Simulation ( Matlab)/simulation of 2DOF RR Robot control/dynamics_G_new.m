function [G] = dynamics_G_new(q)
global g
m1=2;
m2=2;
l1 = 5;
l2 = 5;

c1 = cos(q(1));
c2 = cos(q(2));
s1 = sin(q(1));
s2 = sin(q(2));
c12 = cos(q(1)+q(2));

g1 = g*m2*((l2*c12)/2 + l1*c1) + (g*l1*m1*c1)/2 ; 
g2 = g*l2*m2*c12/2 ; 

G= [g1 g2]';

end

