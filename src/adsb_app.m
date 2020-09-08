%% ADSB Application
%% Initialisation
clc
clear
close all

addpath('Client', 'General', 'MAC', 'PHY');
%% Constants definition
DISPLAY_MASK = '| %12.12s | %10.10s | %6.6s | %3.3s | %6.6s | %3.3s | %8.8s | %11.11s | %4.4s | %12.12s | %12.12s | %3.3s |\n'; % Format pour l'affichage
CHAR_LINE = '+--------------+------------+--------+-----+--------+-----+----------+-------------+------+--------------+--------------+-----+\n'; % Lignes

SERVER_ADDRESS = 'rpprojets.enseirb-matmeca.fr';

% Coordonnees de reference (endroit de l'antenne)
REF_LON = -0.606629; % Longitude de l'ENSEIRB-Matmeca
REF_LAT = 44.806884; % Latitude de l'ENSEIRB-Matmeca

affiche_carte(REF_LON, REF_LAT);

%% Couche Physique
Fe = 4e6; % Frequence d'echantillonnage (imposee par le serveur)
Rb = 1e6;% Debit binaire (=debit symbole)
Fse = floor(Fe/Rb); % Nombre d'echantillons par symboles
seuil_detection = 0.75; % Seuil pour la detection des trames (entre 0 et 1)

%% Affichage d'une entete en console
fprintf(CHAR_LINE)
fprintf(DISPLAY_MASK,'     n      ',' t (in s) ','Corr.', 'DF', '  AA  ','FTC','   CS   ','ALT (in ft)','CPRF','LON (in deg)','LAT (in deg)','CRC')
fprintf(CHAR_LINE)

%% Boucle principale
listOfPlanes = [];
n = 1;
while true
    cprintf('blue',CHAR_LINE)
    cplxBuffer = get_buffer(SERVER_ADDRESS);
        
    [liste_new_registre, liste_corrVal] = process_buffer(cplxBuffer, REF_LON, REF_LAT, seuil_detection, Fse);
    % liste_corrVal représente les valeurs de corrélations au format vecteur pour affichage dans la console
    % liste_new_registre représente l'ensemble des registres détectés dans cplxBuffer au format cell  
    listOfPlanes = update_liste_avion(listOfPlanes, liste_new_registre, DISPLAY_MASK, Fe, n, liste_corrVal); 
    
     for plane_ = listOfPlanes
        plot(plane_);
     end
end   
