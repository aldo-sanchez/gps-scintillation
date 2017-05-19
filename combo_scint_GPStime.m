clear all
close all
clc
% load combo_324_full_wrw.mat
% tic
load('scint_325_second')
scint = scint';
 
load('txinfo_325_second')
txinfo = txinfo';
 
k = 0;
 
for i = 1:length(scint)
    disp(num2str(i))
    for j = 1:length(txinfo)
        if scint(i,2) == txinfo(j,2) && scint(i,15) == txinfo(j,8)
            k = k+1;
            combo(k,:) = [scint(i,:) txinfo(j,:)];
        end
    end
end
