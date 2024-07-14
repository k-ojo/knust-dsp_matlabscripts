function [xx, tt] = mychirp(f1, f2, dur, fsamp)
    tt = 0:1/fsamp:dur;
    mu = (f2-f1)/(dur*2);
    %% assuming phi is 100 and amplitude of 1
    psi = 2*pi*(mu*tt.*tt + f1*tt + 100);
    xx = real( 1*exp(j*psi) );
    
end
    