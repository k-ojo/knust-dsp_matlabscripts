%%warn up
colormap(gray(256));
%% since 400/80 = 5 
xpix = ones(400, 1)*cos(2*pi*(0:399)/80);
%%use transpose to find the horizontal
show_img(xpix.', 1 ,1, gray(256));
trusize();


%% 3.1
%%myprint('Name', 'title', 'hight', 'length', '3');
load lighthouse.mat
show_img(ww, 2, 1, gray(256));
title('original');
trusize();

p = 2;
wp = ww(1:p:end,1:p:end);
show_img(wp, 3, 1, gray(256));
title('two times down sampled');
trusize();


