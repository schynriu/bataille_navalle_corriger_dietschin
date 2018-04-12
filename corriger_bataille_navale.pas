program corriger_bataille_navale ;

CONST
nb_bateau=2;  // nombre de bateau admissible dans une flotte 
max_case=5; // nb de case max pour les bateau 
MIN_L=1;
MAX_L=50;
MIN_C=1;
MAX_C=50;


//question1
type cellule =RECORD
		ligne : INTEGER ;
		colonne :INTEGER ;
		diagonal: INTEGER;
END;

//question2
type bateau = RECORD
	nCase : array [1..max_case] of cellule;
END;

//question 3

type flotte =RECORD
	nBateau: array[1..nb_bateau] of bateau ;
END;
//question 4

type bool =(vrai, faux);

	type position_bateau =(ligne,colonne,diagonal) ;
	type etat_bateau=(toucher,couler) ;
	type etat_flotte =(flot,assombri) ;
	type etat_joueur =(gagner,perdu) ;

//question5
procedure CreaCase (ligne,colonne : INTEGER; var ncel: cellule);
BEGIN
	ncel.ligne:=ligne ;
	ncel.colonne:=colonne ;
END;

{function CreaCase (ligne,colonne: INTEGER) : cellule
var 
ncel : cellule 
	
DEBUT 
ncel. ligne :=ligne 
Ncel.colonne := colonne
creacellule := ncel 
Fin function 
}

function CmpCellule (ncel,tcel:cellule): Boolean;
BEGIN;

	IF ((ncel.ligne=tcel.ligne) AND (ncel.colonne=tcel.colonne)) THEN
		BEGIN
			cmpCellule:= true;
		END
	ELSE  
		BEGIN
			cmpCellule:= false;
		END;
	 
END;
	

function CreaBateau (ncel:cellule; taille : INTEGER) :bateau;
var tmpbateau :bateau;
	position,I:INTEGER;	
	Pbateau:position_Bateau;


BEGIN;

	position:=random(3)+1;
	

	FOR I:=0 to max_case DO
	BEGIN
		//IF I <= taille THEN
		//BEGIN
		//	tmpbateau.ncel[I].ligne := ncel.ligne;
			//tmpbateau.ncel[I].colonne:= ncel.colonne; 
		//END
		//ELSE 
			//BEGIN
				// tmpbateau.ncel[I].ligne:=0;
				// tmpbateau.ncel[I].colonne:=0;
		//	END;
	
		IF (pbateau = ligne) THEN
			Ncel.colonne:=ncel.colonne + 1 
				ELSE if position_bateau = Colonne THEN
						Ncel.ligne := ncel.ligne + 1 
					
						ELSE IF  position_Bateau = Diagonal THEN
						BEGIN
							ncel.ligne :=ncel. ligne + 1;
							ncel.colonne := ncel.colonne +1;
						END;
			
		
	END;

CreaBateau:= tmpbateau;
END;


function verifcellule (nbat:bateau; ncellulle: cellule) : BOOL ;

Var 
i:INTEGER ;
test: BOOLEEN ;

	BEGIN 
		test:=faux;

		FOR i TO max_case DO
		BEGIN 
			IF cmpCellule ( nbat.ncel[i],ncel)=VRAI then 
				TEST:=vrai ;

		END;	
			
	VErifcellule:=test ;
	END;



//8

Function verifFlotte (f:flotte; ncel:cellule) BOOLEAN;
Var 
i:INTEGER;
test:BOOLEAN;

	BEGIN
		test:=faux


		FOR i to nb_bateau DO 
			BEGIN	
				IF verifcellule(f.nBateau[i],ncel)=VRAI THEN 
					BEGIN
					TEST:=vrai
					END;
			verifFlotte:=test
		END:
	END;
 



procedure flotte_joueur (ncel:cellule; var f :flotte);
	var i,valposligne,valposcolonne, valtaillebat : INTEGER;

	BEGIN
		FOR i to nb_bateau DO; 
			BEGIN 
				valposligne:=random(MAX_L);
				valposcolonne:=random(MAX_C);
				valtaillebat:=random(max_case);
				creacellule (valposligne,valposcolonne,ncel);
				F.nbateau[i]:=creabateau (ncell,valtaillebat);
			END;
		END;
	END;
END;



//programme principale 

VAR ;

BEGIN
		randommize; 
				

				CreaCase (ligne,colonne: INTEGER; ncel: cellule );

				CmpCellule (ncel,tcel:cellule);

				CreaBateau (ncel : cellule ; taille : INTEGER) :bateau;

				while ((etat_joueur) >< (gagner OR perdu) DO ;
					BEGIN
						verifcellule (nbat:bateau; ncellulle: cellule);

						verifFlotte (f:flotte; ncel:cellule);

						flotte_joueur (ncel:cellule; f :flotte);
					END;
END.