function [ T ] = get_times( length, fs )
%get_times gets a vector of times from 0 to length, with frequency fs Hertz

num_samples = floor(fs*length); %divides the total audio length with sampling time (Ts)
T = linspace(0,length,num_samples); %gives the time intervals for the samples

end

