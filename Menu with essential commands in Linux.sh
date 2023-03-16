#!/bin/bash#!/bin/bash

if [[ $EUID = 0 ]];  #conditie accesare script cu drept de root
then
menuprincipal() {
    clear
    echo -ne "

    Introducere in sisteme de operare
    
	
                 Cuprins
    
      1-Introducere
      2-Instalare Linux.Configurari de baza.
      3-Gestiunea pachetelor si utilizatorilor
      4-Sisteme de fisiere
      5-Procese
      6-Pornirea si initializarea sistemului
      7-Analiza hardware a sistemului
      8-Configurari de retea
      9-Servicii de retea
      10-Elemente de securitate
      11-Compilare si linking
      12-Shell scripting
      13-Mediul grafic
      14-Utilitare pentru dezvoltare
      15-Viata in Linux
      0 -Exit 
      
      "
    #--------Menu principal-------#


    #*********Submenu************#
    read -p "Alege o optiune : " optiune_menu
    case $optiune_menu in
    
    1)
      submenu1
      ;;
    2)
	  submenu2
	  ;;
    3)
	  submenu3
	  ;;
    4)
	  submenu4
	  ;;
    5)
	  submenu5
	  ;;
    6)
	  submenu6
	  ;;
    7)
	  submenu7
	  ;;
    8)
	  submenu8
	  ;;
    9)
      submenu9
      ;;
   10)
      submenu10
      ;;
   11)
      submenu11
      ;;
   12)
      submenu12
      ;;
   13)
      submenu13
      ;;
   14)
      submenu14
      ;;
   15)submenu15
      ;;
    0)
        echo -n "Iesire menu"
        exit 0
        ;;
    *)
        echo "Optiune gresita!."
        exit 1
        ;;
    esac
   
}
#--------Submenu capitol 1---------#
submenu1 () {
    clear
    echo -ne "

    Capitol 1    
    1)  Ce este un sistem de operare ?      
    2)  Inapoi   
    0)  Iesire     
------------------------------------------------"
    read -p "
    Alege o optiune : " optiune_submenu
    case $optiune_submenu in
    1)
	echo "
    Un sistem de operare este un set de programe care controleaza
    distributia resurselor unui calculator si mediaza comunicarea dintre 
    hardware, pe de o parte, si aplicatiile utilizatorilor, pe de alta parte.
    "
    sleep 5
    submenu1
	;;
    2)
	clear
        echo "Inapoi la menu."
        sleep .4
        echo -n "<"
        sleep .4
        echo -n "<"
        sleep .4
        echo "<"
        sleep .4
	clear
	menuprincipal
	;;
    0)
        echo -n "
    Iesire menu."
	sleep .4
	echo " 
    La revedere! "
	sleep .3
        exit 0
        ;;
    *)
        echo "Optiune gresita !."
        exit 1
        ;;
    esac

}
#--------Submenu capitol 2---------#
submenu2 () {
    clear
    echo -ne "

    Capitol 2    
    1)  Comanda --help.
    2)  Comanda --whatis
    3)  Comanda --apropos
    4)  Oprirea sistemului de calcul
    5)  Update
    6)  Inapoi  
    0)  Iesire     
------------------------------------------------
             "
    read -p "Alege o optiune : " optiune_submenu
    case $optiune_submenu in
    1)
	echo "
    Transmiterea parametrului --help unei comenzi 
    pentru a afisa un sumar al parametrilor posibili 
    ai acelei comenzi.
    "
    sleep 5
    help
    sleep 5
	submenu2
	;;
    2)
    echo "
Comanda whatis este folosita pentru afisarea scurta descriere despre comenzi
    "
    whatis ls
    sleep 5
    whatis pwd
    sleep 5
    whatis cp
    sleep 5
    whatis poweroff
    sleep 5
    submenu2
    ;;
    3)
    echo "
