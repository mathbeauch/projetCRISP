%%Initialiser les valeurs du controleur
port = 'COM3'; % Port de la connexion
ad = 1; % Adresse du controleur
fctID = 14; % Fonction pour Set Output
fctTYPE = 0;
motor = 2; % OUTPUT du controleur
value =1;

SendCommand(port, ad, fctID, fctTYPE, motor,value);