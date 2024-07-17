colormap(gray(256));
load zone.mat;

xpix = ones(256, 1)*cos(2*pi*(0:255)/16);
show_img(xpix, 0, 1, gray(256));
