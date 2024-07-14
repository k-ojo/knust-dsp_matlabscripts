function [xx, tt] = beat(A, B, fc, delf, fsamp, dur)
    tt = 0:1/fsamp:dur;
    xx = A*cos(2*pi*(fc-delf)*tt) + B*cos(2*pi*(fc+delf)*tt);
end