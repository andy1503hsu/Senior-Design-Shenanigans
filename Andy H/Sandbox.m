clear
clc
close all
%%
%addpath(genpath('Glenn I Data'))

%% What experiment to look at?
type = "fog";              % "baseline" or "fog"
experimentName = "fog01";   % "baseline01", "baseline02", "fog01", etc.

imagery_data = findImageNames(type, experimentName);

%% Get Things
[imagery_data, image_timings] = getCameraTimings(imagery_data);
image_timings = getSamplingFrequencies(image_timings, experimentName);

%% Display Stuff
printCameraTimingInfo(image_timings, experimentName);
plotCameraTimings(image_timings, experimentName);