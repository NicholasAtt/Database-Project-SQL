SELECT CLIENTE.CF,NOME,COGNOME,NUMFATTURA,IMPORTO
FROM CLIENTE,FATTURA
WHERE FATTURA.DATA='2021-03-19' AND CLIENTE.NOME='NICHOLAS' AND CLIENTE.COGNOME='ATTARDO';