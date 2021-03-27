/* NASTAVENI BG FRAMEWORKU
 * Vytvoril Ondrej
 * -----------------------
 *
 * Zde muzes jednoduse upravit nastaveni frameworku podle svych potreb
 * Nemen nazvy promennych!
 * Text davej vzdy do uvozovek "" a nemen typ promennych (kdyz je vychozi hodnota text, tak textem musi zustat atd.)!
 */
bg_version = "22. 3. 2021";



/** Uvitaci Zprava
 * - Zobrazi se vsem v chatu pri pripojeni hrace
 * - %1 bude nahrazeno jmenem hrace - NEODSTRANOVAT
 */
bg_showWelcomeMessage = true;
bg_welcomeMessage = "Hráč %1 se připojil do hry!";


/** Zprava Pro Hrace
 * - Zobrazi se hraci na obrazovce po pripojeni
 * - true pro zobrazeni zpravy, false pro skryti
 * - Celkem 3 radky
 */
bg_showSplashMessage = true;
bg_splashMessage1 = "Vitej na misi od Broken Grenade";
bg_splashMessage2 = "Vyber si gear a čekej na brief.";
bg_splashMessage3 = "Neruš ostatní soundboardem nebo shit-talkem.";


/** Pocet Respawnu
 * - Nove se nepocita uvodni pripojeni na server
 * - Nastaveni na 2 = hrac muze dvakrat zemrit, po treti skonci ve spectatorovi
 * - Pro vypnuti nastav na -1
 */
bg_respawnCount = 2;


/** Dohled
 * - Nastavi maximalni dohled (v metrech), ktery si hrac muze nastavit
 * - Snizit jedine pokud na misi nejsou ZADNE letecke assety, zaroven nechat minimalne 5000
 */
bg_maxView = 12000;


/** Kvalita Terenu 
 * - Umozni nastavit minimalni kvalitu terenu tak, aby si hrac nemohl vypnout travu
 * - true vynuti zobrazeni travy, false umozni hraci snizit si detaily hry na minimum a vypnout travu
 */
bg_forceGrass = true;

/** Oprava Svetlic
* - Svetlice opravdu osviti oblast. */
bg_useFlaresFix = true;