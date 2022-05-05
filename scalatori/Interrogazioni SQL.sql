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

/*QUERY 8: Per ogni nazione N, calcolare il numero medio di
scalate effettuate all’anno in N da scalatori nati in
nazioni diverse da N.*/
use scalatori;
select nazione.nome,count(scalata.anno)/count(scalata.scalatore)
from nazione join scalata on nazione.nome=scalata.nazione
    join scalatore on scalata.scalatore=scalatore.cf
where scalata.nazione!=scalatore.nazionenascita  
group by nazione.nome
/*QUERY 7: Per ogni nazione e per ogni anno, calcolare il numero di
scalate effettuate in quella nazione e in quell’anno, ma solo se
tale numero è maggiore di 1. Nel risultato le nazioni dello
stesso continente devono essere mostrati in tuple contigue, e
le tuple relative allo stesso continente devono essere ordinate
per anno.*/
use scalatori;
select nazione.nome,scalata.anno,count(scalata.nazione),count(scalata.anno)
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
group by nazione.nome, scalata.anno having count(scalata.nazione)>1
order by nazione.continente,scalata.anno
/*QUERY 6: Calcolare codice fiscale, nazione di nascita, continente di
nascita di ogni scalatore nato in un continente diverso
dall’America, e, solo se egli ha effettuato almeno una scalata,
affiancare queste informazioni alle nazioni in cui ha effettuato
scalate.*/
use scalatori;
select scalatore.cf,scalatore.nazioneNascita,nazione.continente,scalata.nazione
from scalatore join scalata on scalatore.cf=scalata.scalatore 
   left join nazione on nazione.nome=scalata.nazione
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
use scalatori;
select nazione.nome,nazione.continente
from scalatore join scalata on scalatore.cf=scalata.scalatore 
    join nazione on nazione.nome=scalata.nazione
where (scalata.anno-scalatore.annonascita<18


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