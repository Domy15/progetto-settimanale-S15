CREATE TABLE Anagrafica(
IdAnagrafica UNIQUEIDENTIFIER NOT NULL PRIMARY KEY,
Cognome NVARCHAR(20) NOT NULL,
Nome NVARCHAR(20) NOT NULL,
Indirizzo NVARCHAR(30) NOT NULL,
Citta NVARCHAR(20) NOT NULL,
CAP NVARCHAR(5) NOT NULL,
CodiceFiscale NVARCHAR(16) NOT NULL
)

CREATE TABLE Violazione(
IdViolazione INT IDENTITY NOT NULL PRIMARY KEY,
Descrizione NVARCHAR(MAX) NOT NULL
)

CREATE TABLE Verbale(
IdVerbale INT NOT NULL,
DataViolazione DATETIME NOT NULL,
IndirizzoViolazione NVARCHAR(30) NOT NULL,
NominativoAgente NVARCHAR(30) NOT NULL,
DataTrascrizioneVerbale DATETIME NOT NULL,
Importo MONEY NOT NULL,
DecurtamentoPunti INT,
IdViolazione INT NOT NULL,
IdAnagrafica UNIQUEIDENTIFIER NOT NULL,
CONSTRAINT FK_Violazione_Verbale FOREIGN KEY (IdViolazione) REFERENCES Violazione(IdViolazione),
CONSTRAINT FK_Anagrafica_Verbale FOREIGN KEY (IdAnagrafica) REFERENCES Anagrafica(IdAnagrafica),
CONSTRAINT PK_Verbale PRIMARY KEY (IdAnagrafica, IdVerbale, IdViolazione)
)

INSERT INTO Anagrafica (IdAnagrafica, Cognome, Nome, Indirizzo, Citta, CAP, CodiceFiscale)
VALUES
(NEWID(), 'Rossi', 'Marco', 'Via Roma 12', 'Roma', '00100', 'RSSMRC80A01H501Z'),
(NEWID(), 'Bianchi', 'Lucia', 'Viale Italia 5', 'Torino', '10121', 'BNCLCU80A01F205Z'),
(NEWID(), 'Verdi', 'Paolo', 'Piazza del Popolo 3', 'Varese', '21000', 'VRDPLN70C05F205X'),
(NEWID(), 'Gialli', 'Simona', 'Corso Italia 28', 'Brescia', '25100', 'GLLSMN74D60H501L'),
(NEWID(), 'Neri', 'Francesco', 'Strada Statale 1', 'Palermo', '90100', 'NRIFNC85B20F205G'),
(NEWID(), 'Marini', 'Giulia', 'Via Bologna 14', 'Ancona', '60100', 'MRNGLL85F40H501R'),
(NEWID(), 'Costa', 'Luca', 'Via Napoli 19', 'Trieste', '34100', 'CSTLCA77L23F205T'),
(NEWID(), 'Ferrari', 'Alessandro', 'Via Milano 45', 'Milano', '20100', 'FRRLSS83D04F205Y'),
(NEWID(), 'Russo', 'Sara', 'Viale Venezia 22', 'Napoli', '80100', 'RSSRRA86B20F205W'),
(NEWID(), 'Esposito', 'Giovanni', 'Piazza San Marco 1', 'Pisa', '56100', 'SPSGNN72P01F205J'),
(NEWID(), 'Colombo', 'Claudia', 'Via Firenze 32', 'Firenze', '50100', 'CLMCLD78D15F205Z'),
(NEWID(), 'Moretti', 'Stefano', 'Corso Como 18', 'Como', '20200', 'MRTSTF88P12F205X'),
(NEWID(), 'Fontana', 'Marco', 'Via dei Mille 10', 'Palermo', '90110', 'FNTMRC85A13F205X'),
(NEWID(), 'Sartori', 'Simone', 'Viale Roma 20', 'L Aquila', '67100', 'SRTSMN87A01H501N'),
(NEWID(), 'Martini', 'Luigi', 'Via Milano 14', 'Treviso', '31000', 'MRTLGU84B01H501L'),
(NEWID(), 'De Luca', 'Elisa', 'Piazza del Duomo 25', 'Verona', '30100', 'DLCLSA82C15F205P'),
(NEWID(), 'Conti', 'Andrea', 'Via Mazzini 2', 'Napoli', '80110', 'CNTAND78M10F205D'),
(NEWID(), 'Toni', 'Francesca', 'Viale della Repubblica 13', 'Roma', '10100', 'TNNFNC91C12F205K'),
(NEWID(), 'Giordano', 'Paola', 'Strada dei Colli 7', 'Catania', '10010', 'GRDPLS92A18F205L'),
(NEWID(), 'Perri', 'Antonio', 'Viale dei Tigli 14', 'Bologna', '40000', 'PRRNTN75B05F205V'),
(NEWID(), 'Sanna', 'Davide', 'Viale della Libertà 8', 'Palermo', '41000', 'SNNDVS82E01F205L'),
(NEWID(), 'Leone', 'Roberta', 'Piazza della Libertà 3', 'Milano', '20010', 'LNRRBT81A06F205R'),
(NEWID(), 'Vitali', 'Massimo', 'Corso Magenta 5', 'Novara', '21010', 'VTLMSM68B12F205V'),
(NEWID(), 'Ricci', 'Federica', 'Via della Pace 4', 'Verona', '28010', 'RCCFRC87D01F205B'),
(NEWID(), 'Mancini', 'Giovanni', 'Via delle Rose 8', 'Udine', '33000', 'MNCGNN90A05F205F'),
(NEWID(), 'Coppola', 'Valeria', 'Viale Europa 21', 'Ravenna', '48010', 'CPPVLR82F25F205P'),
(NEWID(), 'Lombardi', 'Antonio', 'Corso Vittorio Emanuele 19', 'Taranto', '70000', 'LMBDNT74P12F205J'),
(NEWID(), 'Ricciardi', 'Maria', 'Via Trento 7', 'Catania', '96000', 'RCCDRA81A11F205Z'),
(NEWID(), 'Giovannini', 'Francesco', 'Viale delle Alpi 6', 'Ferrara', '44000', 'GVNFNC72D10F205Y'),
(NEWID(), 'Marchesi', 'Alessandro', 'Strada Comunale 11', 'Padova', '30000', 'MRCSLN69C12F205G'),
(NEWID(), 'Bianchi', 'Marco', 'Corso Vittorio Emanuele 78', 'Palermo', '90121', 'BNCMRC85D12Z404K'),
(NEWID(), 'Pugliese', 'Giuseppe', 'Via Libertà 29', 'Catania', '48000', 'PGLGPP80F15F205S');


