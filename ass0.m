clear all
clc
close all
%load all data
load('data1.mat');
load('data2.mat');
load('data3.mat');
%%
%data1 contains EMG
samples=1:length(data1);
%sampling frequency
f1=2000;
%period of sampling
p1=1/f1;
%time axis computed to plot data
time1=samples.*p1;

figure,
plot(time1,10^(-3)*data1)
title('EMG')
xlabel('time(s)')
ylabel('amplitude (mV)')
%zero mean data
%since the sampling frequency is 2000Hz the frequency content of the signal
%is at least 1000Hz
%%
%data2 contains motion data
hold off
figure,
plot(data2(1,:),data2(2,:))
title('motion data')
xlabel('Displacement(mm)')
ylabel('Displacement(mm)')

%signal is arranged in a matrix, with two values for each sample suggesting
%a planar position
%from the graph it is evident thatit represents a planar motion
%frequency sample is 166Hz and is enough to sample the signal because
%motion signal has a frequency content in between 0-20Hz
%%
%data3 contains EEG
samples3=1:length(data3);
%sampling frequency
f3=250;
%period of sampling 
p3=1/f3;
%compute time axis
time3=samples3.*p3;
figure,
plot(time3,data3)
title('EEG')
xlabel('time(s)')
ylabel('amplitude(uV)')
%non null mean value
%negative are values are consistent with EEG signals
%since the sampling frequency is 250 Hz the frequency content is at least
%125Hz
%It is visible from the graphs that EEG has frequency lower than EMG
