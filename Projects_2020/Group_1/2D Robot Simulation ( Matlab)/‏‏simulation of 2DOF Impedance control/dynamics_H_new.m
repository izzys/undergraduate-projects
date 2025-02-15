function [H] = dynamics_H_new(q)

global l1 l2 m1 m2

c1 = cos(q(1));
c2 = cos(q(2));
s1 = sin(q(1));
s2 = sin(q(2));

h11 = (l1^2*m1)/4 + l1^2 *m2 + (l2^2*m2)/4 + l1*l2*m2*c2  ;
h12 = (l2*m2*(l2/2 + l1*c2))/2 ;
h21 = h12 ;
h22 = (l2^2*m2)/4 ;

H = [h11, h12;
     h21, h22 ];

% h11 = (l1^2*m1)/4 + m2*(l2/2 + l1*c2)^2 + l1^2 *m2* s2^2 ;
% h12 = (l2*m2*(l2/2 + l1*c2))/2 ;
% h21 = (l2*m2*(l2/2 + l1*c2))/2 ;
% h22 = (l2^2*m2)/4 ;
 
end
