//immagini delle cartoline
var retrouno;
var fronte1;
var retrodue;
var fronte2;
// contenitore delle immagini
var fronte1fronte1;
var fronte2fronte2;
//bottoni retro
var titolouno;
var titolodue;
//bottoni fronte
var atitolouno;
var atitolodue;
//contenitore delle descrizioni
var descrizione2descrizione2;
var descrizionedescrizione;
//descrizioni e testo
var descrizione;
var testo;
var descrizione2;
var testo2;
//aree clickabili
var data; 
var discorso;
var cromoscultura;
var numero;
var produzione;
//aree clickabili seconda cartolina (2) 
var made;
var numero2;
var lettera;
var gelosia;
var proprieta;
var data2; 
//testo corrispondente alle aree clickabili
var uno;
var due;
var tre;
var quattro;
var cinque;
var sei;
var sette;
var otto;
var nove;
var dieci;
var undici;


function gestoreLoad(){
    try{
        //definisco le immagini delle cartoline
        retrouno= document.getElementById("retrouno");
        retrouno.style.display="none";
        fronte1= document.getElementById("fronte1");
        retrodue= document.getElementById("redue");
        retrodue.style.display="none";
        fronte2= document.getElementById("fronte2");
        //definisco il contenitore delle immagini
        fronte1fronte1=document.getElementById("fronte1fronte1");
        fronte2fronte2=document.getElementById("fronte2fronte2");
        //definisco i due bottoni
        titolouno=document.getElementById("titolouno");
        titolouno.onclick=mostraretro1;
        titolodue=document.getElementById("titolodue");
        titolodue.onclick=mostraretro2;
        //contenitore delle descrizioni
        descrizionedescrizione=document.getElementById("descrizionedescrizione");
        descrizione2descrizione2=document.getElementById("descrizione2descrizione2");
        //modifica delle descrizioni con il contenuto della lettera
        descrizione=document.getElementById("descrizione");
        testo=document.getElementById("testo");
        testo.style.display="none";
        descrizione2=document.getElementById("descrizione2");
        testo2=document.getElementById("testo2");
        testo2.style.display="none";
        //definisco i due bottoni
        atitolouno=document.getElementById("atitolouno");
        atitolouno.onclick=mostrafronte1;
        atitolodue=document.getElementById("atitolodue");
        atitolodue.onclick=mostrafronte2;
        //definisco il testo corrispondente alle aree clickabili
        uno=document.getElementById("uno");
        due=document.getElementById("due");
        tre=document.getElementById("tre");
        quattro=document.getElementById("quattro");
        cinque=document.getElementById("cinque");
        sei=document.getElementById("sei");
        sette=document.getElementById("sette");
        otto=document.getElementById("otto");
        nove=document.getElementById("nove");
        dieci=document.getElementById("dieci");
        undici=document.getElementById("undici");
        //definisco le aree clickabili dei retro
        data=document.getElementById("data");
        cromoscultura=document.getElementById("cromoscultura");
        numero=document.getElementById("numero");
        produzione=document.getElementById("produzione");
        discorso=document.getElementById("discorso");
        //2
        made=document.getElementById("made");
        numero2=document.getElementById("numero2");
        lettera=document.getElementById("lettera");
        gelosia=document.getElementById("gelosia");
        proprieta=document.getElementById("proprieta");
        data2=document.getElementById("data2");
        //invoco il gestore per le aree clickabili
        data.onclick=gestoreArea;
        discorso.onclick=gestoreArea;
        cromoscultura.onclick=gestoreArea;
        numero.onclick=gestoreArea;
        produzione.onclick=gestoreArea;
        //2
        proprieta.onclick=gestoreArea;
        gelosia.onclick=gestoreArea;
        lettera.onclick=gestoreArea;
        numero2.onclick=gestoreArea;
        made.onclick=gestoreArea;
        data2.onclick=gestoreArea;

    }
    catch(e) {
    alert("gestoreLoad: "+e);
  }
} 

//gestione del pulsante retro

function mostraretro1() {
           retrouno.style.display="block";
           fronte1fronte1.replaceChild(retrouno,fronte1);
           //modifica delle descrizioni con il contenuto della lettera
           testo.style.display="block";
           descrizionedescrizione.replaceChild(testo, descrizione);   
       }   

function mostraretro2() {
           retrodue.style.display="block";
           fronte2fronte2.replaceChild(retrodue,fronte2);
           //modifica delle descrizioni con il contenuto della lettera
           testo2.style.display="block";
           descrizione2descrizione2.replaceChild(testo2, descrizione2); 
       }   

//gestione del pulsante fronte

function mostrafronte1() {
           fronte1.style.display="block";
           fronte1fronte1.replaceChild(fronte1,retrouno);
           //modifica del contenuto della lettera con le descrizioni
           descrizione.style.display="block";
           descrizionedescrizione.replaceChild(descrizione, testo);  
       }   

function mostrafronte2() {
           fronte2.style.display="block";
           fronte2fronte2.replaceChild(fronte2,retrodue);
           //modifica del contenuto della lettera con le descrizioni
           descrizione2.style.display="block";
           descrizione2descrizione2.replaceChild(descrizione2, testo2);  
            
       }   


function gestoreArea(){
      switch (this.id) {
      case 'cromoscultura':
        uno.style.color="red";
        due.style.color="black";
        tre.style.color="black";
        quattro.style.color="black";
        cinque.style.color="black";
        break;
      case 'data':
        quattro.style.color="red";
        due.style.color="black";
        tre.style.color="black";
        uno.style.color="black";
        cinque.style.color="black";
        break;
      case 'numero':
        due.style.color="red";
        tre.style.color="black";
        uno.style.color="black";
        quattro.style.color="black";
        cinque.style.color="black";
        break;
      case 'discorso':
        cinque.style.color="red";
        due.style.color="black";
        tre.style.color="black";
        uno.style.color="black";
        quattro.style.color="black";
        break;
      case 'produzione':
        tre.style.color="red";
        due.style.color="black";
        cinque.style.color="black";
        quattro.style.color="black";
        uno.style.color="black";
        break;  
      case 'data2':
        otto.style.color="red";
        sei.style.color="black";
        sette.style.color="black";
        nove.style.color="black";
        dieci.style.color="black";
        undici.style.color="black";
        break;  
      case 'numero2':
        sette.style.color="red";
        sei.style.color="black";
        otto.style.color="black";
        nove.style.color="black";
        dieci.style.color="black";
        undici.style.color="black";
        break;  
      case 'lettera':
        nove.style.color="red";
        sei.style.color="black";
        sette.style.color="black";
        otto.style.color="black";
        dieci.style.color="black";
        undici.style.color="black";
        break;  
      case 'made':
        sei.style.color="red";
        otto.style.color="black";
        sette.style.color="black";
        nove.style.color="black";
        dieci.style.color="black";
        undici.style.color="black";
        break;  
      case 'gelosia':
        dieci.style.color="red";
        sei.style.color="black";
        sette.style.color="black";
        nove.style.color="black";
        otto.style.color="black";
        undici.style.color="black";
        break;  
      case 'proprieta':
        undici.style.color="red";
        sei.style.color="black";
        sette.style.color="black";
        nove.style.color="black";
        dieci.style.color="black";
        otto.style.color="black";
        break;  
   }}


 

window.onload=gestoreLoad;