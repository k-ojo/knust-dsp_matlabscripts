colormap(gray(256));
load zone.mat;

%% since 400/80 = 5 
xpix = ones(400, 1)*cos(2*pi*(0:399)/80);
%%use transpose to find the horizontal
show_img(xpix.', 0 ,1, gray(256));
%%myprint('Name', 'title', 'hight', 'length', '3');