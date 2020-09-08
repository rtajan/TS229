%% bit2registre
% bit2registre est une fonciton qui prend un paquet lu sur le canal et en
% extrait les informations.
%
% La syntaxte est la suivante : registre = decodeADSB(bitPacketCRC)
%
% bitPacketCRC est le message re�u (sans le pr�ambule), c'est un message
% binaire de 112 bits
%
% la sortie est un registre contenant ...

function registre = bit2registre(bitPacketCRC,refLon,refLat)

registre = bit2registre_(bitPacketCRC,refLon,refLat);