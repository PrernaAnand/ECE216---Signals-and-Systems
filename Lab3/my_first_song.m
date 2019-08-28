duration = 2;
fs = 11025;
%w = get_wave( 'C', 'm', duration, fs );
%t = get_wave( 'E', 'm', duration, fs );
%q = get_wave( 'G', 'm', duration, fs );
%s = w + t + q;

%s = get_chord_wave('G', duration, fs);
s = get_chord_wave('Am', duration, fs);
soundsc(s);