Comanda apropos afiseaza comenzile care au legatura cu cuvantul transmis ca parametru
"
sleep 4
apropos zip
sleep 6
submenu2
;;
    4)
    echo "
    Pentru a opri statia imediat, se utilizeaza comanda :
    shutdown -h now
    Pentru a repornii statia imediat, se utilizeaza comanda :
    shutdown -r now
    Pentru a oprii statia la ora 20:00 :
    shutdown -r 20:00
    Pentru a oprii statia in 10 minute :
    shutdown -r +10
    "
    echo "Repornire statie :"
    sleep 3
    echo -ne "Confirma repornire statie ? [y/n] "
    read -r ans2
    case $ans2 in
	Y)
		echo "Pregatire repornire statie "
		echo -ne "5"
		sleep 1
		echo -ne " 4"
		sleep 1
		echo -ne " 3"
		sleep 1
		echo -ne " 2"
		sleep 1
		echo " 1"
		sleep 1
		echo "Restart..."
		sleep 1
		shutdown -r now
		;;
    *)
		echo "Repornirea a fost anulata !"
		pause
		submenu2
		;;
	esac
        ;;
     
    5)
    echo " 
    Actualizare lista de pachete :
    apt-get update
    "
    apt-get update
    sleep 5
    echo "
    Actualizeaza pachetele instalate:
    apt-get dist-upgrade"
    apt-get dist-upgrade
    sleep 5
    submenu2
    ;;
    6)
	clear
        echo "Inapoi la menu."
        sleep .4
        echo -n "<"
        sleep .4
        echo -n "<"
        sleep .4
        echo "<"
        sleep .4
	clear
	menuprincipal
	;;
    0)
        echo -n "
    Iesire menu."
	sleep .4
	echo " 
    La revedere! "
	sleep .3
        exit 0
        ;;
    *)
        echo "Optiune gresita !."
        exit 1
        ;;
    esac
}
#---------Submenu capitol 3----------
submenu3() {

clear
echo -ne "
--------------Capitolul 3--------------------------
                                                   
1.Gestiunea utilizatorilor
2.Schimbare parola
3.Adaugarea si stergerea uilizatorilor
4.Adaugarea si stergerea unui grup de utilizatori
5.Modificarea datelor unui utilizator
6.Gestiunea pachetelor
7.Inapoi
0.Iesire
---------------------------------------------------
"

read -p "Alege o optiune : " optiune_submenu
    case $optiune_submenu in
    1)
	echo "
    Informatii despre utilizator:
    "
    sleep 5
    cat /etc/passwd
    echo "
    **************************
    "
    sleep 5
    ls -l /etc/shadow
    echo "
    **************************
    "
    sleep 5
    echo "
    Informatii despre un utilizator al sistemului:
    "
    echo -ne "Adauga un nume utilizator: "
	read n
	clear
	echo "id $n"
	id $n
	echo "
    **************************************************************
    "
	sleep 1
	echo "finger $n"
	finger $n
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu3
	;;
    2)
    echo "
    Resetarea parolei
    "
    echo -ne "Adauga utilizatorul: "
	read n
	sleep .5
	clear
	echo "passwd $n"
	sudo passwd $n
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
    submenu3
    ;;
    3)
    clear
	echo -ne "Adaugare utilizator: Da/Nu: "
	read -r ins
	case $ins in
	Da)
	    clear
	    echo "Introduceti nume utilizator"
	    read n
	    sleep .5
	    clear
	    echo "adduser $n"
	    sudo adduser $n
	    ;;
	Nu)
	    echo "Anulare creare utilizator"
	    sleep 1
	    clear
	    ;;
	esac
    echo -ne "Stergere utilizator : Da/Nu "
	read -r del
	case $del in
	Da)
	    sleep 1
	    echo -ne "Introduceti utilizatorul: "
	    read n
	    sleep .5
	    clear
	    echo "deluser $n"
	    sudo deluser $n
        echo "Utilizatorul $n a fost eliminat cu succes"
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	    submenu3
	    ;;
	Nu)
	    echo "Anulare stergere utilizator "
	    sleep 1
	    submenu3
	    ;;
	esac

    ;;
    4)
	clear
        echo -ne "Adaugati un grup de utilizatori: Da/Nu "
        read -r ins
        case $ins in
        Da)
            echo "Adauga nume grup :"
            read n
            sleep .3
            echo "addgroup $n"
            sudo addgroup $n
            echo "
            Grupul de utilizatori $n a fost adaugat cu succes !"
            sleep .5
            ;;
        Nu)
            echo "Anulare creare grup utilizatori"
            sleep 1
            clear
            submenu3
            ;;
        esac
        echo -ne "Stergere grup utilizatori : Da/Nu "
        read -r del
        case $del in
        Da)
            sleep 1
            echo -ne "Nume grup utilizatori "
            read n
            sleep .5
            echo "delgroup $n"
            sudo delgroup $n
            echo"
            Grupul de utilizatori $n afost eliminat cu succes!"
            read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
            submenu3
            ;;
        Nu)
            echo "Anulare stergere grup utilizatori"
            read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
            submenu3
            ;;
        esac
        ;;
    5)
    echo " Modificarea datelor unui utilizator se face cu ajutorul
    comenzii :usermod "
    sleep 5
    usermod
    sleep 4
    clear
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
    submenu3
    ;;
    6)
    echo "
    Listarea continutului unui pachet
    "
    echo -ne "dpkg -L coreutils 
    Apasa enter! "
    read n 
    echo " $n "
    dpkg -L coreutils
    sleep 4
    clear
    echo "
    Afisarea pachetelor al caror nume se potriveste cu o expresie regulata :
    "
    sleep .5
        echo -ne "Intodu o expresie : "
        read n
        echo "Folosim dpkg -l ,pentru a afisa '$n'"
        sudo dpkg -l '$n'
        sleep 4
    echo "
    Cautarea pachetului ce contine un anumit fisier :
    "
    echo -ne "dpkg -S /bin/ps 
    Apasa enter pentru a vedea exemplu
    "
    read n 
    echo "$n"
    dpkg -S /bin/ps
    sleep 4


    echo "
    Actualizarea listei de procese
    apt-get update
     "
    #case confirmare prin 2 raspunsuri
    echo -ne "Confirma actualizare ? [y/n] "
    read -r ans2
    case $ans2 in
	y)
		echo "Actualizare... "
		echo -ne "5"
		sleep 1
		echo -ne " 4"
		sleep 1
		echo -ne " 3"
		sleep 1
		echo -ne " 2"
		sleep 1
		echo " 1"
		sleep 1
		apt-get update
        sleep 3
        echo "Actualizare terminata!"
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu3
		;;
    *)
		echo "Anulare!"
		pause
		submenu3
		;;
	esac
    #************************************************
    ;;
    7)
	clear
        echo "Inapoi la menu."
        sleep .4
        echo -n "<"
        sleep .4
        echo -n "<"
        sleep .4
        echo "<"
        sleep .4
	clear
	menuprincipal
	;;
    0)
        echo -n "
    Iesire menu."
	sleep .4
	echo " 
    La revedere! "
	sleep .3
        exit 0
        ;;
    *)
        echo "Optiune gresita !."
        exit 1
        ;;

   esac
}
#---------Submenu capitol 4----------
submenu4() {

clear
echo -ne "
--------------Capitolul 4--------------------------
                                                   
  1. Afiseaza directorul curent
  2. Variabila de mediu PATH				 
  3. Tipuri de fisiere			 
  4. Detectia tipului de fisiere			 
  5. Afisarea si schimbarea directorului curent				 
  6. Afisarea continutului fisierelor				 
  7. Listarea continutului unui director.	 
  8. Crearea fisierelor/directoarelor		 
  9. Copiere/mutare/redenumire/stergere	 
 10. Arhivarea fisierelor si dezarhivarea			 
 11. Vizualizare drepturi de acces	 
 12. Cautarea fisierelor				 
 13. Comanda locate			 
 14. Comanda whereis				 
 15. Comanda which				 
 16. Comanda type
 17. Adresarea intr-un sistem de fisiere	 
 18.Inapoi
  0.Iesire
---------------------------------------------------
"
read -p "Alege o optiune : " optiune_submenu
    case $optiune_submenu in
    1)
	clear
        echo "Cu comanda pwd se printeaza directorul curent"
	    pwd
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu4
    
        ;;
    2)
	clear
	echo "Cu comanda PHAT se afiseaza lista cailor uzuale unde se gasesc 
    programe executabile (Programele astea se pot executa fara a specifica calea catre ele"
	echo $PATH
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu4
	;;
    3)
	clear
	echo "Legaturi intre fisisere si directoare"
	echo "------------------------------------------"
	echo -ne "Introduceti calea in care vreti sa va aflati pentru a face legatura: "
        read n
        clear
	cd $n
	echo -ne "Introduceti calea cu care vreti sa faceti linkarea: "
        read n
        clear
        echo "ln -s $n"
        ln -s $n
	echo "Change directory"
	read $n
	cd $n
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu4
	;;
    4)
	clear
	echo "Control tipuliror de fisiere un directorul curent"
        echo "------------------------------------------"
        echo -ne "Introduceti calea in care vreti sa dati un check: "
        read n
        clear
        cd $n
        echo -ne "Introduceti fisiserul care vreti sa controlati: "
        read n
        clear
        file $n
	echo "Change directory"
	read n
	cd $n
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu4
	;;
    5)
	clear
    echo "Comanda pwd afiseaza calea absoluta catre directorul curent"
	pwd
    sleep 2
    echo "cd .. schimba directorul parinte"
    cd ..
    sleep 2
    pwd
    sleep 2
    cd ../usr/bin
    sleep 2
    echo " cd apelat fara parametri schimba directorul home"
    cd
    sleep 1
    pwd
    sleep 1
    cd /usr/bin
    sleep 1
    
    sleep 1
    echo "cd - schimba directorul in directorul anterior"
    cd -
    sleep 1
    echo " ~ este echivalentul directorului home pentru utilizatorul curent (cd ~)"
    cd ~
    sleep 1
    pwd
    sleep 1
    echo " . (punct) este o referinta la directorul curent, deci cd . nu modifica directorul"
    cd ././././
    sleep 1
    cd ../..
    sleep 1
    pwd
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu4
	;;
    6)
	clear
	echo "Afisare continutul fisierelor"
	echo "-------------------------------------"
	echo -ne "Introduceti fisierul pe care vreti sa afisati continutul "
	read n
	clear
	echo "cat $n"
	cat $n
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu4
	;;
    7)
	clear
	echo "Listarea continutului unui director"
	echo "-----------------------------------"
	echo "List of Options:"
	echo "	-l informatii detaliate despre fiecare fisier"
	echo "	-a afiseaza si fisierele care incep cu '.' (Va arata si fisierele ascunse)"
	echo "	-h afiseaza dimensiunea fisierelor in format human-readable"
	echo "-----------------------------------------------"
	echo -ne "Introduceti optiunea ( '-' este obligator): "
	read opt
	echo -ne "Introduceti calea care vreti sa listati: "
	read n
	clear
	echo "ls $opt $n"
	ls $opt $n
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu4
	;;
    8)
	clear
    echo " Creare fisier "
	touch fisier1
    echo " Creare director"
    mkdir dir1
    mkfifo fifoi
    ls -l 
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
    submenu4
	;;
    9)
	clear
    echo "Copierea fisierului se face cu comanda cp "
    touch test1.txt
    ls
    echo "
    **************************************************
    Observam fisierul creat test1.txt"
    sleep 5
    cp test1.txt test2.txt
    echo "
    ************************************************
    Fisierul test1 a fost copiat in fiesier test2

    ************************************************"
    ls
    read -rsp $"Apasa enter pentru a continua " -n1 key
    rm test1.txt
    rm test2.txt
    echo "Stergere fisiere si directoare"
    echo "rm (nume fisier)sterge fisier "
    read -rsp $"Apasa enter pentru stergere " -n1 key
    rm fisier1
    rm fifoi
    echo "fisier1 a fost sters"
    sleep 2
    echo "rmdir (nume fisier) sterge director"
    read -rsp $"Apasa enter pentru stergere " -n1 key
    rmdir dir1
    echo " dir1 a fost sters"
    sleep 2
    read -rsp $"Apasa enter pentru a reveni la menu" -n1 key
	submenu4
	;;
    #de continuat*************************************************************
    10)
	clear
    echo "Arhivare fisiere"
    ls
    read -rsp $"Apasa enter pentru a arhiva fisierele" -n1 key
    tar cfv arhiva.tar f*.txt
    ls
    echo "
    ********************************************************************"
    read -rsp $"Apasa enter pentru a dezarhiva fisierele" -n1 key
    file arhiva.tar
    echo "
    ********************************************************************"
    ls
    echo "
    ********************************************************************"
    rm arhiva.tar
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu4
	;;
    11)
        clear
        echo "Vizualizeaza drepturi de acces cu comanda : ls -l 
        exemplu fisier : f1.txt"
        read path
        clear
        echo "ls -l $path"
        ls -l $path
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu4
	;;
    12)
	clear
	echo "cautare dupa nume -name"
    read -rsp $"Apasa enter pentru a cauta dupa nume" -n1 key
    find /usr -name stat 
    read -rsp $"Apasa enter pentru a cauta dupa permisiune" -n1 key
    find /usr -perm 644
    read -rsp $"Apasa enter pentru a cauta dupa marime fisier" -n1 key
    find /usr -size +500000
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
    submenu4
	;;
    # de continuat+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    13)
	clear
	echo "Introdueti ce anume doriti sa-l localizati "
	read locate
	clear
	echo "locate $locate"
	"........................."
	locate $locate
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu4
	;;
    14)
	clear
        echo "Comanda Whereis
        Introduceti o denumirea "
        read where
        clear
        echo "whereis $where"
        "........................."
        whereis $where
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu4
        ;;
    15)
	clear
        echo "Folosind comanda which se poate obtine calea catre executabilele care
        pot fi rulate din linia de comanda.De exemplu, pentru a afla calea catre comanda 
        chmode se va folosi comanda : which chmod
        .............................."
        echo "Introduceti denumirea fisierului : "
        read whi
        clear
        echo "which $whi"
        "........................."
        which $whi
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu4
        ;;
    16)
	clear
        echo "        Comanda type
        Aceasta comanda poate fi folosita pentru a determina 
        modul de interpretare a unei comenzi, de exemplu comanda 
        integrata in shell, comanda externa sau alias. 
        "
        echo "
        Un exemplu de comanda integrata in shell este :
        "
        read -rsp $"Apasa enter pentru a afisa : 
        " -n1 key
        type cd
        echo "
        Pentru o comanda externa rezultatul comenzii type este calea catre executabil :
        "
        read -rsp $"Apasa enter pentru a afisa" -n1 key
        type cat
        echo "
        In cazul unui alias este afisata comanda echivalenta :
        "
        read -rsp $"Apasa enter pentru a afisa" -n1 key
        type ls
        echo "
        Introdu un nume la comanda'type': 
        "
        read type
        clear
        echo "type $type
        ........................."
        type $type
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu4
        ;;
    17)
	clear
        echo "Adresarea intr-un sistem de fisiere"
        echo ".............................."
        echo "Introduceti numele fisiserului "
        read nume
        clear
        echo "file $nume"
        file $nume
        read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
        submenu4
        ;;
    18)
	clear
        echo "Inapoi la menu."
        sleep .4
        echo -n "<"
        sleep .4
        echo -n "<"
        sleep .4
        echo "<"
        sleep .4
	clear
	menuprincipal
	;;
    0)
        echo -n "
    Iesire menu."
	sleep .4
	echo " 
    La revedere! "
	sleep .3
        exit 0
        ;;
    *)
        echo "Optiune gresita !."
        exit 1
        ;;

   esac
}
#------------------------Capitol 5--------------------------
submenu5 () {
    clear
    echo -ne "

**********************Capitol 5*************************************
1.   Deosebirea dintre un proces si un program    
2.   Structura unui proces          
3.   Utilitarul ps                                           
4.   Utilitarul pstree                                       
5.   Utilitarul pgrep                                        
6.   Utilitarul TOP                                          
7.   Timpul de executie al unui proces.Comanda time                                    
8.   Rularea unui proces in background                                  
9.   Controlul job-urilor                                        
10.  DAEMONI                                      
11.  Comanda nohup                                        
12.  Semnale                                      
13.  Swapping			     
14.  Comanda Grep                                         
15.  Inapoi la menu					     
0.   Exit                                         
*********************************************************************
Alege o optiune:  "
    read -r ans
    case $ans in
    1)
	clear
    echo "Exemple de procese : ls -l %path"
    echo -ne "Introdu numele: "
	read path
	clear
	ls -l $path
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
    submenu5
    ;;
    2)
	clear
	echo -ne "
    Introdu identificatorul unui proces PID (Process ID) 
    pentru a vedea structura acestuia : "
	read pID
	clear
	echo "cd /proc/$pID"
	cd /proc/$pID
	
	clear
	echo "ls"
	ls
	read -rsp $"Apasa enter pentru a continua " -n1 key
	echo "ls -l cwd; directorul curent , cel in care sa rulat comanda '"
	ls -l cwd
	sleep 4
	echo "cat maps; Zonele de memorie ale procesului "
	cat maps
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu5
	;;
    3)
    echo "Utilitarul ps :
     "
	ps_prog
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu5
	;;
    4)
	clear
	echo "pstree"
	echo "Afiseaza ierarhia de procese al sistemului"
	sleep 1
	echo -ne "Introdu proces PID : "
	read proc
	sleep 1
	echo "pstree $proc"
	pstree $proc
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    5)
	clear
	echo "pgrep"
    echo "Afiseaza procesele care indeplinesc o conditie"
    sleep 1
	echo "Lista optiuni :"
	echo "-p - PID"
	echo "-C - command"
	echo "-u - user"
	echo -ne "Introdu o optiune pentru pgrep: "
	read opt
	sleep 1
	echo -ne "Introdu conditia : "
	read cond
	sleep 1
	echo "pgrep $opt $cond -l"
	pgrep $opt $cond -l
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
 	;;
    6)
	clear
	echo "TOP"
    sleep 2
	echo -ne "Introduceti comanda pentru zona de sumarizare: "
	read sum
	echo -ne "Introduceti comanda pentru zona de procese: "
	read proc
	echo -ne "Introduceti comanda pentru zona de comanda: "
	read com
	sleep 1
	echo "top $sum $proc $com"
	top $sum $proc $com
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    7)
	clear
	echo "time"
	echo -ne "Introdu numele procesului : "
	read name
	sleep 1
	echo "time $name"
	time $name
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    8)
	clear
	echo "Background Process"
	sleep 1
	echo -ne "Insert the program you wanna run: "
	read prog
	sleep 1
	echo "$prog &"
	$prog &
	clear
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	submenu5
	;;
    9)
	clear
	echo "JOBS"
	sleep 1
	jobs
    read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    10)
	clear
	echo "DAEOMN Processes"
	sleep 1
	ps -t -
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    11)
	clear
	echo "nohup (rulare process ca daemon)"
	sleep 1
	echo -ne "Introduceti programul care vreti sa rulati: "
	read prog
	sleep 1
	echo "nohup $prog &"
	nohup $prog &
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    12)
	clear
	echo "Lista semnale :"
	kill -l
	read -rsp $"Apasa enter " -n1 key
	signals
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    13)
	clear
	echo "Informatii despre partitia swap"
	free
	sleep 1
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    14)
	grep_program
	read -rsp $"Apasa enter pentru a reveni la meniu" -n1 key
	clear
	submenu5
	;;
    15)
	clear
        echo "Inapoi la menu."
        sleep .4
        echo -n "<"
        sleep .4
        echo -n "<"
        sleep .4
        echo "<"
        sleep .4
	clear
	menuprincipal
	;;
    0)
        echo -n "
    Iesire menu."
	sleep .4
	echo " 
    La revedere! "
	sleep .3
        exit 0
        ;;
    *)
        echo "Optiune gresita !."
        exit 1
        ;;
    esac
}
#-----------------------------------------------------------------------------------------
signals () {
	ps
        sleep 2
        echo -ne "Insert the signal you wanna use {like SIGSTOP or STOP or 19} (with the '-'): "
        read sign
        sleep 1
        echo -ne "Insert the PID you wanna use (you can put multiple PIDs with a blank space between them): "
	read PIDs
	sleep 1
	echo "kill $sign $PIDs"
	kill $sign $PIDs
	echo -ne "Do you wanna use this program again? (y/n)"
	read -r ans
	case $ans in
	y)
		signals
		;;
	*)
		echo "Iesire meniu"
		;;
	esac
}


