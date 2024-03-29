# Broken Grenade Framework
Framework primárně určený pro Mission Makery z BG.
Poskytuje základní nastavení pro správnou funkčnost mise, funguje se všemi aktivátory používanými v BG.

## Použití
 1. **Stáhni si nejnovější verzi frameworku [zde](https://github.com/ondrej-mahdalik/BG_Framework/releases/latest).**
 2. Spusť Eden, vytvoř prázdnou misi na zvolené mapě a ulož ji.
 3. Zavři Eden (aby nebránil přepsání souborů).
 4. Do složky *Dokumenty\Arma 3\missions\\\<nazevTvojiMise\>* nakopíruj celý obsah archivu.
 5. Uprav nastavení frameworku podle tvých potřeb - soubor *nastaveni.sqf*.
 6. Znovu otevři svou misi v Edenu.
 7. Uprav nastavení CBA (aktuální presety pro jednoduchý import najdeš níže nebo na Discordu v kanálu *#changelog*).
 8. Podle potřeby přesuň/uprav/smaž předspawnované jednotky/tabulky/arzenál.
 
## CBA
|Název|Odkaz|
|--|--|
|Moderna|[Stáhnout](https://cdn.discordapp.com/attachments/840184628203356160/948254536265523250/CBA_Gripen_Moderna_1.3.2022.txt)|
|Moderna + KAT|[Stáhnout](https://cdn.discordapp.com/attachments/950801652762415205/952680591021723748/CBA_Moderna_KAT_1.3.2022.txt)|
|WW2|[Stáhnout](https://cdn.discordapp.com/attachments/840184628203356160/948254536043200582/CBA_Gripen_WW2_1.3.2022.txt)|
|Vietnam|[Stáhnout](https://cdn.discordapp.com/attachments/840184628203356160/948254535854489610/CBA_Gripen_Vietnam_1.3.2022.txt)|
 
## Funkce Frameworku
Funkce s * na konci lze přizpůsobit v *nastaveni.sqf*.
 - Nastavení hry pro správnou podporu TFAR
 - Uvítací zprávy*
 - Omezení počtu respawnů*
 - Omezení dohledu*
 - Vynucení zobrazení trávy*
 - Virtuální zeusové
 - Fyzičtí zeusové
 - Sloty pro hráče
 - Podpora headless klientů
 - Nastavení garbage collectoru a dalších optimalizací
 - Vlastní příkazy do chatu (může je požívat jen admin - #login)
	 - *#hint \<text\>* - Zobrazí všem hráčům zprávu.
	 - *#spunty* - Přidá všem hráčům špunty (pokud na ně mají v intentáři místo).
	 - *#give \<jmenoPolozky\>*- Přidá všem hráčům zvolenou položku.<br>
	 Funguje na všechny věci, které se dají dát do inventáře, tudíž i na zbraně (za podmínky že má hráč dostatek místa).<br>
	 Je potřeba použít pracovní název objektu, ten lze zobrazit např. v ACE arzenálu po najetí myší na položku (viz [obrázek](https://i.imgur.com/9iaoXDs.png)).
	 - *#heal* - Dá heal všem hráčům.
	 - *#nofortnite* - Odebere všem hráčům Fortify tool.