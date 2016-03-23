%Run BikeSim with DataLogger Simulink Model First
rFront=.291; %meters
rRear=.328; %meters

figure(1)
subplot(2,3,1)
plot(Accelerations)
title('Chassis Accelerations')
legend('Roll (x)', 'Pitch (y)', 'Yaw (z)', 'Location','best')
ylabel('Acceleration (rad/s^2)')

subplot(2,3,2)
plot(AngRates)
title('Chassis Roll and Yaw Rates')
legend('Roll (X)', 'Yaw (Z)', 'Location','best')
ylabel('Angular Rates (deg/s)')

% subplot(2,4,3)
% plot(Angles)
% title('Roll and Yaw Angles')
% legend('X', 'Z')

% subplot(2,4,3)
% plot(t,BrakePressure)
% title('Brake Pressures')
% legend('Front', 'Rear', 'Location','best')
% ylabel('Pressure (MPa)')

% subplot(2,4,4)
% plot(ScalingFactors)
% legend('VelScale', 'AccelScale', 'Location','best')
% title('Scaling Factors')

subplot(2,3,3)
plot(Torque)
title('Torques')
legend('Rear Wheel', 'EngOut', 'TC Out')


subplot(2,3,4)
plot(ThrottleOut)
title('ThrottleOut')
ylabel('Throttle %')

subplot(2,3,5)
plot(ScaleIn)
title('ScaleIn')
ylabel('Scale Factor')
legend('Raw','Filtered')

subplot(2,3,6)
plot(WheelLongVel)
title('Wheel Longitudinal Velocities')
legend('Front', 'Rear', 'Location','best')
ylabel('Longitudinal Velocity (km/h)')

% subplot(2,4,3)
% plot(t,LatVel)
% title('Wheel Lateral Velocities')
% legend('Front', 'Rear', 'Location','best')
% ylabel('Lateral Velocity (km/h)')

% subplot(2,4,8)
% plot(t,SlipAng)
% title('Sideslip Angles')
% legend('Front', 'Rear', 'Location', 'best')
% ylabel('Angle (deg)')



% subplot(2,1,1)
% plot(t,LatVel)
% title('Wheel Lateral Velocities')
% legend('Front', 'Rear', 'Location','best')
% ylabel('Lateral Velocity (km/h)')
% subplot(2,1,2)
% plot(t,WheelLongVel)
% title('Wheel Longitudinal Velocities')
% legend('Front', 'Rear', 'Location','best')
% ylabel('Longitudinal Velocity (km/h)')

figure(2)
subplot(2,2,1)
plot(upDownFlag)
title('upDownFlag')
legend('Out', 'In')

subplot(2,2,2)
plot(Steer)
title('Steer Angle')
ylabel('Angle (deg)')

subplot(2,2,3)
plot(UpDownScales)
title('Up Down Scales')
legend('Up', 'Down')

subplot(2,2,4)
plot(WheelSpeedDiff)
title('Wheel Speed Difference')

q=linspace(1, 0.1);
y=linspace(1,100);
z=linspace(1,100);
for a=1:100
    if a<=25
        y(a)=10+2.5*(a-1);
    elseif a<=50
        y(a)=70+2*(a-25);
    elseif a<=75
        y(a)=120+1.5*(a-50);
    else
        y(a)=157.5+1*(a-75);
    end
end
for a=1:100
    if a<=25
        z(a)=5+0.05*(a-1);
    elseif a<=50
        z(a)=6.2+0.1*(a-25);
    elseif a<=75
        z(a)=8.7+0.25*(a-50);
    else
        z(a)=14.95+0.75*(a-75);
    end
end
x=linspace(1,100);
[1.0000,0.9909,0.9818,0.9727,0.9636,0.9545,0.9455,0.9364,0.9273,0.9182,0.9091,0.9000,0.8909,0.8818,0.8727,0.8636,0.8545,0.8455,0.8364,0.8273,0.8182,0.8091,0.8000,0.7909,0.7818,0.7727,0.7636,0.7545,0.7455,0.7364,0.7273,0.7182,0.7091,0.7000,0.6909,0.6818,0.6727, 0.6636,0.6545,0.6455,0.6364,0.6273,0.6182,0.6091,0.6000,0.5909,0.5818,0.5727,0.5636,0.5545,0.5455,0.5364,0.5273,0.5182,0.5091,0.50, 0.4909,0.4818,0.4727,0.4636,0.4545,0.4455,0.4364,0.4273,0.4182,0.4091,0.40,0.3909,0.3818,0.3727,0.3636,0.3545,0.3455,0.3364,0.3273,0.3182,0.3091,0.3000,0.2909,0.2818,0.2727,0.2636,0.2545,0.2455,0.2364,0.2273 ,0.2182,0.2091,0.20,0.1909,0.1818,0.1727,0.1636,0.1545,0.1455,0.1364,0.1273,0.1182,0.1091,0.1000];
[1.00,1.05, 1.10,1.15,1.20,1.25,1.30,1.35,1.40,1.45,1.50,1.55,1.60,1.65,1.70,1.75,1.80,1.85,1.90,1.95,2.00,2.05,2.10,2.15,2.20,2.30,2.40,2.50,2.60,2.70,2.80,2.90,3.00,3.10,3.20,3.30,3.40,3.50,3.60, 3.70,3.80,3.90,4.00,4.10,4.20,4.30,4.40,4.50,4.60,4.70,4.95,5.20,5.45,5.70,5.95,6.20,6.45,6.70,6.95,7.20,7.45,7.70,7.95,8.20,8.45,8.70,8.95,9.20,9.45,9.70,9.95,10.20,10.45,10.70,10.95,11.70,12.45,13.20,13.95,14.70,15.45,16.20,16.95,17.70,18.45,19.20,19.95,20.70,21.45,22.20,22.95,23.70,24.45,25.20,25.95,26.70,27.45,28.20,28.95,29.70];
[5.00,5.05,5.10,5.15,5.20,5.25,5.30,5.35,5.40,5.45,5.50,5.55,5.60,5.65,5.70,5.75,5.80,5.85,5.90,5.95,6.00,6.05,6.10,6.15,6.20,6.30,6.40,6.50,6.60,6.70,6.80,6.90,7.00,7.10,7.20,7.30,7.40,7.50,7.60,7.70,7.80,7.90,8.00,8.10,8.20,8.30,8.40,8.50,8.60,8.70,8.95,9.20,9.45,9.70,9.95,10.20,10.45,10.70,10.95,11.20,11.45,11.70,11.95,12.20,12.45,12.70,12.95,13.20,13.45,13.70,13.95,14.20,14.45,14.70,14.95,15.70,16.45,17.20,17.95,18.70,19.45,20.20,20.95,21.70,22.45,23.20,23.95,24.70,25.45,26.20,26.95,27.70,28.45,29.20,29.95,30.70,31.45,32.20,32.95,33.70];

% plot(q,y)
% title('Wheel Speed Difference vs. Throttle Scale')
% xlabel('Throttle Scale')
% ylabel('Wheel Speed Diff (kmph)')
%plot(q,z)
