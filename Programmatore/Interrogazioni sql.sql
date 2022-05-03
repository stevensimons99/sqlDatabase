/*
Programmatore(codice, nome, categoria)
Programma(id, anno, linguaggio)
Autore(codice, id)

Osservazioni:
- La categoria di un programmatore è un numero intero da 1 a
10 che rappresenta in voto all’esperienza e all’abilità del
programmatore
- L’anno del programma dice in quale anno è stato scritto
- La relazione Autore ci dice quale programmatore ha scritto
quale programma.
*/

/*esercizio 1 Calcolare il codice dei programmatori che sono stati autori di
almeno un programma scritto in Java dopo il 2000.
*/
select distinct programmatore.codice
from programmatore join autore on programmatore.codice=autore.codice
    join programma on autore.id=programma.id 
where programma.anno>=2000

/*esercizio 2 Calcolare il nome e la categoria dei programmatori
che sono stati autori di almeno un programma scritto
in un linguaggio diverso da Python, ordinando il
risultato rispetto al nome dei programmatori.
*/
select programmatore.nome, programmatore.categoria
from programmatore join autore on programmatore.codice=autore.codice
    join programma on autore.id=programma.id 
where programma.linguaggio!="python"
order by programmatore.nome

/*esercizio 3 Per ogni programmatore di categoria 10, calcolare il suo
codice e l'anno in cui ha scritto il primo programma in un
linguaggio diverso da Java.
*/
select programmatore.codice,programma.anno 
from programmatore join autore on programmatore.codice=autore.codice
    join programma on autore.id=programma.id
where programmatore.categoria=10 and programma.linguaggio!="Java"    

/*esercizio 4 Calcolare le coppie dei codici di programmatori che sono stati
coautori di almeno un programma scritto in Python.
*/
select distinct p1.codice,p2.codice
from autore p1 join autore p2 on p1.id=p2.id
    join programma on p1.id=programma.id
where programma.linguaggio="python" and p1.codice!=p2.codice
/*esercizio 5 Calcolare il codice ed il nome dei programmatori che hanno
scritto solo programmi Java.*/

select programmatore.codice,programmatore.nome
from programmatore join autore on programmatore.codice=autore.codice
    join programma on autore.id=programma.id 
where programma.linguaggio="Java"

/*esercizio 6 Per ogni programmatore e per ogni anno calcolare il
numero di programmi scritti da quel programmatore
in quell’anno, mostrando codice del programmatore,
anno e numero di programmi scritti.*/
select programmatore.codice,programma.anno,count(programma.id)
from programmatore join autore on programmatore.codice=autore.codice
    join programma on autore.id=programma.id 
group by programma.anno    
/*esercizio 7 Per ogni linguaggio calcolare quanti sono in media gli
autori dei programmi scritti in quel linguaggio.*/
select programma.linguaggio,count(autore.codice)
from autore join programma on autore.id=programma.id
group by programma.linguaggio