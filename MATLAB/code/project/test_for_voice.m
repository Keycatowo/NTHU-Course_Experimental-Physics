% fs=44100;
  fs=1000;
    t=0: 1/fs: 0.5;
    do=sin(2*pi*261.63 *t); 
    re=sin(2*pi*293.66 *t); 
    mi=sin(2*pi*329.63 *t); 
    fa=sin(2*pi*349.23 *t); 
    so=sin(2*pi*392.00 *t); 
    la=sin(2*pi*440.00 *t); 
    ti=sin(2*pi*493.88 *t); 
    Cscale=[do,re,mi,fa,so,la,ti];
    sound(Cscale,fs)