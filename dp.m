%pendulum parameters and gravity constant
l1=5; l2=3 ; m1=5 ; m2=7; g=9.8;
%initial conditions for odes
tspan=50;
theta1=1.6;
theta1_prime=0;
theta2=2.2;
theta2_prime=0;
y0=[theta1 theta1_prime theta2 theta2_prime];
[t,y]=ode45(@pend, [0 ,tspan],[ 2.5 0 1 0]);

%positions
x1=l1*sin(y(:,1));
y1=-l1*cos(y(:,1));
x2=l1*sin(y(:,1))+l2*sin(y(:,3));
y2=-l1*cos(y(:,1))-l2*cos(y(:,3));


%plotting
   figure(1)
   plot(x1,y1,'linewidth',2)
   hold on
   plot(x2,y2,'r','linewidth',2)
   