#------------------------------------------------------------------------------------------
ps_prog () {
	clear
	echo "List format: "
        echo "1) Simple | ps"
        echo "2) Utilizator curent | ps -a"
        echo "3) Tuturor procese din sistem | ps -e"
        echo "4) Selectie dupa o anumita componenta | ps option 'componente de selectie'"
        echo "5) Negarea optiunelor de selectie | ps -N ...."
        echo "6) Afisarea tuturor optiunilor frecvente | ps -F optiune 'selectie'"
        echo "7) Specificarea optiunelor de afisat | ps -o 'optiuni de afisat (pid....)'"
        echo "8) --/++sort"
	echo "*) Quit"
        read -r opt
        case $opt in
        1)
		clear
		echo "ps"
		ps
		read -rsp $"Apasa enter pentru a continua" -n1 key
		ps_prog
		;;
	2)
		clear
		echo "ps -a"
		ps -a
		read -rsp $"Apasa enter pentru a continua" -n1 key
		ps_prog
		;;
	3)
		clear
		echo "ps -e"
		ps -e
		read -rsp $"Apasa enter pentru a continua" -n1 key
		ps_prog
		;;
	4)
		clear
		echo "list of options: -C -> Procese cautate multumita executabilul x; -p -> PID; -u -> Utilizator"
		echo -ne "Insert your option (with the '-'): "
		read opt
		echo -ne "Insert your selection's components: "
		read comp
		clear
		echo "ps $opt $comp"
		ps $opt $comp
		read -rsp $"Apasa enter pentru a continua" -n1 key
		ps_prog
		;;
	5)
		clear
		echo "Insert your command (like 'ps -u userx -p 690' but without ps): "
		read command
		clear
		echo "ps -N $command"
		ps -N $command
		read -rsp $"Apasa enter pentru a continua" -n1 key
		ps_prog
		;;
	6)
		clear
		echo "Insert your command (like 'ps -u userx -p 690' but without ps): "
                read command
                clear
                echo "ps -F $command"
                ps -N $command
                read -rsp $"Apasa enter pentru a continua" -n1 key
                ps_prog
                ;;
	7)
		clear
                echo "Insert your printing options (like 'pid,user,...'): "
                read popt
                clear
                echo "ps -o $popt"
                ps -o $popt
                read -rsp $"Apasa enter pentru a continua" -n1 key
                ps_prog
                ;;
	8)
		clear
		echo "Insert your command (like 'ps -u userx -p 690', but without ps): "
                read command
                clear
                echo "ps $command --sort | sortat in fel decrescator"
                ps -N $command
                echo "ps $command ++sort | sortat in fel crescator"
                ps -N $command
		read -rsp $"Apasa enter pentru a continua" -n1 key
                ps_prog
                ;;
	*)
		clear
		echo "Iesire menu"
		;;
	esac
}
#----------------------------------------------------------------------------------------
grep_program () {
	clear
	echo "Grep is used to find a word in a file"
	sleep 4
	echo -ne "Insert your command (before de pipe '|'): "
	read com
	read -rsp $"Apasa enter pentru a continua" -n1 key
	echo -ne "Insert the word you want to search: "
	read grep1
	read -rsp $"Apasa enter pentru a continua" -n1 key
	clear
	echo "$command | grep $grep1"
	$command | grep $grep1
	read -rsp $"Apasa enter pentru a continua" -n1 key
 	echo -ne "Do you wanna use this program (grep) again? (y/n)"
        read -r ans
        case $ans in
        y)
                grep_program
                ;;
        *)
                echo "Iesire program "
                ;;
        esac
}
#--------------------Capitol 6---------------------------
#=================I WILL CONTINUE==========================

menuprincipal

else
	echo "Nu sunteti utilizator root"
	exit 1
fi