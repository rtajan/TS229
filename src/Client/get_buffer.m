function buffer = get_buffer(SERVER_ADDRESS)
% JAVA init
import java.net.*;
import java.io.*;
javaaddpath('./Client/javaDataReader');

%% Constants definition
PORT = 4200;

%% Lancement du server
socket = Socket (SERVER_ADDRESS,PORT);

output_stream = socket.getOutputStream;
d_output_stream = DataOutputStream(output_stream);
d_output_stream.writeBytes(char(sprintf(['GET /\n'])));

input_stream = socket.getInputStream;
data_input_stream = DataInputStream(input_stream);
data_reader = DataReader(data_input_stream);

while ~input_stream.available
end

start = 1;
while input_stream.available
     St = data_reader.readBuffer(8e6);
     start = start + length(St);
end

vec = (typecast(St,'int16'));
buffer = double(vec(1:2:end)) + 1j *  double(vec(2:2:end));
buffer = buffer(:).';


%% arret timer et fermeture des flux
close(socket);
%
%disp (['Fin de connexion: ' datestr(now)] );

