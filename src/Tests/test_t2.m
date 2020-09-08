clear 
close all
clc

addpath('../PHY');

%% 
Fe = 20e6; % Frequence d'echantillonnage (imposee par le serveur)
Rb = 1e6;% Debit binaire (=debit symbole)
Fse = floor(Fe/Rb); % Nombre d'echantillons par symboles
Nfft = 1024;
Nb = 1e4; % Nombre de bits générés

%% Chaîne TX
b = randi([0,1],1,Nb);
sl = modulatePPM(b,Fse);

%% Resultats
[X, f] = Mon_Welch(sl, Nfft, Fe);

figure,
semilogy(f,X)