
n = int32(nin);

% generate command
% byte1 - adress
byte(1:4) = uint8([1,4,1,0]);
byte(5)= uint8(bitand(bitshift(n,-24),255) );
byte(6)= uint8(bitand(bitshift(n,-16),255) );
byte(7)= uint8(bitand(bitshift(n,-8),255) );
byte(8)= uint8(bitand(n,255) );
byte(9)=uint8(bitand(sum(byte(1:8)),255) ),

% open com port for data transfer
fid = serial('COM12','BaudRate',9600, 'DataBits', 8, 'Parity', 'none','StopBits', 1, 'FlowControl', 'none');
fopen (fid);

%send command
fwrite(fid,byte);
pause(1);

%get answer
answer = fread(fid, 9, 'uint8')


% close com port connection
fclose(fid);

% when you enter the function " move_right(1, 0.005,0.01)" in your 
% window command, the motor can move.