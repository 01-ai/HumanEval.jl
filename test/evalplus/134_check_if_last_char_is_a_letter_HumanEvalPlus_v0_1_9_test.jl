@testitem "134_check_if_last_char_is_a_letter_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "134_check_if_last_char_is_a_letter.jl"))
    @test check_if_last_char_is_a_letter("Pumpkin pi e") == true
    @test check_if_last_char_is_a_letter("Pumpkin pie!") == false
    @test check_if_last_char_is_a_letter("pUMPKIN PIE") == false
    @test check_if_last_char_is_a_letter("!") == false
    @test check_if_last_char_is_a_letter("aaaaa A") == true
    @test check_if_last_char_is_a_letter("aaaaa 1") == false
    @test check_if_last_char_is_a_letter("12") == false
    @test check_if_last_char_is_a_letter("apple pie!") == false
    @test check_if_last_char_is_a_letter("blueberry muffin!") == false
    @test check_if_last_char_is_a_letter("cake?") == false
    @test check_if_last_char_is_a_letter("pUMPKPIE") == false
    @test check_if_last_char_is_a_letter("aaaaaa 1") == false
    @test check_if_last_char_is_a_letter("cake?blueberry muffin!") == false
    @test check_if_last_char_is_a_letter("pUMPKPIEPumpkin pi e") == true
    @test check_if_last_char_is_a_letter("?blueberry muffin!") == false
    @test check_if_last_char_is_a_letter("Pumpkin pie!cake?") == false
    @test check_if_last_char_is_a_letter("Pumpkin e!") == false
    @test check_if_last_char_is_a_letter("applel pUMPKPIEPumpkin pi epie!") == false
    @test check_if_last_char_is_a_letter("caake?") == false
    @test check_if_last_char_is_a_letter("c?blueberry muffin!ke?") == false
    @test check_if_last_char_is_a_letter("aaaaa aaaaa 1A") == false
    @test check_if_last_char_is_a_letter("aaaaaa A") == true
    @test check_if_last_char_is_a_letter("aaaaaa aaaaa 1A") == false
    @test check_if_last_char_is_a_letter("cake?blueberrymuffin!") == false
    @test check_if_last_char_is_a_letter("cake?blueberrymuffinc!") == false
    @test check_if_last_char_is_a_letter("ceberrymuffinc!") == false
    @test check_if_last_char_is_a_letter("pUMPK") == false
    @test check_if_last_char_is_a_letter("aaaaa aaaaaa 1A") == false
    @test check_if_last_char_is_a_letter("1Pumpkin pie!cake?2") == false
    @test check_if_last_char_is_a_letter("ceberrymu12ffinc!") == false
    @test check_if_last_char_is_a_letter("?blueberruy muffin!") == false
    @test check_if_last_char_is_a_letter("ceberrymuffinc!Pumpkin pie!cake?") == false
    @test check_if_last_char_is_a_letter("acake?") == false
    @test check_if_last_char_is_a_letter("aaaaa aaa") == false
    @test check_if_last_char_is_a_letter("1Pumpkin pie!cake?applel pUMPKPIEPumpkin pi epie!2") == false
    @test check_if_last_char_is_a_letter("aaaaa 1cake?") == false
    @test check_if_last_char_is_a_letter("cakel?blueberrymuffinc!") == false
    @test check_if_last_char_is_a_letter("aaaaaa aaaa 1A") == false
    @test check_if_last_char_is_a_letter("cblueberry muffin!") == false
    @test check_if_last_char_is_a_letter("cake?blueberrymuffina!") == false
    @test check_if_last_char_is_a_letter("caaaaaaaa aaaaa 1Ake?") == false
    @test check_if_last_char_is_a_letter("cake?blueberrymufufinc!") == false
    @test check_if_last_char_is_a_letter("aaaaaaaaaa Aa aaa") == false
    @test check_if_last_char_is_a_letter("bluebepUMPKIN PIErry muffin!") == false
    @test check_if_last_char_is_a_letter("ceberrymunc!Pumpekin pie!ecake?") == false
    @test check_if_last_char_is_a_letter("ccake?") == false
    @test check_if_last_char_is_a_letter("blueberry muf") == false
    @test check_if_last_char_is_a_letter("cakel?blueberarymuffinc!") == false
    @test check_if_last_char_is_a_letter("bluebepUMEPKIN PIErry muffin!") == false
    @test check_if_last_char_is_a_letter("i?blueberry muffin!") == false
    @test check_if_last_char_is_a_letter("Pblueberry mufumpkin e!") == false
    @test check_if_last_char_is_a_letter("cakel?blupUMPKPIEPumpkin pi eeberrymuffinc!") == false
    @test check_if_last_char_is_a_letter("aaaaaa aaaaa 1?blueberruy muffin!A") == false
    @test check_if_last_char_is_a_letter("Pumpkin piie!cake?") == false
    @test check_if_last_char_is_a_letter("ccakapple pie!e?") == false
    @test check_if_last_char_is_a_letter("aaaaa pUMPKPIEPumpkin pi eaaaaa 1A") == false
    @test check_if_last_char_is_a_letter("blueberry ceberrymuffinc!Pumpkin pie!cake?muf") == false
    @test check_if_last_char_is_a_letter("Peumpkine pie!cake?") == false
    @test check_if_last_char_is_a_letter("pUMPcake?blueberrymufufinc!KPIEPulmpkin pi e") == false
    @test check_if_last_char_is_a_letter("1Pumpkin pie!c ake?applel pUMPaaaaa aaaaa 1AKPIEPumpkin pi epie!2") == false
    @test check_if_last_char_is_a_letter("applel pUMPKPIEPumpkin pi epiie!") == false
    @test check_if_last_char_is_a_letter("aaaaaa aaaaaa 1A") == false
    @test check_if_last_char_is_a_letter("cbluebeerry muffin!") == false
    @test check_if_last_char_is_a_letter("bluebepn!") == false
    @test check_if_last_char_is_a_letter("pUcake?blueberry muffin!IE") == false
    @test check_if_last_char_is_a_letter("jpBTU") == false
    @test check_if_last_char_is_a_letter("apple p!ie!") == false
    @test check_if_last_char_is_a_letter("OPxQV") == false
    @test check_if_last_char_is_a_letter("ccakceberrymuffinc!Pumpkin pie!cake?apple pcakel?blueberrymuffinc!iie!e?") == false
    @test check_if_last_char_is_a_letter("acceberrymuffinc!Pumpkin pie!cake?ake?") == false
    @test check_if_last_char_is_a_letter("pPUMPK") == false
    @test check_if_last_char_is_a_letter("blueberry mceberrymuffinc!Pumpkin pie!cake?in!") == false
    @test check_if_last_char_is_a_letter("aaaaaaaaaaaaaa 1cake?a pUcake?blueberry muffin!IEAa aaa") == false
    @test check_if_last_char_is_a_letter("21") == false
    @test check_if_last_char_is_a_letter("cakel?bluebec?blueberry muffin!ke?rarymuffinc!") == false
    @test check_if_last_char_is_a_letter("cake?blueberry mu ffin!") == false
    @test check_if_last_char_is_a_letter("aaaaapUMPK aaaaaa 1A") == false
    @test check_if_last_char_is_a_letter("aaaaacake?aa aaaaa 1A") == false
    @test check_if_last_char_is_a_letter("Pumie!cake?") == false
    @test check_if_last_char_is_a_letter("OPxQVV") == false
    @test check_if_last_char_is_a_letter("cmbluebeerry muffin!") == false
    @test check_if_last_char_is_a_letter("pUcake?blueberry muffnin!IE") == false
    @test check_if_last_char_is_a_letter("acake?blueberrymuffin!aaaa 1") == false
    @test check_if_last_char_is_a_letter("blueberry aaaaaa aaaaa 1An pie!cake?muf") == false
    @test check_if_last_char_is_a_letter("apple piaaaaaa aaaa 1Ae!") == false
    @test check_if_last_char_is_a_letter("cebOPxQVerrymuffinc!") == false
    @test check_if_last_char_is_a_letter("bluebepbUMEPKIN PIErccakceberrymuffinc!Pumpkin pie!cake?bapple pcakel?blueberrymuffinc!iie!e?muffin!") == false
    @test check_if_last_char_is_a_letter("bluebepUMEapple piaaaaaa aaaa 1Ae!muffinM!") == false
    @test check_if_last_char_is_a_letter("cebcbluebeerry muffin!errymuffcinc!") == false
    @test check_if_last_char_is_a_letter("aaa1Pumpkin pie!c ake?applel pUMPaaaaa aaaaa 1AKPIEPumpkin pi epie!2aaa A") == false
    @test check_if_last_char_is_a_letter("21Peumpkine pie!cake?") == false
    @test check_if_last_char_is_a_letter("cebcbluebeerry muffinPblueberry mufumpkin e!!errymuffcinc!") == false
    @test check_if_last_char_is_a_letter("cake?blueberrymufficebOPxQVerirymuffinc!n!") == false
    @test check_if_last_char_is_a_letter("cebcbluebeerry muffin!errymuffcinaaaaapUMPK aaaaaa 1Ac!") == false
    @test check_if_last_char_is_a_letter("pUMblueberry ceberrymuffinc!Pumpkin pie!cake?mufPKPIEPumpkin pi e") == false
    @test check_if_last_char_is_a_letter("applel pUMPKPIEPumpkin pi eppie!") == false
    @test check_if_last_char_is_a_letter("acake?bluebferrymuffin!aaaa 1") == false
    @test check_if_last_char_is_a_letter("cberry muffin!") == false
    @test check_if_last_char_is_a_letter("21Peumpki?") == false
    @test check_if_last_char_is_a_letter("aa1aaceberrymunc!Pumpekin pie!ecake?aa 1") == false
    @test check_if_last_char_is_a_letter("Apple \$%^pie") == false
    @test check_if_last_char_is_a_letter("Hello, wor1d!") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jumps over the lazy dogs.") == false
    @test check_if_last_char_is_a_letter("apple pie... or is it?") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even though it swims.") == false
    @test check_if_last_char_is_a_letter("apple pi\ne") == false
    @test check_if_last_char_is_a_letter("the quick brown fox jumps over the lazy dogs") == false
    @test check_if_last_char_is_a_letter("apple pie! ") == false
    @test check_if_last_char_is_a_letter("appple pie 1 ") == false
    @test check_if_last_char_is_a_letter("A\$pple \$%^pie") == false
    @test check_if_last_char_is_a_letter("Apple \$%^\$p\$%^pieie") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pieie") == false
    @test check_if_last_char_is_a_letter("food") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even thougeh it swims.") == false
    @test check_if_last_char_is_a_letter("The quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dogs.") == false
    @test check_if_last_char_is_a_letter("The") == false
    @test check_if_last_char_is_a_letter("Apple") == false
    @test check_if_last_char_is_a_letter("pi") == false
    @test check_if_last_char_is_a_letter("A\$ppleapple pie!") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$ieie") == false
    @test check_if_last_char_is_a_letter("aapple pie!pple pie!") == false
    @test check_if_last_char_is_a_letter("Hello, wor1d!!") == false
    @test check_if_last_char_is_a_letter("Apple \$\$%^pie") == false
    @test check_if_last_char_is_a_letter("A\$ppl") == false
    @test check_if_last_char_is_a_letter("swims.") == false
    @test check_if_last_char_is_a_letter("p") == true
    @test check_if_last_char_is_a_letter("brown") == false
    @test check_if_last_char_is_a_letter("brwor1d!!own") == false
    @test check_if_last_char_is_a_letter("KeBambuP") == false
    @test check_if_last_char_is_a_letter("thApple \$%^\$p\$%^pieieps over the lazy dogs") == false
    @test check_if_last_char_is_a_letter("over") == false
    @test check_if_last_char_is_a_letter("a") == true
    @test check_if_last_char_is_a_letter("apple piee! ") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even though it swims") == false
    @test check_if_last_char_is_a_letter("ffish,") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even thougeh it s\$%^piewims.") == false
    @test check_if_last_char_is_a_letter("") == false
    @test check_if_last_char_is_a_letter("dogs") == false
    @test check_if_last_char_is_a_letter("woquickr1d!") == false
    @test check_if_last_char_is_a_letter("A\$ppleapple piapple pie! e!") == false
    @test check_if_last_char_is_a_letter("ap") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even tho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("foofd") == false
    @test check_if_last_char_is_a_letter("s\$%^piewims.swims.") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pieeie") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e pie!") == false
    @test check_if_last_char_is_a_letter("thApple") == false
    @test check_if_last_char_is_a_letter("aapplfavoritee pie!pple pie!") == false
    @test check_if_last_char_is_a_letter("ApA\$pplple") == false
    @test check_if_last_char_is_a_letter("apple pi\neapple piee! ") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pieeie\$%^\$p\$%^pieeie") == false
    @test check_if_last_char_is_a_letter("apple pie..A\$ppleappl!e pie!. or is it?") == false
    @test check_if_last_char_is_a_letter("applpi\ne") == true
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pieieps") == false
    @test check_if_last_char_is_a_letter("the quick brA\$pplapple pie! eappl!es") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even tho,ugh itjumps swims") == false
    @test check_if_last_char_is_a_letter("fooffd") == false
    @test check_if_last_char_is_a_letter("appl pie! ") == false
    @test check_if_last_char_is_a_letter("fofooffdod") == false
    @test check_if_last_char_is_a_letter("Apple \$%^\$p\$%^p") == false
    @test check_if_last_char_is_a_letter("My favoriitte food is fiwims.") == false
    @test check_if_last_char_is_a_letter("ovoer") == false
    @test check_if_last_char_is_a_letter("wor!!") == false
    @test check_if_last_char_is_a_letter("broA\$ppleappl!e pie!wn") == false
    @test check_if_last_char_is_a_letter("ofoofd") == false
    @test check_if_last_char_is_a_letter("apppl pie! ") == false
    @test check_if_last_char_is_a_letter("apple pie..A\$ppleappl!e piei!. or is it?") == false
    @test check_if_last_char_is_a_letter("Apple \$\$%^ps\$%^piewims.swims.ie") == false
    @test check_if_last_char_is_a_letter("Hello, wor1d!My favorite food is fish, even though it swims.") == false
    @test check_if_last_char_is_a_letter("apple pie..A\$ppleappl!e pieipiapplet?") == false
    @test check_if_last_char_is_a_letter("ff") == false
    @test check_if_last_char_is_a_letter("appple pie 1brwor1d!!own") == false
    @test check_if_last_char_is_a_letter("apThe quick brown fox jumps over the lazy dogs.lpple pie 1 ") == false
    @test check_if_last_char_is_a_letter("fox") == false
    @test check_if_last_char_is_a_letter("A\$ippleapple pie!") == false
    @test check_if_last_char_is_a_letter("My favorite food is fisheven tho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("or") == false
    @test check_if_last_char_is_a_letter("A\$ppleapplee pie!") == false
    @test check_if_last_char_is_a_letter("apple pie..A\$ppleappl!e piei!. or is it?fopie!wnofd") == false
    @test check_if_last_char_is_a_letter("pieipiapplet?") == false
    @test check_if_last_char_is_a_letter("1brwor1d!!own") == false
    @test check_if_last_char_is_a_letter("woquickr1d!ap") == false
    @test check_if_last_char_is_a_letter("wor1appl pie! d!Mry") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e pie!ApA\$pplple") == false
    @test check_if_last_char_is_a_letter("pie!ApA\$pplple") == false
    @test check_if_last_char_is_a_letter("A\$pple") == false
    @test check_if_last_char_is_a_letter("foxx") == false
    @test check_if_last_char_is_a_letter("Hello, woor1d!") == false
    @test check_if_last_char_is_a_letter("ee") == false
    @test check_if_last_char_is_a_letter("fooapppl pie! d") == true
    @test check_if_last_char_is_a_letter("Hello,") == false
    @test check_if_last_char_is_a_letter("quick") == false
    @test check_if_last_char_is_a_letter("foA\$ippleappleoapppl pie! d") == true
    @test check_if_last_char_is_a_letter("foA\$ippleoapppl pie! id") == false
    @test check_if_last_char_is_a_letter("lazy") == false
    @test check_if_last_char_is_a_letter("Helleo,") == false
    @test check_if_last_char_is_a_letter("ApA\$ppl\$%^\$p\$%^pe") == false
    @test check_if_last_char_is_a_letter("foA\$ippleoapppl") == false
    @test check_if_last_char_is_a_letter("My favorite fod is fisheven tho,ugoh it swimse") == false
    @test check_if_last_char_is_a_letter("apple ") == false
    @test check_if_last_char_is_a_letter("jl") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even though it swimis") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!pie...e pie!ApA\$pplple") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish,My even tho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("A\$pp\$le") == false
    @test check_if_last_char_is_a_letter("appiei!. or is itf?fopie!wnofd") == false
    @test check_if_last_char_is_a_letter("favorite") == false
    @test check_if_last_char_is_a_letter("jumps") == false
    @test check_if_last_char_is_a_letter("brA\$pplapple") == false
    @test check_if_last_char_is_a_letter("Tehe") == false
    @test check_if_last_char_is_a_letter("!wor!!") == false
    @test check_if_last_char_is_a_letter("owoquickr1d!ap") == false
    @test check_if_last_char_is_a_letter("id") == false
    @test check_if_last_char_is_a_letter("wor1d!Mya") == false
    @test check_if_last_char_is_a_letter("fiwims.") == false
    @test check_if_last_char_is_a_letter("sdogs.") == false
    @test check_if_last_char_is_a_letter("bnnrown") == false
    @test check_if_last_char_is_a_letter("apple") == false
    @test check_if_last_char_is_a_letter("1brwor1wd!!own") == false
    @test check_if_last_char_is_a_letter("eHello, woor1d!") == false
    @test check_if_last_char_is_a_letter("MMy") == false
    @test check_if_last_char_is_a_letter("\$\$%^ps\$%^piewims.swims.ie") == false
    @test check_if_last_char_is_a_letter("\$%^e\$p\$%^p%ieeie\$%^\$p\$%^pieeie") == false
    @test check_if_last_char_is_a_letter("bbroA\$ppleappl!e") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pieeie\$%^\$p\$%^pie") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, eveni tho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!ApA\$pplple") == false
    @test check_if_last_char_is_a_letter("AA\$ippleapple pie!") == false
    @test check_if_last_char_is_a_letter("appl apie! ") == false
    @test check_if_last_char_is_a_letter("broA\$ppleae pie!wn") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even though it swimisHello, wor1d!!") == false
    @test check_if_last_char_is_a_letter("it") == false
    @test check_if_last_char_is_a_letter("My favorite food is fems.") == false
    @test check_if_last_char_is_a_letter("pie!.") == false
    @test check_if_last_char_is_a_letter("swims.apppl pie! ") == false
    @test check_if_last_char_is_a_letter("t?") == false
    @test check_if_last_char_is_a_letter("brwor1d!1!own") == false
    @test check_if_last_char_is_a_letter("ppi") == false
    @test check_if_last_char_is_a_letter("1brwor1!d!!own") == false
    @test check_if_last_char_is_a_letter("Hello, 1woor1d!") == false
    @test check_if_last_char_is_a_letter("appe! ") == false
    @test check_if_last_char_is_a_letter("fofx") == false
    @test check_if_last_char_is_a_letter("n") == true
    @test check_if_last_char_is_a_letter("HelA\$ippleapplelo,") == false
    @test check_if_last_char_is_a_letter("applpi") == false
    @test check_if_last_char_is_a_letter("appl") == false
    @test check_if_last_char_is_a_letter("fooffoxxd") == false
    @test check_if_last_char_is_a_letter("pp") == false
    @test check_if_last_char_is_a_letter("eveni") == false
    @test check_if_last_char_is_a_letter("bnnrobwn") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pieiepsfood") == false
    @test check_if_last_char_is_a_letter("piei!.") == false
    @test check_if_last_char_is_a_letter("ApplAe \$aapple pie!pple pie!\$%^ps\$%^piewims.swims.i") == false
    @test check_if_last_char_is_a_letter("thHello, 1woor1d!Apple \$%^\$p\$%^pieieps over the lazy dogs") == false
    @test check_if_last_char_is_a_letter("A\$ppleapple") == false
    @test check_if_last_char_is_a_letter("appfisl") == false
    @test check_if_last_char_is_a_letter("t??") == false
    @test check_if_last_char_is_a_letter("The quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dohgs.") == false
    @test check_if_last_char_is_a_letter("pieipipie!wnapplet?woquickr1d!") == false
    @test check_if_last_char_is_a_letter("Appl\$e \$\$%^ps\$%^piewims.swims.ie") == false
    @test check_if_last_char_is_a_letter("A\$ippleapple pi") == false
    @test check_if_last_char_is_a_letter("!!wor!!") == false
    @test check_if_last_char_is_a_letter("appl pie ! ") == false
    @test check_if_last_char_is_a_letter("fooffoA\$ip\$pleoapppld") == false
    @test check_if_last_char_is_a_letter("A\$ppKeBambuP") == false
    @test check_if_last_char_is_a_letter("A\$\$pple \$%^pie") == false
    @test check_if_last_char_is_a_letter("KeBambuPA\$ippleapple pi") == false
    @test check_if_last_char_is_a_letter("hWwY") == false
    @test check_if_last_char_is_a_letter("!w!r!!") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!Hello, wor1d!My favorite food is fish, even though it swims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("1woor1d!Apple") == false
    @test check_if_last_char_is_a_letter("oovoer") == false
    @test check_if_last_char_is_a_letter("the quick brA\$pplapplappple pie 1brwor1d!!owne pie! eappl!es") == false
    @test check_if_last_char_is_a_letter("foA\$ippl1eopapppl") == false
    @test check_if_last_char_is_a_letter("\$%^pie") == false
    @test check_if_last_char_is_a_letter("Heo,") == false
    @test check_if_last_char_is_a_letter("A\$ppKeBamb") == false
    @test check_if_last_char_is_a_letter("AApsp^My favorite food is fish, even tho,ugh itjumps swimspie") == false
    @test check_if_last_char_is_a_letter("dogsn") == false
    @test check_if_last_char_is_a_letter("Hello, wor1d!!i!.") == false
    @test check_if_last_char_is_a_letter("ppfish,pie!Hello,") == false
    @test check_if_last_char_is_a_letter("pie!pple") == false
    @test check_if_last_char_is_a_letter("ppfish,p,ie!Hello,") == false
    @test check_if_last_char_is_a_letter("d") == true
    @test check_if_last_char_is_a_letter("Hello, wor1,d!") == false
    @test check_if_last_char_is_a_letter("AA\$ippleapple pThe quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dohgs.ie!") == false
    @test check_if_last_char_is_a_letter("ffof") == false
    @test check_if_last_char_is_a_letter("evewor1appli") == false
    @test check_if_last_char_is_a_letter("A\$\$pple") == false
    @test check_if_last_char_is_a_letter("nTehe") == false
    @test check_if_last_char_is_a_letter("\$%^^pie") == false
    @test check_if_last_char_is_a_letter("applpieappl!es") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even though imt swims.") == false
    @test check_if_last_char_is_a_letter("thApple \$%^\$p\$%^pieieps over the laozy dogs") == false
    @test check_if_last_char_is_a_letter("ffofwor!!") == false
    @test check_if_last_char_is_a_letter("KeBambuPA\$ippleapple") == false
    @test check_if_last_char_is_a_letter("pieswimisHello,!pple") == false
    @test check_if_last_char_is_a_letter("Hel wor1d!!") == false
    @test check_if_last_char_is_a_letter("zLkykywysmc") == false
    @test check_if_last_char_is_a_letter("swims") == false
    @test check_if_last_char_is_a_letter("zLkykwysmc") == false
    @test check_if_last_char_is_a_letter("foooffd") == false
    @test check_if_last_char_is_a_letter("appe!") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pieei\$eo,") == false
    @test check_if_last_char_is_a_letter("broA\$ppleappl!!wn") == false
    @test check_if_last_char_is_a_letter("thee quick brA\$pplapplaA\$ippleappleppple pie 1brwor1d!!owne pie! eappl!es") == false
    @test check_if_last_char_is_a_letter("apie!") == false
    @test check_if_last_char_is_a_letter("woaapple!!i!.") == false
    @test check_if_last_char_is_a_letter("The quick browthe quick zbrown fox jumps orver the lazy dogsn fox jumps over the lazy dohgs.") == false
    @test check_if_last_char_is_a_letter("My favorite food, even thougeh it swims.") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!Hello, wor1d!My favorite food is fish, even though it swfoxims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("ppfish,piie!Hello,") == false
    @test check_if_last_char_is_a_letter("Apple \$%The quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dogs.^p") == false
    @test check_if_last_char_is_a_letter("A\$\$pe") == false
    @test check_if_last_char_is_a_letter("OqmEHnVTg") == false
    @test check_if_last_char_is_a_letter("pie!\$%^ps\$%^piewims.swims.i") == false
    @test check_if_last_char_is_a_letter("the quick brA\$pplapplappple pie 1Applerwor1d!!owne pie! eappl!es") == false
    @test check_if_last_char_is_a_letter("A\$\$applpieappl!es") == false
    @test check_if_last_char_is_a_letter("AA\$ippleapie!") == false
    @test check_if_last_char_is_a_letter("fooapppl") == false
    @test check_if_last_char_is_a_letter("Hello,1 wor1d!!i!.") == false
    @test check_if_last_char_is_a_letter("d!Mry") == false
    @test check_if_last_char_is_a_letter("brA\$pp\$lapple") == false
    @test check_if_last_char_is_a_letter("My favoriote food is fish,My even tho,ugh i t swims") == false
    @test check_if_last_char_is_a_letter("KeBambuPA\$ippleapplei") == false
    @test check_if_last_char_is_a_letter("MM") == false
    @test check_if_last_char_is_a_letter("thApple \$%^\$p\$%^pieieps over the lazyit?fopie!wnofd dogs") == false
    @test check_if_last_char_is_a_letter("t") == true
    @test check_if_last_char_is_a_letter("gxThe quick browthe quick zbrown fox jumps orver the lazy dogsn fox jumps over the lazy dohgs.") == false
    @test check_if_last_char_is_a_letter("aapplfavoritee pie!ppapple piee! le pie!") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!Hello, wor1d!My favorite fven though it swfoxims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!Hello, wor1d!My favorite food is firsh, even though it swims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even thougeh it s\$%^ewims.") == false
    @test check_if_last_char_is_a_letter("A\$A\$ppleapplepp\$le") == false
    @test check_if_last_char_is_a_letter("thApple \$%^\$p\$%^pieieps over the lapie!nofd dogs") == false
    @test check_if_last_char_is_a_letter("appli apie! ") == false
    @test check_if_last_char_is_a_letter("brwor1d!woquickr1d!ap1!own") == false
    @test check_if_last_char_is_a_letter("Hel") == false
    @test check_if_last_char_is_a_letter("ffff") == false
    @test check_if_last_char_is_a_letter("pieipiappllet?") == false
    @test check_if_last_char_is_a_letter("HelloMy favorite food is fish, even thougeh it s\$%^piewims.,") == false
    @test check_if_last_char_is_a_letter("Apple \$%The qA\$pp\$leuick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dogs.^p") == false
    @test check_if_last_char_is_a_letter("upquicA\$pple") == false
    @test check_if_last_char_is_a_letter("s\$%^pieappiei!.wims.swims.") == false
    @test check_if_last_char_is_a_letter("szLkykywysmc") == false
    @test check_if_last_char_is_a_letter("thAppl") == false
    @test check_if_last_char_is_a_letter("sdogs.t??") == false
    @test check_if_last_char_is_a_letter("fven") == false
    @test check_if_last_char_is_a_letter("brA\$pplapplaA\$ippleappleppple") == false
    @test check_if_last_char_is_a_letter("oo") == false
    @test check_if_last_char_is_a_letter("quickbrwor1d!1!owfoA\$ippleoapppl pie! idn") == false
    @test check_if_last_char_is_a_letter("\$%^^pipe") == false
    @test check_if_last_char_is_a_letter("A\$A\$laozypp\$le") == false
    @test check_if_last_char_is_a_letter("ii") == false
    @test check_if_last_char_is_a_letter("A\$ppleapple piapple pie!e!") == false
    @test check_if_last_char_is_a_letter("aepplpieappl!es") == false
    @test check_if_last_char_is_a_letter("\$%\$^\$p\$%^pieie") == false
    @test check_if_last_char_is_a_letter("i") == true
    @test check_if_last_char_is_a_letter("apThe") == false
    @test check_if_last_char_is_a_letter("HelloMy favorite food is fish, even thougeh it s\$%^piewims.,over") == false
    @test check_if_last_char_is_a_letter("A\$ipHello, wor1d!My favorite food is fish, even though it swims.ple pi") == false
    @test check_if_last_char_is_a_letter("ofwor!!") == false
    @test check_if_last_char_is_a_letter("ppfish,p,ie!Hello,zLmc") == false
    @test check_if_last_char_is_a_letter("Appl\$e \$\$%^ps\$%^pi\$%^\$p\$%^pieiepswims.ie") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!Hello, wori1d!My favorite food is fish, even though it swfoxims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("the quick brA\$pplapplappplee pie 1Applerwor1d!!owne pie! eappl!es") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!Hello, wor1d!My favorite fven though it swfolxims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("My fa vorite food is fish, even tho,ugh itjumps swims") == false
    @test check_if_last_char_is_a_letter("appple") == false
    @test check_if_last_char_is_a_letter("Apple \$%The quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dfiwims.ogs.^p") == false
    @test check_if_last_char_is_a_letter("iE") == false
    @test check_if_last_char_is_a_letter("The quick brown foxk jumps over the lazy dogs.") == false
    @test check_if_last_char_is_a_letter("A\$eplple") == false
    @test check_if_last_char_is_a_letter("doogsn") == false
    @test check_if_last_char_is_a_letter("applMy favorite food is fish, even thougeh it s\$%^ewim s.") == false
    @test check_if_last_char_is_a_letter("\$aapple") == false
    @test check_if_last_char_is_a_letter("broA\$ppleappl!e") == false
    @test check_if_last_char_is_a_letter("\$%%^e\$p\$%^p%ieeie\$%^\$p\$%^pieeie") == false
    @test check_if_last_char_is_a_letter("My favoriote food is fish,Mtho,ugh i t swims") == false
    @test check_if_last_char_is_a_letter("A\$ppApple \$%^pie pie!ApA\$pplple") == false
    @test check_if_last_char_is_a_letter("apppe!") == false
    @test check_if_last_char_is_a_letter("My favoriote fMood is fish,Mtho,ugh i t swims") == false
    @test check_if_last_char_is_a_letter("orver") == false
    @test check_if_last_char_is_a_letter("is") == false
    @test check_if_last_char_is_a_letter("pie..A\$ppleappl!e") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, eveni tho,ugh it swwor1d!Myhifms") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even aapplfavoritee pie!pple pie!though imt swims.") == false
    @test check_if_last_char_is_a_letter("Apple \$%The quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dfiwims.oppfish,p,ie!Hello,zLmcgs.^p") == false
    @test check_if_last_char_is_a_letter("HelloMy favorite food is fish, even thougeh it s\$%^piewims.,overi") == false
    @test check_if_last_char_is_a_letter("Apple \$%The qA\$pp\$leuick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dogs.Apple \$%^pie^p") == false
    @test check_if_last_char_is_a_letter("brpiei!.") == false
    @test check_if_last_char_is_a_letter("foxk") == false
    @test check_if_last_char_is_a_letter("lA\$ppleapple piapple pie!e!") == false
    @test check_if_last_char_is_a_letter("apThe quick brown fox jumps over the fooapppllazy dogs.lpple pie 1 ") == false
    @test check_if_last_char_is_a_letter("Hllo,1") == false
    @test check_if_last_char_is_a_letter("fems.") == false
    @test check_if_last_char_is_a_letter("pie!") == false
    @test check_if_last_char_is_a_letter("zbrown") == false
    @test check_if_last_char_is_a_letter("My favorite ftood is fish, even though imt swims.") == false
    @test check_if_last_char_is_a_letter("apppapple pie!e!") == false
    @test check_if_last_char_is_a_letter("appee!  ") == false
    @test check_if_last_char_is_a_letter("swfolxims.A\$pplpple") == false
    @test check_if_last_char_is_a_letter("fffof") == false
    @test check_if_last_char_is_a_letter("My favoriitteood is fiwims.") == false
    @test check_if_last_char_is_a_letter("eappe!") == false
    @test check_if_last_char_is_a_letter("ae") == false
    @test check_if_last_char_is_a_letter("pie!\$%^ps\$%^piewims.sA\$ppleapplee pie!wims.i") == false
    @test check_if_last_char_is_a_letter("fooofd") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, evenMy favorite food is fewims") == false
    @test check_if_last_char_is_a_letter("pieipipie!wnapplet?woqui1d!") == false
    @test check_if_last_char_is_a_letter("ipiapple") == false
    @test check_if_last_char_is_a_letter("swims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("KeleBambuPA\$ippleapple pi") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fishA\$A\$ppleapplepp\$le,pie!Hello, wor1d!My favorite food is firsh, even though it swims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("iit") == false
    @test check_if_last_char_is_a_letter("My favorite fod is fie") == false
    @test check_if_last_char_is_a_letter("!r!!") == false
    @test check_if_last_char_is_a_letter("fowor1d!!i!.x") == false
    @test check_if_last_char_is_a_letter("dosgs") == false
    @test check_if_last_char_is_a_letter("bbnnrown") == false
    @test check_if_last_char_is_a_letter("!w!r!!!") == false
    @test check_if_last_char_is_a_letter("aei\ne") == false
    @test check_if_last_char_is_a_letter("swfolxims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("Apidple") == false
    @test check_if_last_char_is_a_letter("A\$A\$Apple \$%The quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dfiwims.ogs.^pppleapplepp\$le") == false
    @test check_if_last_char_is_a_letter("MylA\$ppleapple favoriitte food is fiwims.") == false
    @test check_if_last_char_is_a_letter("Heollleo,") == false
    @test check_if_last_char_is_a_letter("!worMy favorite food is fish, even aapplfavoritee pie!pple pie!though imt swims.!!") == false
    @test check_if_last_char_is_a_letter("bnnroA\$ppleapplee pie!bwn") == false
    @test check_if_last_char_is_a_letter("lHello, wor1d!!") == false
    @test check_if_last_char_is_a_letter("MylA\$ppleapple favoriitte food is fiwims.\$%^\$p\$ieiA\$ipHello, wor1d!My favorite food is fish, fofooffdodeven though it swims.ple pi") == false
    @test check_if_last_char_is_a_letter("Apple \$%^\$\$p\$%^p") == false
    @test check_if_last_char_is_a_letter("foofA\$ppleappl!e fish,pie!Hello, wor1d!My favorite fven though it swfolxims.A\$pplpled") == false
    @test check_if_last_char_is_a_letter("sUwxpM") == false
    @test check_if_last_char_is_a_letter("Hello,o woor1d!") == false
    @test check_if_last_char_is_a_letter("the quick brA\$pplappplappplee pie 1Applerwor1d!!owne piel!es") == false
    @test check_if_last_char_is_a_letter("A\$A\$ppleappl!e fish,pie!Hello, wor1d!My favorite food is firsh, even though it swims.A\$pplple\$pe") == false
    @test check_if_last_char_is_a_letter("fmJnMBo") == false
    @test check_if_last_char_is_a_letter("fmJfnMBo") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even tApple \$%foA\$ippleappleoapppl^\$\$p\$%^pho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("My ifavorite food, even thougeh it swims.") == false
    @test check_if_last_char_is_a_letter("ifavoriteofwor!!") == false
    @test check_if_last_char_is_a_letter("A\$ppleapeplee pie!") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!Hello, wor1d!My favorite fven though it MylA\$ppleapplexims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fish,pie!ApA\$pplpleswims.") == false
    @test check_if_last_char_is_a_letter("quickbrwor1d!1!owfoA\$ippleoapppl") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!pie...we pie!ApA\$pplwor1appl pie! d!Mryple") == false
    @test check_if_last_char_is_a_letter("ewims.") == false
    @test check_if_last_char_is_a_letter("app iei!. or is itf?fopie!wnofd") == false
    @test check_if_last_char_is_a_letter("the quick brA\$pplapplappplee pie 1Athe quick brA\$pplapplappple pie 1brwor1d!!owne pie! eappl!espplerwor1d!!owne pie! eappl!es") == false
    @test check_if_last_char_is_a_letter("ipialpple") == false
    @test check_if_last_char_is_a_letter("\$%^\$\$p\$%^p") == false
    @test check_if_last_char_is_a_letter("pi.") == false
    @test check_if_last_char_is_a_letter("ppi.") == false
    @test check_if_last_char_is_a_letter("foolA\$ppleapple piapple pie!e!ofd") == false
    @test check_if_last_char_is_a_letter("gxThe quick browthe quick zbrown fox jumps orver the lazy dogsn fox jumps ofvenver the lazy dohgs.") == false
    @test check_if_last_char_is_a_letter("ffooffd") == false
    @test check_if_last_char_is_a_letter("lA\$ppleapple piapple pieA\$ppApple!e!") == false
    @test check_if_last_char_is_a_letter("Hel1brwor1d!!ownelo,") == false
    @test check_if_last_char_is_a_letter("pie!\$%^ps\$%^p^iewims.sA\$pp!wims.i") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!pie...we pie!ApA\$pplwor1appl pie! d!ofwor!!Mryple") == false
    @test check_if_last_char_is_a_letter("ipialnTeheple") == false
    @test check_if_last_char_is_a_letter("A\$ppleapplee") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pie^eie") == false
    @test check_if_last_char_is_a_letter("pie!\$%^piewims.sA\$ppleapplee pie!wims.i") == false
    @test check_if_last_char_is_a_letter("woaapple!!i!.MylA\$ppleapple favoriitte food is fiwims.\$%^\$p\$ieiA\$ipHello, wor1d!My favorite food is fish, fofooffdodeven though it swims.ple pi") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e pie!AppipA\$ppdogs.^plple") == false
    @test check_if_last_char_is_a_letter("foofA\$pplefoxxd") == false
    @test check_if_last_char_is_a_letter("Hello, wor1d!My favorite food mis fish,ugms.") == false
    @test check_if_last_char_is_a_letter("s.") == false
    @test check_if_last_char_is_a_letter("dy!Mry") == false
    @test check_if_last_char_is_a_letter("Appl\$e") == false
    @test check_if_last_char_is_a_letter("My ifavorite.") == false
    @test check_if_last_char_is_a_letter("KMy favorite food is fisheven tho,ugh it swimsueBapplpiambuPA\$ippleapple") == false
    @test check_if_last_char_is_a_letter("appewim\ne") == false
    @test check_if_last_char_is_a_letter("fooffoA\$ip\$pleoappppieswims.ple!\$%^piewims.sA\$ppleapplee pie!wims.ild") == false
    @test check_if_last_char_is_a_letter("even") == false
    @test check_if_last_char_is_a_letter("Apple \$\$%^ppiee!") == false
    @test check_if_last_char_is_a_letter("rovoer") == false
    @test check_if_last_char_is_a_letter("fie") == false
    @test check_if_last_char_is_a_letter("app iei!. or is itf?fo!wnofd") == false
    @test check_if_last_char_is_a_letter("oovHel wor1d!!oApple \$\$%^ppiee!er") == false
    @test check_if_last_char_is_a_letter("My favoriitteood sis fiwims.over") == false
    @test check_if_last_char_is_a_letter("A\$ppleapplee swimsie!") == false
    @test check_if_last_char_is_a_letter("atho,ugoe") == false
    @test check_if_last_char_is_a_letter("ewims.gxThe quick browthe quick zbrown fox jumps orver the lazy dogsn fox jumps ofvenver the lazy dohgs.") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even tApple \$%foA\$ippleappleoapppl^\$\$p\$%^pho,ugh it swiHel1brwor1d!!ownelo,ms") == false
    @test check_if_last_char_is_a_letter("iQVJS") == false
    @test check_if_last_char_is_a_letter("apppl") == false
    @test check_if_last_char_is_a_letter("fewims") == false
    @test check_if_last_char_is_a_letter("Hllo,1oo") == false
    @test check_if_last_char_is_a_letter("ipie!") == false
    @test check_if_last_char_is_a_letter("\$\$%^^pie") == false
    @test check_if_last_char_is_a_letter("Hello,o") == false
    @test check_if_last_char_is_a_letter("foxkk") == false
    @test check_if_last_char_is_a_letter("Zrm") == false
    @test check_if_last_char_is_a_letter("A\$A\$Apple") == false
    @test check_if_last_char_is_a_letter("dogs.") == false
    @test check_if_last_char_is_a_letter("pi..") == false
    @test check_if_last_char_is_a_letter("brwthApple \$%^\$p\$%^pieieps over the lazy dogsor1d!!own") == false
    @test check_if_last_char_is_a_letter("aa") == false
    @test check_if_last_char_is_a_letter("a\$\$%^^piee pie! ") == false
    @test check_if_last_char_is_a_letter("\$%p^\$p\$%^pieie") == false
    @test check_if_last_char_is_a_letter("a,ugoe") == false
    @test check_if_last_char_is_a_letter("pie!\$%^ps\$%^piewims.sA\$ppleapplee") == false
    @test check_if_last_char_is_a_letter("My faovorite food is fish, even tho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("The quick bro wn fofirsh,xk jumps over the lazy dogs.") == false
    @test check_if_last_char_is_a_letter("the quick brA\$pplappplappplee pi e 1Apprite ftood is fish, even though imt swims.el!es") == false
    @test check_if_last_char_is_a_letter("thApple \$%^\$p\$%^pieiepidns over the lazyit?fopie!wnofd dogs") == false
    @test check_if_last_char_is_a_letter("woMy favorite food is fish, even tApple \$%foA\$ippleappleoapppl^\$\$p\$%^pho,ugh it swimsquickr1d!") == false
    @test check_if_last_char_is_a_letter("applMy") == false
    @test check_if_last_char_is_a_letter("\$%^pie^p") == false
    @test check_if_last_char_is_a_letter("lA\$ppleapple piapple pieA\$ppApple!e!zLkykwysmc") == false
    @test check_if_last_char_is_a_letter("Apple \$%The quick browthe quick brown fox jumps over the lazy dogsn fox jumps eover the lazy dogs.^p") == false
    @test check_if_last_char_is_a_letter("e\$%^\$p\$%^pieeie") == false
    @test check_if_last_char_is_a_letter("1woor1d!Aappplpple") == false
    @test check_if_last_char_is_a_letter("brA\$pplapplaA\$ippleapie!thoughle") == false
    @test check_if_last_char_is_a_letter("Apple \$\$%^ps\$zbrown%^piewims.swims.iie") == false
    @test check_if_last_char_is_a_letter("brwthApple \$%^\$p\$%^pieieps over the laz\$y dogsor1d!!own") == false
    @test check_if_last_char_is_a_letter("1brwor1d!!owne") == false
    @test check_if_last_char_is_a_letter("nA\$ppleappl!e fish,pie!Hello, wor1d!My favorite fven though it swfoxims.A\$pplpleTehe") == false
    @test check_if_last_char_is_a_letter("My fa vorite food ithe quick brA\$pplapplappplee pie 1Applerwor1d!!owne pie! eappl!ess fish, even tho,ugh itjumps swims") == false
    @test check_if_last_char_is_a_letter("My favorite fod is fisheven th o,ugoh it swimse") == false
    @test check_if_last_char_is_a_letter("\$%^\$p\$%^pfavoriitteoodieeie") == false
    @test check_if_last_char_is_a_letter("wor1d!!") == false
    @test check_if_last_char_is_a_letter("My favorite fod is fisheven th o,ugoh pie!.swimse") == false
    @test check_if_last_char_is_a_letter("ap!") == false
    @test check_if_last_char_is_a_letter("woraapplfavoritee pie!ppapple piee! le pie!1d!Mya") == false
    @test check_if_last_char_is_a_letter(".dogs.") == false
    @test check_if_last_char_is_a_letter("wofoxkr1appl pie! d!Mry") == false
    @test check_if_last_char_is_a_letter("pfoA\$ippl1eopapppliei!.") == false
    @test check_if_last_char_is_a_letter("fish,pie!ApA\$pplpleswims.") == false
    @test check_if_last_char_is_a_letter("foofA\$ppleappl!e") == false
    @test check_if_last_char_is_a_letter("fooapppllazy") == false
    @test check_if_last_char_is_a_letter("foA\$ippleappleoaswimsueBapplpiambuPA\$ippleapplepppl pie! d") == true
    @test check_if_last_char_is_a_letter("iQJswimsie!VJS") == false
    @test check_if_last_char_is_a_letter("thHello, 1wooer1d!Apple \$%^\$p\$%^pieieps over the lazy dogs") == false
    @test check_if_last_char_is_a_letter("upquiHello, woor1d!cA\$pple") == false
    @test check_if_last_char_is_a_letter("upquiHello,") == false
    @test check_if_last_char_is_a_letter("idn") == false
    @test check_if_last_char_is_a_letter("pfoA\$ippl1eoppapppliei!.") == false
    @test check_if_last_char_is_a_letter("udoogsn") == false
    @test check_if_last_char_is_a_letter("\$^%^\$\$p\$%^p") == false
    @test check_if_last_char_is_a_letter("foooMy favorite food, even thougeh it swims.fd") == false
    @test check_if_last_char_is_a_letter("rbrownA\$\$pe") == false
    @test check_if_last_char_is_a_letter("\$%apie!^\$p\$%^pieei\$eo,") == false
    @test check_if_last_char_is_a_letter("woor1d!cpA\$pple") == false
    @test check_if_last_char_is_a_letter("evewor1aHllo,1ppli") == false
    @test check_if_last_char_is_a_letter("A\$pppleappl!e pie!AA\$ppleapplp!e pie!ApA\$pplplepA\$pplple") == false
    @test check_if_last_char_is_a_letter("KMy favorite food is fisheven tho,ugh it swimsueBapplpiaembuPA\$ippleapple") == false
    @test check_if_last_char_is_a_letter("upquicA\$ppule") == false
    @test check_if_last_char_is_a_letter("apple pie..A\$ppleap. or is it?") == false
    @test check_if_last_char_is_a_letter("eve\$%^\$p\$%^pieiepsfoodn") == false
    @test check_if_last_char_is_a_letter("brwor1d!!n") == false
    @test check_if_last_char_is_a_letter("bThe quick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dogs.nnrown") == false
    @test check_if_last_char_is_a_letter("eveMy favorite food is fish, even tho,ugh it swimsoodn") == false
    @test check_if_last_char_is_a_letter("foooMy favorite food,swfoxims.A\$pplpswimsele even thougeh it swims.fd") == false
    @test check_if_last_char_is_a_letter("A\$A\$Apple \$%The equick browthe quick brown fox jumps over the lazy dogsn fox jumps over the lazy dfiwims.ogs.^pppleapplepp\$le") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish, even tApple \$%foA\$ippleappleoappp\$%p^\$p\$%^pieieho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("wewims.gxTheor1d!!") == false
    @test check_if_last_char_is_a_letter("ethApple") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e fishA\$A\$ppleapplepp\$le,pie!Hello, wor1d!My favorite food is firsh, eve n though it swims.A\$pplple") == false
    @test check_if_last_char_is_a_letter("My favoriote food is fish,Mtho,ugh i t shwims") == false
    @test check_if_last_char_is_a_letter("\$\$%^thApple \$%^\$p\$%^pieieps over the laozy dogspie") == false
    @test check_if_last_char_is_a_letter("appiei!.") == false
    @test check_if_last_char_is_a_letter(".Hello, wor1d!My favorite food mis fish,ugms.") == false
    @test check_if_last_char_is_a_letter("KMy favorite food is fisheven tho,ugh it swimsueBapplpiampieA\$ppApple!e!zLkykwysmcbuPA\$imppleapple") == false
    @test check_if_last_char_is_a_letter("ftood") == false
    @test check_if_last_char_is_a_letter("wofoxkr1appl pie! d!") == false
    @test check_if_last_char_is_a_letter("apple pieei! ") == false
    @test check_if_last_char_is_a_letter("ththe quick brA\$pplappplappplee pie 1Applerwor1d!!owne piel!esApple") == false
    @test check_if_last_char_is_a_letter("pie!\$%^ps\$%^p^iewims.sA\$pp!wiA\$ppleappl!ems.i") == false
    @test check_if_last_char_is_a_letter("\$\$%^i\$p\$%^pie^eie") == false
    @test check_if_last_char_is_a_letter("lHello, wo!!") == false
    @test check_if_last_char_is_a_letter("swimsueBapplpiambuPA\$ippleapple") == false
    @test check_if_last_char_is_a_letter("brA\$pplapplappple") == false
    @test check_if_last_char_is_a_letter("My favorite food is p\$%^pieieho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("\$\$%^ps\$%^piewims.sweims.ie") == false
    @test check_if_last_char_is_a_letter("thHellA\$ppleappleo, 1wooer1d!Apple \$%^\$p\$%^pieieps o1ver the lazy dogs") == false
    @test check_if_last_char_is_a_letter("pie!1d!Mya") == false
    @test check_if_last_char_is_a_letter("thApple \$%^\$p\$%^pieiepidns over ^the lazyit?fopie!wnofd dogs") == false
    @test check_if_last_char_is_a_letter("favoriitte") == false
    @test check_if_last_char_is_a_letter("pie!wims.i") == false
    @test check_if_last_char_is_a_letter("eapple") == false
    @test check_if_last_char_is_a_letter("1brr1d!!owne") == false
    @test check_if_last_char_is_a_letter("ffoofffd") == false
    @test check_if_last_char_is_a_letter("A\$ppleapple epiapple pie!e!") == false
    @test check_if_last_char_is_a_letter("d!!ownelo,") == false
    @test check_if_last_char_is_a_letter("apThe quick brown fox jumps over thfe fooapppllazy dogs.lpple pie 1 ") == false
    @test check_if_last_char_is_a_letter("oovHel wor1A\$ippleapple pid!!oApple \$\$%^ppiee!er") == false
    @test check_if_last_char_is_a_letter("wor1dapplpi\ne!!") == false
    @test check_if_last_char_is_a_letter("s\$%^ewim") == false
    @test check_if_last_char_is_a_letter("!worMy favorite fththeood is fish, even aapplfavoritee pie!pple pie!though imt swims.!!") == false
    @test check_if_last_char_is_a_letter("swimisHello,") == false
    @test check_if_last_char_is_a_letter("dfood,") == false
    @test check_if_last_char_is_a_letter("wn") == false
    @test check_if_last_char_is_a_letter("My faveorite food is fish, even tAppple \$%foA\$ippleappleoappp\$%p^\$p\$%^pieieho,ugh it swims") == false
    @test check_if_last_char_is_a_letter("AfooffofooffoA\$ip\$pleoappppieswims.ple!\$%^piewims.sA\$ppleappleexxd") == false
    @test check_if_last_char_is_a_letter("appppe!") == false
    @test check_if_last_char_is_a_letter("foofA\$pptleappl!e fish,pie!Hello, wor1d!My the quick brA\$pplappplappplee pi e 1Apprite ftood is fish, even though imt swims.el!esfavorite fven though it swfolxims.A\$pplpled") == false
    @test check_if_last_char_is_a_letter("woquickr!1d!ap") == false
    @test check_if_last_char_is_a_letter("ppA\$ppleapple pie!i") == false
    @test check_if_last_char_is_a_letter("apple pie!foooMy favorite food, even thougeh it swims.fd") == false
    @test check_if_last_char_is_a_letter("Hello, wor1d!My favorite food is fish, e ven though it swims.") == false
    @test check_if_last_char_is_a_letter("appple pieei! ") == false
    @test check_if_last_char_is_a_letter("A\$ppleappl!e") == false
    @test check_if_last_char_is_a_letter("A\$pppleapple") == false
    @test check_if_last_char_is_a_letter("brworwor1dfood,d!!!1!own") == false
    @test check_if_last_char_is_a_letter("k ") == true
    @test check_if_last_char_is_a_letter("e1 ") == false
    @test check_if_last_char_is_a_letter(".") == false
    @test check_if_last_char_is_a_letter(" ") == false
    @test check_if_last_char_is_a_letter("1") == false
    @test check_if_last_char_is_a_letter("                 ") == false
    @test check_if_last_char_is_a_letter("Z") == true
    @test check_if_last_char_is_a_letter("aeiou") == false
    @test check_if_last_char_is_a_letter("AEIOU") == false
    @test check_if_last_char_is_a_letter("quickover") == false
    @test check_if_last_char_is_a_letter("apple pitie!") == false
    @test check_if_last_char_is_a_letter("the quick brown foox jumps over the lazy dogs") == false
    @test check_if_last_char_is_a_letter("My") == false
    @test check_if_last_char_is_a_letter("Hello, d!") == false
    @test check_if_last_char_is_a_letter("pie") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jumps over zy dogs.") == false
    @test check_if_last_char_is_a_letter("foox") == false
    @test check_if_last_char_is_a_letter("appple pitie!") == false
    @test check_if_last_char_is_a_letter("appple pie! ") == false
    @test check_if_last_char_is_a_letter("apple piie!") == false
    @test check_if_last_char_is_a_letter("app1le pitie!") == false
    @test check_if_last_char_is_a_letter("qkuicky") == false
    @test check_if_last_char_is_a_letter("fish,") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jumps over zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("HHello, d!") == false
    @test check_if_last_char_is_a_letter("Apple \$%appple pitie!^pie") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jump app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("applefavorite pifoox\ne") == false
    @test check_if_last_char_is_a_letter("nGwMUkIwSw") == false
    @test check_if_last_char_is_a_letter("pifoox") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps over zy app1le pitie!dogs.umps") == false
    @test check_if_last_char_is_a_letter("The quick brown Hello,fox jumps over the lazy dogs.") == false
    @test check_if_last_char_is_a_letter("fooxit?") == false
    @test check_if_last_char_is_a_letter("quiover") == false
    @test check_if_last_char_is_a_letter("The quickapple pitie! brown fox jumps oapple piie!gs.") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jumps over apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("app1lee piti") == false
    @test check_if_last_char_is_a_letter("pitie!^piepie") == false
    @test check_if_last_char_is_a_letter("piie!") == false
    @test check_if_last_char_is_a_letter("applApple \$%appple pitie!^pieefavoritequickapple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("foxMy") == false
    @test check_if_last_char_is_a_letter("Myy") == false
    @test check_if_last_char_is_a_letter("appapplApple \$%appple pitie!^pieefavoritequickapple pifoox\nele pitie!") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps over zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumps oapple piie!gs.ps") == false
    @test check_if_last_char_is_a_letter("qkuickky") == false
    @test check_if_last_char_is_a_letter("wor1d!") == false
    @test check_if_last_char_is_a_letter("The quick brown Hello,fox jumsps over the lazy dogs.") == false
    @test check_if_last_char_is_a_letter("e") == true
    @test check_if_last_char_is_a_letter("apple pie... or  is it?") == false
    @test check_if_last_char_is_a_letter("\$%^piwor1d!e") == false
    @test check_if_last_char_is_a_letter("applefavep pifoox\ne") == false
    @test check_if_last_char_is_a_letter("eeThe quickapple pitie! brown fox jumps oapple piie!gs.") == false
    @test check_if_last_char_is_a_letter("Apple \$%appple ppitie!^pie") == false
    @test check_if_last_char_is_a_letter("The quickapple pitie! brown fox jumps oapiple piie!gs.") == false
    @test check_if_last_char_is_a_letter("appapplApple") == false
    @test check_if_last_char_is_a_letter("applejump pie... or is it?") == false
    @test check_if_last_char_is_a_letter("aThe quick brown fox jump app1le 1le pitie!") == false
    @test check_if_last_char_is_a_letter("applApple \$%appppitie!dogs.umps^pieefavoritequickapple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("app1l") == false
    @test check_if_last_char_is_a_letter("Apple \$%appple ppiptie!^pie") == false
    @test check_if_last_char_is_a_letter("appplappple pie! e 1 ") == false
    @test check_if_last_char_is_a_letter("HHello,d d!") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.umps") == false
    @test check_if_last_char_is_a_letter("dgs") == false
    @test check_if_last_char_is_a_letter("pie!zy") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish,jThe even though it swims.") == false
    @test check_if_last_char_is_a_letter("My favori\$%apppletse food is fish,jThe even though it swims.") == false
    @test check_if_last_char_is_a_letter("appapplAppl\$%^piwor1d!ee \$%appple pitie!^pieefavoritequickapple pifoox\nele pitie!") == false
    @test check_if_last_char_is_a_letter("app1") == false
    @test check_if_last_char_is_a_letter("applApple \$%appple ppitie!^pieefavoritequickapple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jumps over zy app1le pitie!dogTs.") == false
    @test check_if_last_char_is_a_letter("\$%appple") == false
    @test check_if_last_char_is_a_letter("browwn") == false
    @test check_if_last_char_is_a_letter("pitie!dogs!.") == false
    @test check_if_last_char_is_a_letter("The quickapple pitie! bTrown fox jumps oapple piie!gs.") == false
    @test check_if_last_char_is_a_letter("\$%apppleThe quick brown fox jumps over apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("The qupick brown fox jump app1le pitie!dogs.pitie!dogs!.") == false
    @test check_if_last_char_is_a_letter("quickk") == false
    @test check_if_last_char_is_a_letter("\$%apppleThe quick brown fox jumps over apple pie!zy app1lgs.") == false
    @test check_if_last_char_is_a_letter("ppitie!^pie") == false
    @test check_if_last_char_is_a_letter("The quick brown fy dogs.") == false
    @test check_if_last_char_is_a_letter("appitie!dogs.umpsap1l") == false
    @test check_if_last_char_is_a_letter("wd!") == false
    @test check_if_last_char_is_a_letter("Apple \$%appple ppiltie!^pie") == false
    @test check_if_last_char_is_a_letter("Apple \$%e^pie") == false
    @test check_if_last_char_is_a_letter("The quick brown foxver zy dogs.") == false
    @test check_if_last_char_is_a_letter("Hllo, wor1d!") == false
    @test check_if_last_char_is_a_letter("though") == false
    @test check_if_last_char_is_a_letter("applx\ne") == true
    @test check_if_last_char_is_a_letter("eeThe") == false
    @test check_if_last_char_is_a_letter("piie!gs.") == false
    @test check_if_last_char_is_a_letter("Apple \$%appple ppiptthe quick brown fox jumps over the lazy dogsie!^pie") == false
    @test check_if_last_char_is_a_letter("piti") == false
    @test check_if_last_char_is_a_letter("HHello,d dMy favori\$%apppletse food is fish,jThe even though it swims.!") == false
    @test check_if_last_char_is_a_letter("br") == false
    @test check_if_last_char_is_a_letter("applejump pie.. or is it?") == false
    @test check_if_last_char_is_a_letter("appleApple \$%appple ppiltie!^piejump pie.. or is it?") == false
    @test check_if_last_char_is_a_letter("foxMyplx\ne") == true
    @test check_if_last_char_is_a_letter("broapple") == false
    @test check_if_last_char_is_a_letter("YRtcLsP") == false
    @test check_if_last_char_is_a_letter("iapplejump pie... or is it?") == false
    @test check_if_last_char_is_a_letter("swims.!") == false
    @test check_if_last_char_is_a_letter("pitie!^fish,jThepiepi") == false
    @test check_if_last_char_is_a_letter("quswims.!ickk") == false
    @test check_if_last_char_is_a_letter("favori\$%apppletse") == false
    @test check_if_last_char_is_a_letter("The qupick brown fox  app1le pitie!dogs.pitie!ddogs!.") == false
    @test check_if_last_char_is_a_letter("qick") == false
    @test check_if_last_char_is_a_letter("\$%e^pie") == false
    @test check_if_last_char_is_a_letter("Apple \$%a ppple ppiltie!^pie") == false
    @test check_if_last_char_is_a_letter("applefavorite HHello, d!pifoox\ne") == false
    @test check_if_last_char_is_a_letter("appplappple piep! e 1 ") == false
    @test check_if_last_char_is_a_letter("quickoHello, wor1d!ver") == false
    @test check_if_last_char_is_a_letter("Apple iee") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps ovepitie!^fish,jThepiepir zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumps oapple piie!gs.ps") == false
    @test check_if_last_char_is_a_letter("applx") == false
    @test check_if_last_char_is_a_letter("appe pitie!") == false
    @test check_if_last_char_is_a_letter("The quck brown fox jump app1le piptie!dogs.") == false
    @test check_if_last_char_is_a_letter("pitie!ogs.umps") == false
    @test check_if_last_char_is_a_letter("appfavoritequickapple pifox\ne") == false
    @test check_if_last_char_is_a_letter("The qupappe pitie!ick brown fox jump app1le pitie!dogs.pitie!dogs!.") == false
    @test check_if_last_char_is_a_letter("\$%^piw1or1d!e") == false
    @test check_if_last_char_is_a_letter("\$%^piwor") == false
    @test check_if_last_char_is_a_letter("HHello,") == false
    @test check_if_last_char_is_a_letter("pitie!") == false
    @test check_if_last_char_is_a_letter("jumsps") == false
    @test check_if_last_char_is_a_letter("jumpus") == false
    @test check_if_last_char_is_a_letter("appplappple piep! dgse 1 ") == false
    @test check_if_last_char_is_a_letter("favotrite") == false
    @test check_if_last_char_is_a_letter("Apple \$%^pipe") == false
    @test check_if_last_char_is_a_letter("piifoox\$%^piwor1d!e") == false
    @test check_if_last_char_is_a_letter("applAp^pipeefavoritequickapple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("bron") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jump app1le pitie!dogso.") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jumps over zy app1le pis.") == false
    @test check_if_last_char_is_a_letter("foodwd!") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("appplapitie!^fish,jThepiepippple piep! dgse 1 ") == false
    @test check_if_last_char_is_a_letter("quck") == false
    @test check_if_last_char_is_a_letter("piptie!dogs.") == false
    @test check_if_last_char_is_a_letter("appapplApple \$%appple pitie!^pieefavoriteqckapple pifoox\nele pitie!") == false
    @test check_if_last_char_is_a_letter("pitie!pdogs.") == false
    @test check_if_last_char_is_a_letter("My favorite ms.") == false
    @test check_if_last_char_is_a_letter("jThe quick broiswn fox jumps over zy app1le pitie!dogs.umps") == false
    @test check_if_last_char_is_a_letter("!wd!") == false
    @test check_if_last_char_is_a_letter("pis.") == false
    @test check_if_last_char_is_a_letter("Hello, wor1djump !") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps ovepitie!^fish,jThepiepiapplxr zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumps oapple piie!gs.ps") == false
    @test check_if_last_char_is_a_letter("pitie!^quickoHello, wor1d!verfish,jThepiepi") == false
    @test check_if_last_char_is_a_letter("\$%apppleThe quickthough brown fox jumps over apple pie!zy app1lgs.") == false
    @test check_if_last_char_is_a_letter("aThe") == false
    @test check_if_last_char_is_a_letter("apple pie...p s it?") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps over zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumpsp oapple piie!gs.ps") == false
    @test check_if_last_char_is_a_letter("favoripitie!dogs!.te") == false
    @test check_if_last_char_is_a_letter("aT") == false
    @test check_if_last_char_is_a_letter("jumspappfavoritejquickappleHHello,s") == false
    @test check_if_last_char_is_a_letter("bappthe quick brown foox jumpls over the lazy dogs ") == false
    @test check_if_last_char_is_a_letter("applefavoritte") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps ovepitie!^fish,jThepiepiapplxr zy app1le pitiegs.umThe quickapple pitie! brown fox jumps oapple piie!gs.ps") == false
    @test check_if_last_char_is_a_letter("pifoeleox") == false
    @test check_if_last_char_is_a_letter("apeepleApple \$%appple ppquickthoughiltie!^piejump pie.. or is it?") == false
    @test check_if_last_char_is_a_letter("vXshDwOJiX") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps over zy app1le pitie!dogs.umThmpsp oape!gs.ps") == false
    @test check_if_last_char_is_a_letter("favoritee") == false
    @test check_if_last_char_is_a_letter("ox\$%^piwor1d!e") == false
    @test check_if_last_char_is_a_letter("\$%^pi\$e") == false
    @test check_if_last_char_is_a_letter("pitie!dogTs.") == false
    @test check_if_last_char_is_a_letter("HHelljumplso, d!") == false
    @test check_if_last_char_is_a_letter("pie...p") == false
    @test check_if_last_char_is_a_letter("pitie!^pieefavoritequickapple") == false
    @test check_if_last_char_is_a_letter("The quick brown fox juppiltie!^piejumpmp app1le pitie!dogso.") == false
    @test check_if_last_char_is_a_letter("pitie!^fish,Hello, d!jThepiepi") == false
    @test check_if_last_char_is_a_letter("\$%apppleThe quick brown f\$%apppleTheox jumps over apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("aThe quick brown fox juppiltie!^piejumpmp app1ele pitie!dogso.pplx\ne") == false
    @test check_if_last_char_is_a_letter("The qupdogs!.") == false
    @test check_if_last_char_is_a_letter("pitie!^pieefavoritapple") == false
    @test check_if_last_char_is_a_letter("foxver") == false
    @test check_if_last_char_is_a_letter("Apple \$l%^pipe") == false
    @test check_if_last_char_is_a_letter("appplapitie!^fish,jThepiepippple") == false
    @test check_if_last_char_is_a_letter("ppiltie!^piejump") == false
    @test check_if_last_char_is_a_letter("pitie!dogHHello,d dMy favori\$%apppletse food is fish,jThe even though it swims.!s.") == false
    @test check_if_last_char_is_a_letter("appe") == false
    @test check_if_last_char_is_a_letter("pitipitie!dogs.umThmpsp") == false
    @test check_if_last_char_is_a_letter("appee pitie!") == false
    @test check_if_last_char_is_a_letter("The quickapple pitie! birown fox jumps oapple piie!gs.brown") == false
    @test check_if_last_char_is_a_letter("pitie!dogso.") == false
    @test check_if_last_char_is_a_letter("My favori\$%apppletse food is fish,jThe evenApple \$%appple ppapplApple \$%appple ppitie!^pieefavoritequickapple pifoox\neitie!^pe though it swims.") == false
    @test check_if_last_char_is_a_letter("The quickapple pitie! birown fThe quickapple pitie! bTrown fox jumps oapple piie!gs.ox jumps oapple piie!gs.brown") == false
    @test check_if_last_char_is_a_letter("HHello,applAp^pipeefavoritequickapple pifoox\ne d!") == false
    @test check_if_last_char_is_a_letter("TThe") == false
    @test check_if_last_char_is_a_letter("feover") == false
    @test check_if_last_char_is_a_letter("ps") == false
    @test check_if_last_char_is_a_letter("ipitie!") == false
    @test check_if_last_char_is_a_letter("ppitie!^pieefavoritequickapple") == false
    @test check_if_last_char_is_a_letter("favoripitie!dogsbrown!.te") == false
    @test check_if_last_char_is_a_letter("The quick brown fox evenApplejumps over zy app1le pitie!dogTs.") == false
    @test check_if_last_char_is_a_letter("ppiptie!^pie") == false
    @test check_if_last_char_is_a_letter("pietie!dogso.") == false
    @test check_if_last_char_is_a_letter("qkuickkypifoox") == false
    @test check_if_last_char_is_a_letter("favoripritie!dogsbrown!.te") == false
    @test check_if_last_char_is_a_letter("My favori\$%apppletse food is fish,jThe evenApple \$%appple ppapplApple \$%appple ppitie!^pieefavoritequickapple pifoox\neitie!^pe thoufavoripitie!dogsbrown!.tegh it swims.") == false
    @test check_if_last_char_is_a_letter("appfavoritequickapple") == false
    @test check_if_last_char_is_a_letter("iee") == false
    @test check_if_last_char_is_a_letter("My favori\$%apppletse food is fish,jThe evepapplApple \$%appple ppitie!^pieefavoritequickapple pifoox\neitie!^pe though it swims.") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jHHello,d d!apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("Meleyy") == false
    @test check_if_last_char_is_a_letter("qkuickoHello, wor1d!ver") == false
    @test check_if_last_char_is_a_letter("hh") == false
    @test check_if_last_char_is_a_letter("MeapeepleAppleleyy") == false
    @test check_if_last_char_is_a_letter("d!pifoox") == false
    @test check_if_last_char_is_a_letter("qupick") == false
    @test check_if_last_char_is_a_letter("The quck brown fox jump app1lfye piptie!dogs.") == false
    @test check_if_last_char_is_a_letter("pitie!!dogs!.") == false
    @test check_if_last_char_is_a_letter("thhough") == false
    @test check_if_last_char_is_a_letter("eee") == false
    @test check_if_last_char_is_a_letter("piiee!") == false
    @test check_if_last_char_is_a_letter("d!!") == false
    @test check_if_last_char_is_a_letter("\$%apppleThe quick brown fox jumps over apple pqupickapp1lgs.") == false
    @test check_if_last_char_is_a_letter("pitie!s") == false
    @test check_if_last_char_is_a_letter("nGwwMappple pie! UkIwSw") == false
    @test check_if_last_char_is_a_letter("The qthe quick brown fox jumps over the lazy dogsuick brown fox jumps over apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("appplapp ple piep! e 1 ") == false
    @test check_if_last_char_is_a_letter("piep!") == false
    @test check_if_last_char_is_a_letter("faveoritee") == false
    @test check_if_last_char_is_a_letter("pitie!dogso.pplx") == false
    @test check_if_last_char_is_a_letter("qupApple \$%appple ppapplApple \$%appple ppitie!^pieefavoritequickapple pifoox\neitie!^peick") == false
    @test check_if_last_char_is_a_letter("pitdogsuickie!dogTs.") == false
    @test check_if_last_char_is_a_letter("quickthough") == false
    @test check_if_last_char_is_a_letter("pitile!^quickoHello, wor1d!verfish,jThepiepi") == false
    @test check_if_last_char_is_a_letter("d!jThepiepi") == false
    @test check_if_last_char_is_a_letter("eitie!^peick") == false
    @test check_if_last_char_is_a_letter("pitie!^pieefav\$%^piwor1d!eoritapple") == false
    @test check_if_last_char_is_a_letter("foood") == false
    @test check_if_last_char_is_a_letter("pitie!dogHHello,d") == false
    @test check_if_last_char_is_a_letter("appapplApple \$%appple pitie!^pieefavoritequicMyykapple pifoox\nele pitie!") == false
    @test check_if_last_char_is_a_letter("My favorite food is fish,jThe evHHello,applAp^pipeefavoritequickappleen though it swims.") == false
    @test check_if_last_char_is_a_letter("pietie!dogjumpso.") == false
    @test check_if_last_char_is_a_letter("pitiepitie!^fish,Hello,!dogs.umpsor") == false
    @test check_if_last_char_is_a_letter("The app1leqjuck brown fox jump app1lfye piptie!dogs.") == false
    @test check_if_last_char_is_a_letter("eThe qupappe pitie!ick bropwn fox jump app1le pitie!dogs.pitie!dogs!.") == false
    @test check_if_last_char_is_a_letter("The quickapple pitie!qupick brown fox jumps oapple piie!gs.") == false
    @test check_if_last_char_is_a_letter("Apple \$%e^piswims.!s.e") == false
    @test check_if_last_char_is_a_letter("qkuickoHello,") == false
    @test check_if_last_char_is_a_letter("piapp1leqjucktise!ogs.umps") == false
    @test check_if_last_char_is_a_letter("applAp^pipeefavoritequickaplple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("quickapple") == false
    @test check_if_last_char_is_a_letter("appappapplApplepplAppl\$%^piwor1d!ee \$%appple pitie!^pieefavoritequickapple pifoox\nele pitie!") == false
    @test check_if_last_char_is_a_letter("piapp1leqjucktise!dogsuickofavoritegs.umps") == false
    @test check_if_last_char_is_a_letter("ovepitie!^fish,jThepiepiapplxr") == false
    @test check_if_last_char_is_a_letter("11") == false
    @test check_if_last_char_is_a_letter("bTrown") == false
    @test check_if_last_char_is_a_letter("appapplApple \$%appple pitie!^pieefavoritequickapple pifoox\nele pitie!piiee!") == false
    @test check_if_last_char_is_a_letter("foxMypiptie!dogs.") == false
    @test check_if_last_char_is_a_letter("ppitifavoriteee!^pie") == false
    @test check_if_last_char_is_a_letter("pitie!ogs.dogs.ps") == false
    @test check_if_last_char_is_a_letter("qkuickkypiappapplApple \$%appple pitie!^pieefavoritequickapple pifoox\nele pitie!piiee!foox") == false
    @test check_if_last_char_is_a_letter("HHello,applAp^pipeefavoritapplAp^pipeefavoritequickaplpleequickapple pifoox\ne d!") == false
    @test check_if_last_char_is_a_letter("qpitdogsuickie!dogTs.uck") == false
    @test check_if_last_char_is_a_letter("appplapp") == false
    @test check_if_last_char_is_a_letter("applAp^pipeefavoritequickaplaple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("\$%apppleThe quick brown fox jumps over af\$%apppleTheoxpple pie!zy app1lgs.") == false
    @test check_if_last_char_is_a_letter("The qupickapple pitie!qupick brown fox jumps oapple piie!gs") == false
    @test check_if_last_char_is_a_letter("fd") == false
    @test check_if_last_char_is_a_letter("evHHello,applAp^pipeefavoritequickappleen") == false
    @test check_if_last_char_is_a_letter("pitie!doigTs.") == false
    @test check_if_last_char_is_a_letter("pitie!^pieefavoriteqckapple") == false
    @test check_if_last_char_is_a_letter("appappapplApplepplAppl\$%^piwor1d!eepie") == false
    @test check_if_last_char_is_a_letter("My fadogs.vorite food is fish, even though it swims.") == false
    @test check_if_last_char_is_a_letter("jjThe quick brown fox jumps ovepitie!^fish,jThepiepiapplxr zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumps oapple piie!gs.psumpus") == false
    @test check_if_last_char_is_a_letter("pifoThe quick brown fox evenApplejumps over zy app1le pitie!dogTs.ox") == false
    @test check_if_last_char_is_a_letter("appplejump pie... or is it?") == false
    @test check_if_last_char_is_a_letter("Hellod, d!") == false
    @test check_if_last_char_is_a_letter("appappapplApplepplAppl\$%^piwor1d!ee") == false
    @test check_if_last_char_is_a_letter("jumppitie!^pies") == false
    @test check_if_last_char_is_a_letter("Apple pie") == false
    @test check_if_last_char_is_a_letter("pitie!dog.pplx") == false
    @test check_if_last_char_is_a_letter("ppitie!^pieeHello, wor1djump !favoritequickapple") == false
    @test check_if_last_char_is_a_letter("apd!applepe pitie!") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jump app1 le pitie!dogso.") == false
    @test check_if_last_char_is_a_letter("even!wd!") == false
    @test check_if_last_char_is_a_letter("YIjGPAGiyb") == false
    @test check_if_last_char_is_a_letter("appllAp^pipeefavoritequickapple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("Hello, wor1djuomp !") == false
    @test check_if_last_char_is_a_letter("aaT") == false
    @test check_if_last_char_is_a_letter("rbro") == false
    @test check_if_last_char_is_a_letter("My favori\$%apppletse food isle ppitie!^pieefavoritequickapple pifoox\neitie!^pe though it swims.") == false
    @test check_if_last_char_is_a_letter("jjThe quick brown fox jumps ovepitie!^fish,jThepiepiiapplxr zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumps oapple piie!gs.psumpus") == false
    @test check_if_last_char_is_a_letter("awor1djuomp! ") == false
    @test check_if_last_char_is_a_letter("the quick brownpie.. foox jumps over the lazy dogspitie!dogs.") == false
    @test check_if_last_char_is_a_letter("applApple \$%appple pitie!dogs.ppitie!^pieefavoritequickapple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("\$%apppleThe quick brown fox jumps over appple pie!zy app1lgs.") == false
    @test check_if_last_char_is_a_letter("pitiee!^pieefavoritapple") == false
    @test check_if_last_char_is_a_letter("piie!gs") == false
    @test check_if_last_char_is_a_letter("Apppiltie!^piejumpe pitie!^pie") == false
    @test check_if_last_char_is_a_letter("aaTeThe qupappe pitie!ick bropwn fox jump! app1le ppitie!sitie!dogs.pitie!dogs!.") == false
    @test check_if_last_char_is_a_letter("swims.!s.") == false
    @test check_if_last_char_is_a_letter("appplappple pie! e HHello,applAp^pipeefavoritapplAp^pipeefavoritequickaplpleequickapple pifoox\ne d!1 ") == false
    @test check_if_last_char_is_a_letter("apple pie... or .is it?") == false
    @test check_if_last_char_is_a_letter("appplepitie!qupick pie! ") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jHHelo,d d!apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("jumspappfavoritejquickapplpitie!dogs.pitie!dogs!.eHHello,s") == false
    @test check_if_last_char_is_a_letter("1le") == false
    @test check_if_last_char_is_a_letter("pie.pitie!s..") == false
    @test check_if_last_char_is_a_letter("applAp^pipeefavoox\ne") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.pitie!dogs!.") == false
    @test check_if_last_char_is_a_letter("d!d1") == false
    @test check_if_last_char_is_a_letter("eApple \$%^pie") == false
    @test check_if_last_char_is_a_letter("ppapplApple") == false
    @test check_if_last_char_is_a_letter("eitie!^p^eick") == false
    @test check_if_last_char_is_a_letter("ewd!favoriteqfavoripritie!dogsbrown!.teuickapple!") == false
    @test check_if_last_char_is_a_letter("aqkuickyThe") == false
    @test check_if_last_char_is_a_letter("TMy fadogs.vorite food is fish, even though it swims.") == false
    @test check_if_last_char_is_a_letter("MyjThe") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jump,jThepiepiapplxr zy app1le pitiegs.umThe quickapple pitie! brown fox jumps oapple piie!gs.ps") == false
    @test check_if_last_char_is_a_letter("ppquickthoughiltie!^piejump") == false
    @test check_if_last_char_is_a_letter("doguick") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.umThmpsp") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.ppitie!^pieefavoritequickapple") == false
    @test check_if_last_char_is_a_letter("lapplx\ne") == true
    @test check_if_last_char_is_a_letter("favoriprqkuickkypiappapplApple \$%appple pitie!^pieefavoritequickapple pifoox\nele pitie!piiee!fooxitie!dogsbrown!.te") == false
    @test check_if_last_char_is_a_letter("Applie pie") == false
    @test check_if_last_char_is_a_letter("The quickpiifoox\$%^piwor1d!e brown fox jHHelo,d d!apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("\$%apppleThTThee quick brown fox jumps over af\$%apppleTheoxpple pie!zy iapp1lgs.") == false
    @test check_if_last_char_is_a_letter("RcRJCoSsej") == false
    @test check_if_last_char_is_a_letter("appplappple pie! e HHello,applAp^pbTrownipeefavoritapplAp^pipeefavoritequickaplpleequickapple pifoox\ne d!1 ") == false
    @test check_if_last_char_is_a_letter("pietijjThe quick brown fox jumps ovepitie!^fish,jThepiepiapplxr zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumps oapple piie!gs.psumpuse!dogso.") == false
    @test check_if_last_char_is_a_letter("qupickapple") == false
    @test check_if_last_char_is_a_letter("Applet  \$%appdgsppitie!dogs.pitie!ddogs!.le ppitie!^pie") == false
    @test check_if_last_char_is_a_letter("favoripitie!dpie...pogs!.te") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.ppkitie!^pieefavoritequic\$%apppleThe quick brown f\$%apppleTheox jumps over apple pie!zy app1le pitie!dogs.ple") == false
    @test check_if_last_char_is_a_letter("ox\$%^piwor1d!eapplx\ne") == false
    @test check_if_last_char_is_a_letter("jThe quick brown fox jumps ovepitie!^fish,jThepiepiapplxr zy app1le pitiegs.umThe quickapple pitie! brown fox jumps oapple piie!s") == false
    @test check_if_last_char_is_a_letter("ppip^tie!^pie") == false
    @test check_if_last_char_is_a_letter("the quick brownpie.. foox jumps over the lazy dogspitie!dogs.piie!gs.brown") == false
    @test check_if_last_char_is_a_letter("\$%apppleTheck brown fox jumps over apple pie!zy app1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("rbo") == false
    @test check_if_last_char_is_a_letter("pitile!^quTMyickoHello, wor1d!verfish,jThepiepi") == false
    @test check_if_last_char_is_a_letter("\$%apppleThecak") == false
    @test check_if_last_char_is_a_letter("pit\$^%^piwor1d!eie!^piieefavoritapple") == false
    @test check_if_last_char_is_a_letter("the quick brownpie.. qupApple \$%appple ppapplApple \$%appple ppitie!^pieefavoritequickapple pifoox\neitie!^peickfoox jumps over the lazy dogspitie!dogs.") == false
    @test check_if_last_char_is_a_letter("Apple \$%appple ppii\$%ae!^pie") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.fppitie!^pieefavoritequickapple") == false
    @test check_if_last_char_is_a_letter("Apple pieappplepitie!qupiick pie! ") == false
    @test check_if_last_char_is_a_letter("pitie!^piepefavoritapple") == false
    @test check_if_last_char_is_a_letter("MeapeepleAppleleyey") == false
    @test check_if_last_char_is_a_letter("brownpie..") == false
    @test check_if_last_char_is_a_letter("apeepleApple \$%appple ppquiappple pie!  it?") == false
    @test check_if_last_char_is_a_letter("hquickthough") == false
    @test check_if_last_char_is_a_letter("dapplApple \$%appple pitie!dogs.ppitie!^pieefavoritequickapple pifoox\neick") == false
    @test check_if_last_char_is_a_letter("appplejump") == false
    @test check_if_last_char_is_a_letter("REVTbqcIZ") == false
    @test check_if_last_char_is_a_letter("ipit!ie!") == false
    @test check_if_last_char_is_a_letter("jTh e quick brown fox jumps ovepitie!^fish,jThepiepir zy app1le pitie!dogs.umThe quickapple pitie! brown fox jumps oapple piie!gs.ps") == false
    @test check_if_last_char_is_a_letter("the") == false
    @test check_if_last_char_is_a_letter("aThe quick brown fox juppiltie!^piejumpmp app1equswims.!ickkle pitie!dogso.pplx\ne") == false
    @test check_if_last_char_is_a_letter("pitie!dogHHello,d dMy favori\$%apppletse f\$%apppleThTTheeood is fish,jThe even though it swims.!s.") == false
    @test check_if_last_char_is_a_letter("apple pie... pitie!dogTs.oxr .is it?") == false
    @test check_if_last_char_is_a_letter("qupicekapple") == false
    @test check_if_last_char_is_a_letter("pitie!^pieefav\$%^poiwor1d!ieoritapple") == false
    @test check_if_last_char_is_a_letter("eThe qupappe pitie!ick bropwn fox jump app1le pitie!dogs.pitieppiltie!^pie!dogs!.") == false
    @test check_if_last_char_is_a_letter("piitie!dogs.ple") == false
    @test check_if_last_char_is_a_letter("ox\$MeapeepleAppleleyy%dgse^piwor1d!e") == false
    @test check_if_last_char_is_a_letter("piieewor1d!!") == false
    @test check_if_last_char_is_a_letter("appljThe quick brown fox jumps ovepitie!^fish,jThepiepiapplxr zy app1le pitiegs.umThe quickapple pitie! brown fox jumps oapple piie!s pitie!") == false
    @test check_if_last_char_is_a_letter("ApEuple \$%a ppple ppiltie!^pie") == false
    @test check_if_last_char_is_a_letter("swims.!.") == false
    @test check_if_last_char_is_a_letter("pitie!dogHHello,d dMy favori\$%apppletse food i\$%apppleThecaks fish,jThe even though it swims.!s.") == false
    @test check_if_last_char_is_a_letter("Hello,  d!") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.ppitie!^pieeifavoritequickapple") == false
    @test check_if_last_char_is_a_letter("The quick brown fox jumps over apppp1le pitie!dogs.") == false
    @test check_if_last_char_is_a_letter("qucqqk") == false
    @test check_if_last_char_is_a_letter("pitie!^pieefavoritequicMyykapple") == false
    @test check_if_last_char_is_a_letter("Apple \$%e^pieThe quick brown fox jumps over zy app1le pis.") == false
    @test check_if_last_char_is_a_letter("applApple \$le pitiepppie...ple pifoox\ne") == false
    @test check_if_last_char_is_a_letter("appppple1le pitie!") == false
    @test check_if_last_char_is_a_letter("pitie!dogs.pepitie!^pieefavoritequickapple") == false
    @test check_if_last_char_is_a_letter("hhox\$%^piwor1d!eapplx") == false
    @test check_if_last_char_is_a_letter("le") == false
    @test check_if_last_char_is_a_letter("Hello, wor1!djuomp !") == false
    @test check_if_last_char_is_a_letter("pitiegs.umThe") == false
    @test check_if_last_char_is_a_letter("appleApplepie... \$%appple ppiltie!^piejump pie.. or is it?") == false
    @test check_if_last_char_is_a_letter("Apple \$%appple ppipitie!^pie") == false
    @test check_if_last_char_is_a_letter("jusmps") == false
    @test check_if_last_char_is_a_letter("ppitie!sitie!dogs.pitie!dogs!.") == false
end
