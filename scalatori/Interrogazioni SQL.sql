use scalatori;
/*
Scalatore(cf, annoNascita, nazioneNascita)
Nazione(nome, continente)
Scalata(scalatore, nazione, anno)

Osservazioni:
- Ogni scalatore è descritto mediante il suo codice fiscale (chiave
primaria), anno di nascita e nazione di nascita
- Ogni nazione è descritta mediante il suo nome (chiave primaria)
e dal continente in cui si trova
- Ogni scalata è descritta dallo scalatore che l’ha effettuata, dalla
nazione è stata effettuata e dall’anno in cui è stata effettuata
*/

/*QUERY 6: Calcolare codice fiscale, nazione di nascita, continente di
nascita di ogni scalatore nato in un continente diverso
dall’America, e, solo se egli ha effettuato almeno una scalata,
affiancare queste informazioni alle nazioni in cui ha effettuato
scalate.*/
select scalatore.cf,scalatore.nazioneNascita,nazione.continente
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
where nazione.continente<>"America"
    


/*QUERY 5 : Per ogni continente, calcolare il numero di scalate effettuate
da scalatori nati in una nazione di quel continente.

use scalatori;
select nazione.nome,count(scalata.nazione)
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
where scalatore.nazionenascita=scalata.nazione
group by nazione.nome*/


/*QUERY 4 : Per ogni nazione, calcolare il numero di scalate effettuate da
scalatori nati in quella nazione.*/
use scalatori;
select nazione.nome,count(scalata.nazione)
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
where scalatore.nazionenascita=scalata.nazione
group by nazione.nome
/*QUERY 3 : Calcolare le nazioni (mostrando, per ciascuna, anche il
continente) nelle quali è stata effettuata almeno una scalata
da uno scalatore minorenne.*/
select nazione.nome,nazione.continente
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
where scalatore.annonascita>2004


/*QUERY 2 : Per ogni scalatore nato prima del 1980, calcolare
tutti i continenti in cui ha effettuato una scalata,
ordinando il risultato per codice fiscale e, a parità di
codice fiscale, per il nome del continente.*/
select scalatore.cf,nazione.continente
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
where scalatore.annoNascita
group by scalatore.cf
order by scalatore.cf,nazione.continente

/*QUERY 1 : Calcolare l'insieme (non il multi-insieme) delle coppie (A,B)
tali che A è uno scalatore e B è un continente in cui A ha
effettuato una scalata.*/

select distinct scalatore.cf as A, nazione.continente as B
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
order by scalatore.cf,nazione.continente