INSERT INTO Violazione (Descrizione)
VALUES
('Eccesso di velocità oltre i 50 km/h'),
('Parcheggio in area riservata ai disabili senza permesso'),
('Guida sotto influenza di alcolici'),
('Mancata revisione del veicolo'),
('Violazione del semaforo rosso'),
('Assenza di assicurazione obbligatoria'),
('Guida senza patente'),
('Uso del cellulare durante la guida'),
('Sorpasso in zona vietata'),
('Mancato uso delle cinture di sicurezza'),
('Invasione di corsia'),
('Non rispetto della distanza di sicurezza'),
('Sosta in divieto di sosta'),
('Furto di carburante'),
('Mancato pagamento del pedaggio autostradale'),
('Superamento del limite di velocità in zona scolastica'),
('Guida con veicolo non in regola con la normativa ambientale'),
('Mancata emissione di ticket per parcheggio a pagamento'),
('Ciclismo su strada non consentita'),
('Passaggio con il rosso in una zona pedonale'),
('Uso di documenti falsificati per la revisione del veicolo'),
('Mancata esposizione del contrassegno di circolazione'),
('Abbandono di rifiuti per strada'),
('Violazione delle norme sul carico eccessivo'),
('Fuga dopo un incidente'),
('Mancato rispetto delle normative di trasporto merci pericolose'),
('Conduzione di veicolo privo di revisione periodica'),
('Accesso non autorizzato a zona a traffico limitato'),
('Sosta in fermata di autobus'),
('Guida con pneumatici non omologati');

