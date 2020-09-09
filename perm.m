function [outputArg1] = perm(inputArg1,inputArg2)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
outputArg1=exclam(inputArg1)/(exclam(inputArg1-inputArg2)*exclam(inputArg2));
end

