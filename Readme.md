# Broken Grenade Framework
Framework určený pro Mission Makery z BG.
Poskytuje základní nastavení pro správnou funkčnost mise, funguje se všemi aktivátory používanými v BG.

## Použití
 1. Stáhni si nejnovější verzi frameworku [zde](https://github.com/ondrej-mahdalik/BG_Framework/releases/latest).
 2. Spusť Eden, vytvoř prázdnou misi na zvolené mapě a ulož ji.
 3. Zavři Eden (aby nebránil přepsání souborů).
 4. Do složky *Dokumenty\Arma 3\missions\\\<nazevTvojiMise\>* nakopíruj celý obsah archivu.
 5. Uprav nastavení frameworku podle tvých potřeb - soubor *nastaveni.sqf*.
 6. Znovu otevři svou misi v Edenu.
 7. Pokud se nejdená o misi na Moderně, uprav nastavení CBA (aktuální presety pro jednoduchý import najdeš níže nebo na Discordu v kanálu *#důležité*).
 8. Podle potřeby přesuň/uprav/smaž předspawnované jednotky/tabulky/arzenál.
 
## Funkce Frameworku
Funkce s * na konci lze přizpůsobit v *nastaveni.sqf*.
 - Nastavení hry pro správnou podporu TFAR
 - Nastavení Artillery Computeru*
 - Uvítací zprávy*
 - Omezení počtu respawnů*
 - Omezení dohledu*
 - Vynucení zobrazení trávy*
 - Tabulka s loadouty
 - Podpora headless clientů
 - Virtuální zeusové
 - Fyzičtí zeusové
 - Sloty pro hráče
 - Nastavení garbage collectoru a dalších optimalizací
 - Vlastní příkazy do chatu (může je požívat jen admin - #login)
	 - *#hint \<text\>* - Zobrazí všem hráčům zprávu
	 - *#spunty* - Přidá všem hráčům špunty (pokud na ně mají v intentáři místo)
	 - *#give \<jmenoPolozky\>*- Přidá všem hráčům zvolenou položku.<br>
	 Funguje na všechny věci, které se dají dát do inventáře, tudíž i na zbraně (za podmínky že má hráč dostatek místa).<br>
	 Je potřeba použít pracovní název objektu, ten lze zobrazit např. v ACE arzenálu po najetí myší na položku (viz [obrázek](https://i.imgur.com/9iaoXDs.png))
	 - *#heal* - Dá heal všem hráčům

## CBA
|Název|Odkaz|
|--|--|
|Moderna|[Stáhnout](https://cdn.discordapp.com/attachments/611968501938257920/781540328686616596/CBA_MODERNA_GRIPEN_26.11.2020.txt)|
|Moderna + KAT|[Stáhnout](https://cdn.discordapp.com/attachments/611968501938257920/799989370781696030/cba_KAT_160121.txt)|
|WW2|[Stáhnout](https://cdn.discordapp.com/attachments/611968501938257920/781540353009516565/CBA_GRIPEN_WW2_26.11.2020.txt)|
|Vietnam|[Stáhnout](https://cdn.discordapp.com/attachments/611968501938257920/781540389877841970/CBA_GRIPEN_VIETNAM_26.11.2020.txt)|
|Warhammer40k|*Bude Doplněno*|