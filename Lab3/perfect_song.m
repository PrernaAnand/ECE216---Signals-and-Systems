perfect = {'Em', 1 ;
            'C', 1;
            'G', 1;
            'D', 1;
            'Em', 1;
            'C', 1;
            'G', 1;
            'D', 1;
            'Em',1 ;
            'C', 1;
            'G', 1;
            'D', 1;
            'Em',1;
            'C', 1;
            'G', 1;
            'D', 1;
            'D',1};
        perf_song = get_song_wave(perfect, 2, 11025);
        temp = ADSR_env(perf_song, 2, 1, 11025);
        
     % soundsc(temp,11025); 
     soundsc(perf_song, 11025);
     % spectrogram(perf_song, [], [], [], fs);
     spectrogram(perf_song, 2*pi*11025, 0);