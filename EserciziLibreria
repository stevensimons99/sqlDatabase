// 1 
select romanzo.Titolo,autore.Nome,autore.Cognome,romanzo.AnnoPubblicazione
from romanzo,autore
where romanzo.AnnoPubblicazione=2009 and autore.ID=romanzo.autore
//2 
select romanzo.Titolo,autore.Nome,autore.Cognome,romanzo.AnnoPubblicazione
from romanzo,autore
where romanzo.AnnoPubblicazione>1990 and autore.ID=romanzo.autore
//3
select romanzo.Titolo,autore.Nome,autore.Cognome,romanzo.AnnoPubblicazione
from romanzo,autore
where romanzo.AnnoPubblicazione>=1901  and AnnoPubblicazione<=2000 and autore.ID=romanzo.autore
//4
select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore
//5
select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore
order by autore.Cognome ASC;

select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore
order by autore.Nome ASC;

//6
select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore and (autore.Nazionalità='russo' or autore.Nazionalità='russa')
order by autore.Cognome ASC;
//7
select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore and autore.DataNascita>=1901 and autore.DataNascita<2001
order by autore.Cognome,autore.Nome
//8
select romanzo.Titolo,romanzo.AnnoPubblicazione
from romanzo,autore
where autore.ID=romanzo.autore and autore.DataMorte is null

//9
select romanzo.Titolo
from romanzo,autore
where autore.ID=romanzo.autore and autore.DataMorte is null or !(autore.LuogoMorte='Torino')) 

//10
select romanzo.Titolo,romanzo.AnnoPubblicazione
from romanzo,autore
where autore.ID=romanzo.autore and autore.LuogoNascita='Roma'
//11
select Titolo
from romanzo
where Titolo like 'Tokyo%'
//12
select Titolo
from romanzo
where Titolo like '%Sposi%'
//13
select Titolo
from Romanzo
where Titolo like '%i_'
//14
select Titolo
from Romanzo
where Titolo like '%blues'
//15
select Titolo
from Romanzo
where AnnoPubblicazione>=1901 and AnnoPubblicazione<=2000 and
Titolo like '%Zeno%'
//16
select Titolo
from Romanzo
where AnnoPubblicazione<1900 and (Titolo like '%sposi%' or Titolo like '%Sposi%')
//17
select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore and autore.Nome='Alessandro' and autore.Cognome='Manzoni'
//18
select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore and autore.Nome='Don' and autore.Cognome='DeLillo'
//19
select romanzo.Titolo
from romanzo,Personaggio,PersonaggioRomanzo
where personaggio.ID=Personaggio and romanzo.id=Romanzo and personaggio.Nome='Benjamin' and personaggio.Cognome='Malaussène'
//20
select romanzo.Titolo,autore.Nome,autore.Cognome
from romanzo,autore
where autore.ID=romanzo.autore and autore.Nome is null and autore.Cognome is null
