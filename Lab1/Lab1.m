%%
% T = 1;
% Fs = 48000;
% N = T*Fs;
% t = 0 : 1/Fs : T;
% Fn = 1000;
% y = sin(Fn*2*pi*t);
% plot(t,y);
% % axis([0 48/48000 -1 1])
% 
% axis([0 144/48000 -1 1])

%%
T = 1;
Fs = 48000;
N = T*Fs;
t = 0 : 1/Fs : T;
Fn = 10000; %500 2000 10000
y = sin(Fn*2*pi*t); %2
sound(y,Fs);
z = 20*log10(y) - 20*log10(2*y);

%%
% [bass, fs] = audioread('bass.wav');
% guitar = audioread('guitar.wav');
% drums = audioread('drums.wav');
% guitar_duration = length(guitar);
% sec = guitar_duration/fs;
% 
% duration = 5;
% b = bass(1:fs*duration);
% g = guitar(1:fs*duration);
% d = drums(1:fs*duration);
% 
% sound(g, fs);
% sound(b, fs);
% sound(d, fs);
% 
% % comp = b + g + d;
% % sound(comp, fs);
% 
% x = linspace(1, 2, fs*duration);
% ramp_comp = b + g.*(x') + d;
% sound(ramp_comp, fs);

% %%