INSERT INTO Verbale (IdVerbale, DataViolazione, IndirizzoViolazione, NominativoAgente, DataTrascrizioneVerbale, Importo, DecurtamentoPunti, IdViolazione, IdAnagrafica)
VALUES
(1, '2025-20-02 10:15:00', 'Via Roma 12', 'Giovanni Esposito', '2025-20-02 11:00:00', 100.00, 2, 1, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Marco' AND Cognome='Rossi')),
(1, '2025-20-02 10:15:00', 'Via Roma 12', 'Giovanni Esposito', '2025-20-02 11:00:00', 100.00, 2, 20, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Marco' AND Cognome='Rossi')),
(1, '2025-20-02 10:15:00', 'Via Roma 12', 'Giovanni Esposito', '2025-20-02 11:00:00', 100.00, 2, 17, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Marco' AND Cognome='Rossi')),
(2, '2025-21-02 14:30:00', 'Viale Italia 5', 'Paola Giordano', '2025-21-02 15:00:00', 50.00, 1, 9, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Lucia' AND Cognome='Bianchi')),
(3, '2025-22-02 09:00:00', 'Piazza del Popolo 3', 'Stefano Moretti', '2025-22-02 09:30:00', 150.00, 3, 3, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Paolo' AND Cognome='Verdi')),
(3, '2025-22-02 09:00:00', 'Piazza del Popolo 3', 'Stefano Moretti', '2025-22-02 09:30:00', 150.00, 3, 8, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Paolo' AND Cognome='Verdi')),
(4, '2025-23-02 12:00:00', 'Corso Italia 28', 'Alessandra Ferrari', '2025-23-02 13:00:00', 200.00, 4, 7, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simona' AND Cognome='Gialli')),
(4, '2025-23-02 12:00:00', 'Corso Italia 28', 'Alessandra Ferrari', '2025-23-02 13:00:00', 200.00, 4, 29, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simona' AND Cognome='Gialli')),
(4, '2025-23-02 12:00:00', 'Corso Italia 28', 'Alessandra Ferrari', '2025-23-02 13:00:00', 200.00, 4, 25, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simona' AND Cognome='Gialli')),
(4, '2025-23-02 12:00:00', 'Corso Italia 28', 'Alessandra Ferrari', '2025-23-02 13:00:00', 200.00, 4, 19, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simona' AND Cognome='Gialli')),
(4, '2025-23-02 12:00:00', 'Corso Italia 28', 'Alessandra Ferrari', '2025-23-02 13:00:00', 200.00, 4, 10, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simona' AND Cognome='Gialli')),
(5, '2025-24-02 17:15:00', 'Strada Statale 1', 'Francesco Ricci', '2025-24-02 18:00:00', 250.00, 6, 5, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Francesco' AND Cognome='Neri')),
(6, '2025-25-02 07:45:00', 'Via Bologna 14', 'Antonio Sartori', '2025-25-02 08:15:00', 120.00, 2, 7, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Giulia' AND Cognome='Marini')),
(6, '2025-25-02 07:45:00', 'Via Bologna 14', 'Antonio Sartori', '2025-25-02 08:15:00', 120.00, 2, 9, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Giulia' AND Cognome='Marini')),
(7, '2025-26-02 10:00:00', 'Via Napoli 19', 'Roberto Russo', '2025-26-02 10:30:00', 300.00, 5, 15, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Luca' AND Cognome='Costa')),
(7, '2025-26-02 10:00:00', 'Via Napoli 19', 'Roberto Russo', '2025-26-02 10:30:00', 300.00, 5, 23, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Luca' AND Cognome='Costa')),
(7, '2025-26-02 10:00:00', 'Via Napoli 19', 'Roberto Russo', '2025-26-02 10:30:00', 300.00, 5, 11, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Luca' AND Cognome='Costa')),
(8, '2025-27-02 08:30:00', 'Via Milano 45', 'Marta Giordano', '2025-27-02 09:00:00', 180.00, 3, 8, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Alessandro' AND Cognome='Ferrari')),
(8, '2025-27-02 08:30:00', 'Via Milano 45', 'Marta Giordano', '2025-27-02 09:00:00', 180.00, 3, 16, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Alessandro' AND Cognome='Ferrari')),
(9, '2025-28-02 13:00:00', 'Viale Venezia 22', 'Marco Esposito', '2025-28-02 13:30:00', 400.00, 8, 7, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Sara' AND Cognome='Russo')),
(9, '2025-28-02 13:00:00', 'Viale Venezia 22', 'Marco Esposito', '2025-28-02 13:30:00', 400.00, 8, 18, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Sara' AND Cognome='Russo')),
(10, '2025-28-02 16:45:00', 'Piazza San Marco 1', 'Giulia Pugliese', '2025-28-02 17:00:00', 220.00, 4, 14, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Giovanni' AND Cognome='Esposito')),
(10, '2025-28-02 16:45:00', 'Piazza San Marco 1', 'Giulia Pugliese', '2025-28-02 17:00:00', 220.00, 4, 28, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Giovanni' AND Cognome='Esposito')),
(11, '2025-26-02 11:00:00', 'Via Firenze 32', 'Luigi Leone', '2025-26-02 11:30:00', 75.00, 1, 16, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Claudia' AND Cognome='Colombo')),
(11, '2025-26-02 11:00:00', 'Via Firenze 32', 'Luigi Leone', '2025-26-02 11:30:00', 75.00, 1, 30, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Claudia' AND Cognome='Colombo')),
(11, '2025-26-02 11:00:00', 'Via Firenze 32', 'Luigi Leone', '2025-26-02 11:30:00', 75.00, 1, 24, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Claudia' AND Cognome='Colombo')),
(12, '2025-27-02 14:00:00', 'Corso Como 18', 'Alessio De Luca', '2025-27-02 14:30:00', 125.00, 2, 12, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Stefano' AND Cognome='Moretti')),
(13, '2025-25-02 15:00:00', 'Via dei Mille 10', 'Federica Sartori', '2025-25-02 15:30:00', 180.00, 3, 13, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Marco' AND Cognome='Fontana')),
(13, '2025-25-02 15:00:00', 'Via dei Mille 10', 'Federica Sartori', '2025-25-02 15:30:00', 180.00, 3, 19, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Marco' AND Cognome='Fontana')),
(14, '2025-24-02 10:30:00', 'Viale Roma 20', 'Francesca Perri', '2025-24-02 11:00:00', 200.00, 4, 14, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simone' AND Cognome='Sartori')),
(14, '2025-24-02 10:30:00', 'Viale Roma 20', 'Francesca Perri', '2025-24-02 11:00:00', 200.00, 4, 21, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simone' AND Cognome='Sartori')),
(14, '2025-24-02 10:30:00', 'Viale Roma 20', 'Francesca Perri', '2025-24-02 11:00:00', 200.00, 4, 27, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Simone' AND Cognome='Sartori')),
(15, '2025-23-02 09:00:00', 'Via Milano 14', 'Elisa Marchesi', '2025-23-02 09:30:00', 100.00, 2, 15, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Luigi' AND Cognome='Martini')),
(16, '2025-22-02 18:15:00', 'Piazza del Duomo 25', 'Simone Toni', '2025-22-02 18:45:00', 250.00, 6, 13, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Elisa' AND Cognome='De Luca')),
(16, '2025-22-02 18:15:00', 'Piazza del Duomo 25', 'Simone Toni', '2025-22-02 18:45:00', 250.00, 6, 19, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Elisa' AND Cognome='De Luca')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 10, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 7, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 3, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 2, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 25, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 13, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 5, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(17, '2025-21-02 13:00:00', 'Via Mazzini 2', 'Marco Giordano', '2025-21-02 13:30:00', 300.00, 8, 9, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Andrea' AND Cognome='Conti')),
(18, '2025-20-02 08:00:00', 'Viale della Repubblica 13', 'Giovanna Ricciardi', '2025-20-02 08:30:00', 150.00, 3, 18, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Francesca' AND Cognome='Toni')),
(19, '2025-19-02 10:15:00', 'Strada dei Colli 7', 'Luca Vitali', '2025-19-02 10:45:00', 120.00, 2, 19, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Paola' AND Cognome='Giordano')),
(20, '2025-18-02 16:30:00', 'Viale dei Tigli 14', 'Luca Coppola', '2025-18-02 17:00:00', 50.00, 1, 20, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Antonio' AND Cognome='Perri')),
(20, '2025-18-02 16:30:00', 'Viale dei Tigli 14', 'Luca Coppola', '2025-18-02 17:00:00', 50.00, 1, 1, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Antonio' AND Cognome='Perri')),
(21, '2025-17-02 09:30:00', 'Viale della Libertà 8', 'Anna Ricci', '2025-17-02 10:00:00', 180.00, 3, 21, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Davide' AND Cognome='Sanna')),
(22, '2025-16-02 14:00:00', 'Piazza della Libertà 3', 'Giorgio Russo', '2025-16-02 14:30:00', 75.00, 1, 22, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Roberta' AND Cognome='Leone')),
(23, '2025-15-02 13:30:00', 'Corso Magenta 5', 'Maria Giovannini', '2025-15-02 14:00:00', 220.00, 4, 23, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Massimo' AND Cognome='Vitali')),
(24, '2025-14-02 16:45:00', 'Via della Pace 4', 'Elena Ricciardi', '2025-14-02 17:15:00', 180.00, 3, 24, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Federica' AND Cognome='Ricci')),
(25, '2025-13-02 11:00:00', 'Via delle Rose 8', 'Fabio Mancini', '2025-13-02 11:30:00', 100.00, 2, 25, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Giovanni' AND Cognome='Mancini')),
(25, '2025-13-02 11:00:00', 'Via delle Rose 8', 'Fabio Mancini', '2025-13-02 11:30:00', 100.00, 2, 29, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Giovanni' AND Cognome='Mancini')),
(25, '2025-13-02 11:00:00', 'Via delle Rose 8', 'Fabio Mancini', '2025-13-02 11:30:00', 100.00, 2, 20, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Giovanni' AND Cognome='Mancini')),
(26, '2025-12-02 09:45:00', 'Viale Europa 21', 'Giovanni Coppola', '2025-12-02 10:15:00', 150.00, 3, 26, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Valeria' AND Cognome='Coppola')),
(27, '2025-11-02 08:00:00', 'Corso Vittorio Emanuele 19', 'Simone Colombo', '2025-11-02 08:30:00', 250.00, 6, 27, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Antonio' AND Cognome='Lombardi')),
(28, '2025-10-02 10:30:00', 'Via Trento 7', 'Lucia Giovannini', '2025-10-02 11:00:00', 180.00, 3, 28, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Maria' AND Cognome='Ricciardi')),
(29, '2025-09-02 15:15:00', 'Viale delle Alpi 6', 'Francesco Marchesi', '2025-09-02 15:45:00', 300.00, 8, 29, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Francesco' AND Cognome='Giovannini')),
(30, '2025-08-02 13:00:00', 'Strada Comunale 11', 'Stefano Pugliese', '2025-08-02 13:30:00', 120.00, 2, 30, (SELECT IdAnagrafica FROM Anagrafica WHERE Nome='Alessandro' AND Cognome='Marchesi'));

SELECT * FROM Anagrafica
SELECT * FROM Violazione
SELECT * FROM Verbale

/*1*/
SELECT COUNT(*) as NumeroDiVerbali FROM Verbale 

/*2*/
SELECT Nome, Cognome, COUNT(IdVerbale) as NumeroViolazioni
FROM Verbale
INNER JOIN
Anagrafica ON
Anagrafica.IdAnagrafica = Verbale.IdAnagrafica
GROUP BY Nome, Cognome;

/*3*/
SELECT Descrizione, COUNT(IdVerbale) as NumeroDiVerbali
FROM Verbale
INNER JOIN
Violazione ON
Verbale.IdViolazione = Violazione.IdViolazione
GROUP BY Descrizione;

/*4*/
SELECT Nome, Cognome, SUM(DecurtamentoPunti)
FROM Verbale
INNER JOIN
Anagrafica ON
Anagrafica.IdAnagrafica = Verbale.IdAnagrafica
GROUP BY Nome, Cognome;

/*5*/
SELECT Cognome, Nome, DataViolazione, Importo, DecurtamentoPunti 
FROM Anagrafica
INNER JOIN
Verbale ON
Anagrafica.IdAnagrafica = Verbale.IdAnagrafica
WHERE Citta = 'Palermo';

/*6*/
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
FROM Anagrafica
INNER JOIN
Verbale ON
Anagrafica.IdAnagrafica = Verbale.IdAnagrafica
WHERE DataViolazione BETWEEN '2025/01/02' AND '2025/04/02';

/*7*/
SELECT Nome, Cognome, SUM(Importo) 
FROM Verbale
INNER JOIN
Anagrafica ON
Anagrafica.IdAnagrafica = Verbale.IdAnagrafica
GROUP BY Nome, Cognome;

/*8*/
SELECT * FROM Anagrafica
WHERE Citta = 'Palermo';

/*9*/
SELECT DataViolazione, Importo, DecurtamentoPunti FROM Verbale
WHERE DataViolazione = '2025-28-02 13:00:00';

/*10*/
SELECT NominativoAgente, COUNT(Verbale.IdVerbale) as NumeroDiVerbali
FROM Verbale
GROUP BY NominativoAgente;

/*11*/
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti 
FROM Anagrafica
INNER JOIN
Verbale ON
Anagrafica.IdAnagrafica = Verbale.IdAnagrafica
WHERE DecurtamentoPunti > 5;

/*12*/
SELECT Cognome, Nome, Indirizzo, DataViolazione, Importo, DecurtamentoPunti
FROM Anagrafica
INNER JOIN
Verbale ON
Anagrafica.IdAnagrafica = Verbale.IdAnagrafica
WHERE Importo > 400.00;

/*13*/
SELECT NominativoAgente, COUNT(IdVerbale) as NumeroVerbali, SUM(Importo) as ImportoTotale
FROM Verbale
GROUP BY NominativoAgente;

/*14*/
SELECT Descrizione, AVG(Importo) as MediaImporti
FROM Verbale
INNER JOIN
Violazione ON
Verbale.IdViolazione = Violazione.IdViolazione
GROUP BY Descrizione;
