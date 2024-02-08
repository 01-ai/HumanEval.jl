@testitem "048_is_palindrome_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "048_is_palindrome.jl"))
    @test is_palindrome("a") == true
    @test is_palindrome("ab") == false
    @test is_palindrome("abc") == false
    @test is_palindrome("abca") == false
    @test is_palindrome("racecar") == true
    @test is_palindrome("never odd or even") == false
    @test is_palindrome("step on no pets") == true
    @test is_palindrome("Was it a car or a cat I saw?") == false
    @test is_palindrome("radar") == true
    @test is_palindrome("refer") == true
    @test is_palindrome("bab") == true
    @test is_palindrome("aabc") == false
    @test is_palindrome("Was it a car or a cat I saw?refer") == false
    @test is_palindrome("Was it a car or a sacat I saw?") == false
    @test is_palindrome("aabca") == false
    @test is_palindrome("Was it a car ostep on no petsr a ca t I saw?") == false
    @test is_palindrome("Was ait a car or a sacat I saw?") == false
    @test is_palindrome("Was it a car orWas it a car or a cat I saw?refer a sacat I saw?") == false
    @test is_palindrome("reacecar") == false
    @test is_palindrome("aWas ait a car or a sacat I saw?b") == false
    @test is_palindrome("reWas it a car or a cat I saw?fer") == false
    @test is_palindrome("frefer") == false
    @test is_palindrome("aaWas it a car or a cat I saw?bWas it a car ostep on no petsr a ca t I saw?ca") == false
    @test is_palindrome("abbcc") == false
    @test is_palindrome("aaWas it a car or a cat I rbWas it a car ostep on no petsr a ca t I saw?ca") == false
    @test is_palindrome("abbc") == false
    @test is_palindrome("aaWas it a car or a cat I rbWas it a car ostep on no petsr a cafrefer t I saw?ca") == false
    @test is_palindrome("abcaabca") == false
    @test is_palindrome("areferaWas it a car or a cat I rbWas it a car ostep on no petsr a ca t I saw?ca") == false
    @test is_palindrome("rar") == true
    @test is_palindrome("Was it a car or I rbWas it a car ostep on no petsr a ca t I saw?cat I saw?refer") == false
    @test is_palindrome("babb") == false
    @test is_palindrome("never odd or  even") == false
    @test is_palindrome("abbbc") == false
    @test is_palindrome("never odd or e ven") == false
    @test is_palindrome("") == true
    @test is_palindrome("aa") == true
    @test is_palindrome("nXHRf") == false
    @test is_palindrome("Was it a car or a cat I saw?rr") == false
    @test is_palindrome("ranever oddWas it a car or a sacat I saw? venr") == false
    @test is_palindrome("babbabcca") == false
    @test is_palindrome("baabbcbbabcca") == false
    @test is_palindrome("aaWas it a car or a cat I saw?bWas it a car osteaabcp on no petsrr a ca t I saw?ca") == false
    @test is_palindrome("rereWas it a car or a cat I saw?feracecar") == false
    @test is_palindrome("aaacaracecar") == false
    @test is_palindrome("aWas ait never odd or evena car or a sacat I saw?b") == false
    @test is_palindrome("Waas it a car or a cat I saw?abc") == false
    @test is_palindrome("areferaWas it a car or a cat I rbWas it aa car ostep on no petsr a ca t I saw?ca") == false
    @test is_palindrome("rr") == true
    @test is_palindrome("baabbcbbbcca") == false
    @test is_palindrome("Was it a car orWas it a car or a cat I saw?r a sacat I saw?") == false
    @test is_palindrome("abbbWas it a car or I rbWas it a car ostep on no petsr a ca t I saw?cat I saw?referc") == false
    @test is_palindrome("bWas it a car ostep on no petsr a ca t I saw?abbabcca") == false
    @test is_palindrome("reWas it a car or a catw Ir saw?fer") == false
    @test is_palindrome("abb") == false
    @test is_palindrome("Was it a car or a cat I saw?referranever oddWas it a car or a sacat I saw? venr") == false
    @test is_palindrome("abbccc") == false
    @test is_palindrome("aaaabca") == false
    @test is_palindrome("Waas it a car Was it a car or a cat I saw?or a cat I saw?abc") == false
    @test is_palindrome("reWas it a car or a ccat I saw?fer") == false
    @test is_palindrome("reefer") == false
    @test is_palindrome("bWas it ?aa car ostw?abbabcca") == false
    @test is_palindrome("reWas it a car rereWas it a car or a cat I saw?feracecaror a ccat I saw?fer") == false
    @test is_palindrome("ba") == false
    @test is_palindrome("aaacar") == false
    @test is_palindrome("babbccaabbcbbabcca") == false
    @test is_palindrome("aaWas it a car or na cat I saw?bWas it a car ostep on no petsr a ca t I saw?ca") == false
    @test is_palindrome("reefrer") == false
    @test is_palindrome("areferaWas it a car or a cat I rbWas it a car ostep onareferaWas it a car or a cat I rbWas it a car ostep on no petsr a ca t I saw?ca no petsr a ca t I saw?ca") == false
    @test is_palindrome("racecrar") == false
    @test is_palindrome("racecreWas it a car or a ccat I saw?fer") == false
    @test is_palindrome("breWaes it a car rereWas it a car or a cat I saw?feracecaror a ccat I sawreefrer?fera") == false
    @test is_palindrome("Was it a car orWas it a car aor  a cat I saw?r a sacat I saw?") == false
    @test is_palindrome("abbbWas it a car oaaaabcar I rbWas it a car ostep on no petsr a ca t I saw?cat I saw?referc") == false
    @test is_palindrome("abbbWas it a car oaaaabcar I rbWas it a car ostep on no petsr a ca t I saw?cat aI saw?referc") == false
    @test is_palindrome("abbbbc") == false
    @test is_palindrome("raneaver oddWas itrefer a car or a sacat I saw? venr") == false
    @test is_palindrome("reWas it a car or a catw Ir sraw?fer") == false
    @test is_palindrome("baabbcbbabcbabbabccaca") == false
    @test is_palindrome("baabbcbbabcbabbcabccaca") == false
    @test is_palindrome("babbbbc") == false
    @test is_palindrome("Was it a cara orWas it a car aor  a cat I saw?r a sacat I saw?") == false
    @test is_palindrome("abcaabcbreWaes it a car rereWas it a car or a cat I saw?feracecaror a ccat I sawreefrer?feraa") == false
    @test is_palindrome("bWas it a car ostep on no a t I saw?abbabcca") == false
    @test is_palindrome("raaefer") == false
    @test is_palindrome("Was it aWas it a car orWas it a car or a cat I saw?r a sacat I saw? car or a cat I saw?") == false
    @test is_palindrome("abbbWas it a car oaaaabcar I rbWas it a car ostep on no petsr a ca t I saw?caI saw?referc") == false
    @test is_palindrome("raneveer oddWas it a car or a swacat I saw? venr") == false
    @test is_palindrome("reWas it a car or a catw Ir saw?ffer") == false
    @test is_palindrome("aaWas it a car or na cat I saw?bWas it a car ostep on no peabbbWas it a car oaaaabcar I rbWas it a car ostep on no petsr a ca t I saw?cat I saw?referca ca t I saw?ca") == false
    @test is_palindrome("rWas it a car ostep on no petsr a ca t I saw?eefer") == false
    @test is_palindrome("babcabccaca") == false
    @test is_palindrome("Was it a caraaWas it a car or a cat I rbWas it a car ostep on no petsr a ca t I saw?ca orWas it a car or a cat I saw?r a sacat I saw?") == false
    @test is_palindrome("baracecrarbbccaabbcbbabcca") == false
    @test is_palindrome("abbWaas it a car oabbbWasradar it a car oaaaabcar I rbWas it a car ostep on no petsr a ca t I saw?caI saw?refercbccc") == false
    @test is_palindrome("abaWas ait a car or a sacat I saw?bbcc") == false
    @test is_palindrome("abaaWas it a car or na cat I saw?bWas it a car ostep on no peabbbWas it a car oaaaabcar I rbWas it a car ostep on no petsr a ca t I saw?cat I saw?referca ca t I saw?cac") == false
    @test is_palindrome("racecWa ca t I saw?cat I saw?referrar") == false
    @test is_palindrome("raneveer oddWas step on no petsit a car or a swacat I sWas ait a car or a sacat I saw?aw? venr") == false
    @test is_palindrome("reaaefer") == false
    @test is_palindrome("12zZ2@@@@!3j  d3!@@@2Zz21") == false
    @test is_palindrome("A man, a plan, a canal: Panama") == false
    @test is_palindrome("Do geese see God?") == false
    @test is_palindrome("A man, a plan, a canal, Panama.") == false
    @test is_palindrome("Able was I ere I saw Elba.") == false
    @test is_palindrome("Taco cat") == false
    @test is_palindrome("Rats live on no evil star") == false
    @test is_palindrome("Step on no pets") == false
    @test is_palindrome("Evil is a name of a foeman, as I live.") == false
    @test is_palindrome("A man, a plan, a canal,  Panama.") == false
    @test is_palindrome("foeman,") == false
    @test is_palindrome("Taco cEvil is a name of a foeman, as I live.at") == false
    @test is_palindrome("Panama") == false
    @test is_palindrome("EvTaco cEvil is a name of a foeman, as I live.atil is a name of a foeman, as I live.") == false
    @test is_palindrome("Taco") == false
    @test is_palindrome("Evil") == false
    @test is_palindrome("A man, a plan, geesea canal: Panama") == false
    @test is_palindrome("or") == false
    @test is_palindrome("is") == false
    @test is_palindrome("Taco not") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3!@@@2Zz21oeman,") == false
    @test is_palindrome("Step osawn no pets") == false
    @test is_palindrome("A man,  plan, a canal: PanamTacoa") == false
    @test is_palindrome("Was it a c ar or a cat I saw?") == false
    @test is_palindrome("Taco cEvil is a name of a foeman, as I live.a") == false
    @test is_palindrome("Step") == false
    @test is_palindrome("12zZ2@@@@!3Taco notj  d3!@@@2Zz21") == false
    @test is_palindrome("12zZ2@@@@!@3Taco notj  d3!@@@2Zz21") == false
    @test is_palindrome("canal:") == false
    @test is_palindrome("12zZ2@@@@!3j  d3!@@@2name1") == false
    @test is_palindrome("A 12zZ2@@@@!3Tacoman, a plan, geesea canal: PanamaTaco not") == false
    @test is_palindrome("12zZ2@@@@!@3Taco notj  d3!@@@2DoZz21") == false
    @test is_palindrome("12zZ2@@@@!@3Taco") == false
    @test is_palindrome("notj") == false
    @test is_palindrome("A man, a plan, a erecaisnral,  Panama.") == false
    @test is_palindrome("A 12zZaTaco not") == false
    @test is_palindrome("Was it a car o r a cat I petssaw?") == false
    @test is_palindrome("Taco cEvil ies a name of a foeman, as I live.a") == false
    @test is_palindrome("lilve.at") == false
    @test is_palindrome("see") == false
    @test is_palindrome("God?") == false
    @test is_palindrome("li.lve.a.t") == false
    @test is_palindrome("d3!@@@2name1") == false
    @test is_palindrome("Tacogeese cEvil is a name of a foeman, as I live.a") == false
    @test is_palindrome("Able") == false
    @test is_palindrome("Evistarl") == false
    @test is_palindrome("A man,Taco cEvil is a name of a foeman, as I live.at a plan, geesea canal: Panama") == false
    @test is_palindrome("Able was I ere I wsaw Elba.") == false
    @test is_palindrome("ord3!@@@2Zz21oeman,") == false
    @test is_palindrome("StepElba. on no pets") == false
    @test is_palindrome("d3!@@@2Zz21oeman,") == false
    @test is_palindrome("12zZ2 @@@@!33j  d3!@@@2Zz21") == false
    @test is_palindrome("Stetp osawn no pets") == false
    @test is_palindrome("ere") == true
    @test is_palindrome("A 12zZ2@@@@!3Tacoman, a plan, geeseaa canal: PanamaTaconot") == false
    @test is_palindrome("Was it ap car o r a cat I petssaw?") == false
    @test is_palindrome("lEvil") == false
    @test is_palindrome("Was it a car or a ca?t I saw?") == false
    @test is_palindrome("geesea") == false
    @test is_palindrome("o not") == false
    @test is_palindrome("parssaw?") == false
    @test is_palindrome("o cEvilnot") == false
    @test is_palindrome("A man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama.") == false
    @test is_palindrome("al:") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3!@@@2Zeman,") == false
    @test is_palindrome("eere") == false
    @test is_palindrome("cEvilnot") == false
    @test is_palindrome("12zZ2") == false
    @test is_palindrome("Was it a car or a cat Ia saw?") == false
    @test is_palindrome("geeseaea") == false
    @test is_palindrome("nWA man, a plan, a erecaisnral,  Panama.sLmxhink") == false
    @test is_palindrome("satar") == false
    @test is_palindrome("A 12zZaTaco notfoeman,") == false
    @test is_palindrome("on") == false
    @test is_palindrome("Evisttarl") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3!@@@2eZeman,") == false
    @test is_palindrome("man,Taco") == false
    @test is_palindrome("12zZWas it a car or a cat Ia saw?") == false
    @test is_palindrome("oo not") == false
    @test is_palindrome("nWA man, a pmlan, a erecaisnral,  Panama.sLmxhink") == false
    @test is_palindrome("A man, a plan, a canali.lve.a.tl, Panama.") == false
    @test is_palindrome("A 12zZ2geeseaea@@@@!3Tacoman, a plan, geesea canal: PanamaTaco not") == false
    @test is_palindrome("Stetp awn no pets") == false
    @test is_palindrome("A 1zZaTaco notfoeman,") == false
    @test is_palindrome("Tacco") == false
    @test is_palindrome("Was it sawa car o r a cat I petssaw?") == false
    @test is_palindrome("vil") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3!@@@2Zzeman,") == false
    @test is_palindrome(" Able wliveas I ere I saw Elba.") == false
    @test is_palindrome("man,A man,  plan, a canal: PanamTacoaTaco") == false
    @test is_palindrome("lWas it ap car o r a cat I petssaw?i.lve.a.t") == false
    @test is_palindrome("TTacco") == false
    @test is_palindrome("12zZ2 @@@@!33j  d3!@@@z21") == false
    @test is_palindrome("PanamaTaco") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3!@@@@2Zz21oeman,") == false
    @test is_palindrome("d3!@@@2Zz21nama.") == false
    @test is_palindrome("f12zZ2@@@@!3") == false
    @test is_palindrome("pssawd3!@@@@2Zz21oeman,?") == false
    @test is_palindrome("no") == false
    @test is_palindrome("Tlive.Tacco") == false
    @test is_palindrome("A man, a plan, a erecaisnral,  Panama..") == false
    @test is_palindrome("lWas") == false
    @test is_palindrome("f,12zZ2@@@@!3j  d3!@@@2eZeman,") == false
    @test is_palindrome("d3!@@@2 Able wliveas I ere I saw Elba.name1") == false
    @test is_palindrome("sawa") == false
    @test is_palindrome("A man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Z.z21nama.") == false
    @test is_palindrome("oooA 1zZaTaco notefoeman, not") == false
    @test is_palindrome("A man,Taco cEvil is a name of a foeman, as Ii live.at a plan, geesea canal: Panama") == false
    @test is_palindrome("TTPanamTacoaTacoacco") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3of!@@@2Zzeman,") == false
    @test is_palindrome("Taco nott") == false
    @test is_palindrome("12zZ2@@@@!3Taco noca?ttj  d3!parssaw?@@@2Zz21") == false
    @test is_palindrome("12zZaTaco") == false
    @test is_palindrome("geese") == false
    @test is_palindrome("Panama.") == false
    @test is_palindrome("A a12zZ2geeseaea@@@@!3Tacoman, a plan, geesea canal: PanamaTaco not") == false
    @test is_palindrome("PanamTacoaTac") == false
    @test is_palindrome("Was it a car or  a cat I saw?") == false
    @test is_palindrome("d3!@@@2 ord3!@@@2Zz21oeman,Able wliveas I ere I saw Elba.name1") == false
    @test is_palindrome("@@@@!33j") == false
    @test is_palindrome("f12zZ2@@@man,A man,  plan, a canal: PanamTacoaTaco@!3") == false
    @test is_palindrome("d3!@@@@2Zz21oeman,") == false
    @test is_palindrome("Rats live on no evil starvil") == false
    @test is_palindrome("12zZaTcaco") == false
    @test is_palindrome("dd3!@@@2DoZz213!@@@2Zz21nama.") == false
    @test is_palindrome("Taocco") == false
    @test is_palindrome("12zZ2@@@@!@3Taco notj  d3!@@@2DoZz212Zz21oeman,") == false
    @test is_palindrome("Taco cEvil is a name of a foeman, as I elive.at") == false
    @test is_palindrome("geeseaa") == false
    @test is_palindrome("gese") == false
    @test is_palindrome("nottj") == false
    @test is_palindrome("A man, a plan, a cananWA man, a plan, a erecaisnral,  Panama.sLmxhinkma") == false
    @test is_palindrome("12zZWas") == false
    @test is_palindrome("Tac") == false
    @test is_palindrome("1oeman,") == false
    @test is_palindrome("d3!@@@2Zz21") == false
    @test is_palindrome("12zZ2 @@@@!33j  d3!@@@zz21") == false
    @test is_palindrome("A a12zZ2geeseaea@@@@!3Tacoman,a plan, geesea canal: PanamaTaco not") == false
    @test is_palindrome("S") == true
    @test is_palindrome("SS") == true
    @test is_palindrome("nWA man, a plan, a erStep osawn no petsecaisnral,  Panama.sLmxahink") == false
    @test is_palindrome("ee") == true
    @test is_palindrome("SS12zZ2@@@@!@3Taco") == false
    @test is_palindrome("not") == false
    @test is_palindrome(" canal:Able wliveas I ere I saw Elba.") == false
    @test is_palindrome("A man, a plaWas it sawa car o r a cat I petssaw?n, a erecaisnral,  Panama.") == false
    @test is_palindrome("of") == false
    @test is_palindrome("SSS") == true
    @test is_palindrome("seeoo not") == false
    @test is_palindrome("Was") == false
    @test is_palindrome("A man,Taco cEvil i12zZ2@@@@!@3Tacos a name of a foeman, as I live.at a plan, geesea canal: Panama") == false
    @test is_palindrome("on12zZ2@@@@!3j  d3!@@@2Zz21") == false
    @test is_palindrome("sis") == true
    @test is_palindrome("f,12zZ2@@@@!3j  d3!@@e@2eZeman,") == false
    @test is_palindrome("A man, a plaWas it sawa car o r a cat I petssaw?n, a erecaisnral,  Panama.Panama") == false
    @test is_palindrome("EvTaco cEvil is a name of a foeman, as I live.atil is a name ofoeman, as I live.") == false
    @test is_palindrome("m1oeman,") == false
    @test is_palindrome("sYvzbv") == false
    @test is_palindrome("geesd3!@@@@2Zz21oeman,aa") == false
    @test is_palindrome("saw?") == false
    @test is_palindrome("d3!@@@z21") == false
    @test is_palindrome("lW") == false
    @test is_palindrome("live.at") == false
    @test is_palindrome("12zZ2 @@@@!33j  d3!@ @@zz21") == false
    @test is_palindrome("A man,Taco cEvil i12zZ2@@@@!@3Tacos a name of a foeman, as I live.at a plannWA man, a pmlan, a erecaisnral,  Panama.sLmxhink, geesea canal: Panama") == false
    @test is_palindrome("Panaama") == false
    @test is_palindrome("f12zZ2@@@man,A") == false
    @test is_palindrome("Taococo") == false
    @test is_palindrome("A man,Taco cEvil is a ooname of a foeman, as I live.at a plan, geesea canal: Panama") == false
    @test is_palindrome("A man,Taco cEvil i12zZ2@@@@!@3Tacos a name of a foeman, as I live.at a plaStep on no pets, geesea canal: Panama") == false
    @test is_palindrome("cEvilcnot") == false
    @test is_palindrome("12zZ2co") == false
    @test is_palindrome("canal:Able") == false
    @test is_palindrome("12zZ2 @@@@!33jPanama..@@@z21") == false
    @test is_palindrome("12zZ2@@@@!3j") == false
    @test is_palindrome("EvElba.name1il") == false
    @test is_palindrome("EvisttcananWAarl") == false
    @test is_palindrome("12zZ2@@@@!@3Taco notj Z d3!@@@2Zz21") == false
    @test is_palindrome("Was it sawa car o r a cat I petssaStep on no petsw?") == false
    @test is_palindrome("nootj") == false
    @test is_palindrome("Elba.") == false
    @test is_palindrome("Wasc it a car or  a cat I saw?") == false
    @test is_palindrome("PanamTacoaTaco") == false
    @test is_palindrome("@@@@!3j") == false
    @test is_palindrome("m112zZWasoeman,") == false
    @test is_palindrome("A man, a plan, a cananWA man, a plan, a erecaisnral,  Panama.sLmxhinkmaor") == false
    @test is_palindrome("wsaw") == false
    @test is_palindrome("d3!@@@2me1") == false
    @test is_palindrome("Tacogeese cEvil is a namf12zZ2@@@man,Ae of a foeman, as I live.a") == false
    @test is_palindrome("12zZ2@@@@!@3Taco notj  d3!@@@2DoZz2112zZ2@@@@!@3Taco notj  d3!@@@2DoZz212Zz21oeman,") == false
    @test is_palindrome("eenWA man, a plan, a erStep osawn no petsecaisnral,  Panama.sLmxahink") == false
    @test is_palindrome("d3!@@@2Zzeman,") == false
    @test is_palindrome("1Ws") == false
    @test is_palindrome("live.a") == false
    @test is_palindrome("nWA man, a plan, a erecaisnral,  Panama.shink") == false
    @test is_palindrome("Was it at I petssaw?") == false
    @test is_palindrome("Panama.Was it a car or  a cat I saw?") == false
    @test is_palindrome("Taco cEvil is a name of a foeman, as IcananWA live.at") == false
    @test is_palindrome("f12zZ2@") == false
    @test is_palindrome("live") == false
    @test is_palindrome("d3!@@@@2Zz213oeman,") == false
    @test is_palindrome("12zZ2@@@@A man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama.!@3Taco 2notj  d3!@@@2DoZz21") == false
    @test is_palindrome("A man, a pl@@@@!33jan, geesea canala: Panama") == false
    @test is_palindrome("livee.a") == false
    @test is_palindrome("12zZ2@@@@!@3TacoTacogeese cEvil is a namf12zZ2@@@man,Ae of a foeman, as I live.a no@tj Z d3!@@@2Zz21") == false
    @test is_palindrome("1zZaTaco") == false
    @test is_palindrome("Dd3!@@@2DoZz21o") == false
    @test is_palindrome("PanamTaacoaTaco") == false
    @test is_palindrome("Tacogeesea cEvil is a namf12zZ2@@@man,Ae of a foemplaWasan, as I live.a") == false
    @test is_palindrome("l.a") == false
    @test is_palindrome("erecaisnral,Dd3!@@@2DoZz21o") == false
    @test is_palindrome("A 12zZ2@@@@!3Tacoman, a plan, geesea canal: PanamaTac@o") == false
    @test is_palindrome("d3!@@@2Was it sawa car o r a cat I petssaStep on no petsw?DoZz21") == false
    @test is_palindrome("n12zZ2@@@@!3Taco notj  d3!@@@2Zz21o") == false
    @test is_palindrome("ooA man, a plan, a canali.lve.a.tl, Panama.") == false
    @test is_palindrome("cEviilnot") == false
    @test is_palindrome("d3!@@@2Zeman,") == false
    @test is_palindrome("12zZ2@@@@!3orTaco noca?ttj  d3!parssaw?@@@2Zz21") == false
    @test is_palindrome("Wassatar it at I petssawAble was I ere I saw Elba.?") == false
    @test is_palindrome("12zZ2 @@@@!33j!@@@z21") == false
    @test is_palindrome("EvTaco cEvil is a name of a foeman, aPanamaTacos I live.atil is a name ofoeman, as I live.") == false
    @test is_palindrome("ord3!@@@2Zz21oeman,Able") == false
    @test is_palindrome("A man,  plan, a canal: Panaawn,moa") == false
    @test is_palindrome("Tacooo") == false
    @test is_palindrome("A man, a plan, a ereacaisnral,  Panama.") == false
    @test is_palindrome("manf12zZ2@@@man,A,Taco") == false
    @test is_palindrome("d3!@@@Taco cEvil is a name of a foeman, as I live.aZz21oeman,") == false
    @test is_palindrome("d3!@@@@2Zz213dd3!@@@2DoZz213!@@@2Zz21nama.oeman,") == false
    @test is_palindrome("1WeenWA man, a plan, a erStep osawn no petsecaisnral,  Panama.sLmxahinks") == false
    @test is_palindrome("Tacot ct") == false
    @test is_palindrome("A man, a plan, geesea canal: Panamaco") == false
    @test is_palindrome("plan,") == false
    @test is_palindrome("A man, a plaA a12zZ2geeseaea@@@@!3Tacoman,a plan, geesea canal: PanamaTaco notWas it sawa car o r a cat I petssaw?n, a erecaisnral,  Panama.") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3,") == false
    @test is_palindrome("A a12acoman, a splasn, geesea canal: PanamaTaco not") == false
    @test is_palindrome("A man, a plan, a cananWA mn, a plan, a erecaisnral,  Panama.sLmxhinkmaor") == false
    @test is_palindrome("c") == true
    @test is_palindrome("d3!@@@Taco cEvil is a name of a foemord3!@@@2Zz21oeman,Ablean, as I live.aZz21oeman,") == false
    @test is_palindrome("Tca?taco cEvil is a name of a foeman, as I live.at") == false
    @test is_palindrome("cl:") == false
    @test is_palindrome("1WeenWPanama..A man, a plan, a erStep osawn no petsecaisnral,  Panam a.sLmxahinks") == false
    @test is_palindrome("12zZf12zZ2@@@man,A2@@@@!3Taco noca?ttj  d3!parssaw?@@@2Zz21") == false
    @test is_palindrome("Tacaot") == false
    @test is_palindrome("Ia") == false
    @test is_palindrome("Panama.sLmxhinkamaor") == false
    @test is_palindrome("a12zZ2g@eeseaea@@@@!31Tacoman,") == false
    @test is_palindrome("Ta co noat") == false
    @test is_palindrome("A man, a plaWas it sawa car o r a cgeeseaeaat I petssaw?n, a erecaisnral,  Panama.Taco cEvil ies a name of a foeman, as I live.aPanama") == false
    @test is_palindrome("ges") == false
    @test is_palindrome("on12zZ2@@@@!3j Z d3!@@@2Zz21") == false
    @test is_palindrome("o cEvilnlEvilot") == false
    @test is_palindrome("Able was I  ere I wsaw Elba.") == false
    @test is_palindrome("12zZ2@@@@A man, a   d3!@@@2DoZz21") == false
    @test is_palindrome("manf12zZ2@@@manTaco cEvil is a name of a foeman, as IcananWA live.at") == false
    @test is_palindrome("12zZ2 @@@@!33j  d3!@@@SSzz21") == false
    @test is_palindrome("pmlan,,") == false
    @test is_palindrome("notefoeman,") == false
    @test is_palindrome("noc") == false
    @test is_palindrome("EvTaco cEvil is a name of a foeman, as I live.atil is a name ofoeman,as I live.") == false
    @test is_palindrome("StetA man,  plan, a canal: PanamTacoap osawn no pets") == false
    @test is_palindrome("live.aZz21oeman,") == false
    @test is_palindrome("SSSoo notS") == false
    @test is_palindrome("geseeseaea") == false
    @test is_palindrome("12zZ2geeseaea@@@@!3Tacoman,") == false
    @test is_palindrome("Elba.?") == false
    @test is_palindrome("erecainWAsnral,Dd3!@@@2DoZz21o") == false
    @test is_palindrome("d3!@@@nWA man, a plan, a erStep osawn no petsecaisnral,  Panama.sLmxahink2Zeman,") == false
    @test is_palindrome("Panama.sLmf12zZ2@@@@!3j  d3!@@@2Zzeman,or") == false
    @test is_palindrome("12zZ2@@@@!3Taco") == false
    @test is_palindrome("12zZ2@@@@A man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama.!@3Tacoman,Taco d3!@@@2DoZz21") == false
    @test is_palindrome("Was  a c ar or a cat I saw?") == false
    @test is_palindrome("wliveas") == false
    @test is_palindrome("ll.a") == false
    @test is_palindrome(" Able wliveas  I ere I saw Elba.") == false
    @test is_palindrome("eenWA man, a plan, a erStep osawn no pets12zZWas it a car or a cat Ia saw?ecaisnral,  Panama.sLmxahink") == false
    @test is_palindrome("12zZ2@@@@!@3TacPanamTacoaTacan,") == false
    @test is_palindrome("pets,f12zZ2@@@man,A man,  plan, a canal: PanamT!3") == false
    @test is_palindrome("iis") == false
    @test is_palindrome("oTaococo") == false
    @test is_palindrome("f12zZ2@@@@!3j  d3!@@an,") == false
    @test is_palindrome("12zZ2@@@@!@3TacZz2112zZ2@@@@!@3Taco notj  d3!@@@2DoZz212Zz21oeman,") == false
    @test is_palindrome("Taco cEvil is a name of a foeman, as I live12zZ2@@@@!3orTaco.a") == false
    @test is_palindrome("erecaisn@ral,Dd3!@@@2DoZ,z21o") == false
    @test is_palindrome("geese12zZ2@@@@!3j  d3!@@@2Zz21a") == false
    @test is_palindrome("Tacogeese cEvil is a name od3!@@@zz21f a foeman, ass I live.a") == false
    @test is_palindrome("man,ATacogeesea cEvil is a namf12zZ2@@@man,Ae of a foemplaWasan, as I live.a man,  plan, a canal: PanamTacoaTaco") == false
    @test is_palindrome("ll.aGod?") == false
    @test is_palindrome("A man, a plaWas it sawa car o r a cat I petssaw?n, a erecaisnral,  Panama") == false
    @test is_palindrome("was") == false
    @test is_palindrome("Tacog live.a") == false
    @test is_palindrome("f12zZ!3") == false
    @test is_palindrome("d3!@@@@2Zz21oemnamean,") == false
    @test is_palindrome("Stetp awnA man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama. no pets") == false
    @test is_palindrome("foemplaWasan,") == false
    @test is_palindrome("Evil SSis a name of a foeman, as I live.") == false
    @test is_palindrome("122zZ2") == false
    @test is_palindrome("petssaw?n,") == false
    @test is_palindrome("12ozZ2@@@@A man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama.!@3Taco 2notj  d3!@@@2DoZz21") == false
    @test is_palindrome("d3!@@@TTacco2 Able wliv I ere I saw Elba.name1") == false
    @test is_palindrome("f12zZf12zZ2@@@man,A2@@@@!3Taco noca?ttj  d3!parssaw?@@@2Zz21") == false
    @test is_palindrome("Panama.d3!@@@2Zz21nama.a!@3Taco") == false
    @test is_palindrome("man,A man,  plan, a d3!@@@2Was it sawa car o r a cat I petssaStep on no petsw?DoZz21amTacoaTaco") == false
    @test is_palindrome("1WeenWPanama..A") == false
    @test is_palindrome("saw?petsecaisnral,") == false
    @test is_palindrome("Tacogeese cEvA a12acoman, a splasn, geesea canal: PanamaTaco notil is a name od3!@@@zz21f a foeman, ass I live.a") == false
    @test is_palindrome("1WeeenWA man, a plans, a erStep osawn no hpetsecaisnral,  Panama.sLmxahinks") == false
    @test is_palindrome("awa") == true
    @test is_palindrome("Aea seecanal: Panama") == false
    @test is_palindrome("orTTacco") == false
    @test is_palindrome("cEcvilcnot") == false
    @test is_palindrome("EvisttcananWAaarl") == false
    @test is_palindrome("plannWA") == false
    @test is_palindrome("Panama..") == false
    @test is_palindrome("Panama.sLmxhinkmaor") == false
    @test is_palindrome("si") == false
    @test is_palindrome("Dd3!1o") == false
    @test is_palindrome("12zZ2@@@@!@3Taco notj  d3!@@@2Zzparssaw?21") == false
    @test is_palindrome("canacEvilnlEvilotl:Able") == false
    @test is_palindrome("saw?petseA man, a plan, a ereacaisnral,  Panama.caisnral,") == false
    @test is_palindrome("A 12zZaTaco noTacoooman,") == false
    @test is_palindrome("A man, a plan, a cananWA man, a plan, a erecaisnral,  Panamar.sLmxhinkmaor") == false
    @test is_palindrome("12zZ2@@@@!@3Taco notj  d3!@@@2DoZz2") == false
    @test is_palindrome("Evil is a name of a foeman, as I d3!@@@SSzz21live.") == false
    @test is_palindrome("A man,  plan, aTacot ct canal: Panaawn,moa") == false
    @test is_palindrome("n") == true
    @test is_palindrome("orrTaTacco") == false
    @test is_palindrome("eEvisttcananWAarlere") == false
    @test is_palindrome("Dd3!@@@212ozZ2@@@@A man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama.!@3Taco 2notj  d3!@@@2DoZz21DoZz21o") == false
    @test is_palindrome("Panama.d3!@@@z21") == false
    @test is_palindrome("Was it sawa car o r a cat I petssaStep on no pets w?") == false
    @test is_palindrome("nnn") == true
    @test is_palindrome("12zZ2@@@@!@3Taco notj  d3!@@@@2Zz21") == false
    @test is_palindrome("d3!@@@@2Zz213oemaan,") == false
    @test is_palindrome("Tacoged3!@@@@2Zz213oemaan,ese cEvil is a name of a foeman, as I live.a") == false
    @test is_palindrome("manf12zZ2@@@amanTaco") == false
    @test is_palindrome("A man, a plan, a canaanWA mn, a plan, a erecaisnral,  Panamar.sLmxhinkmaor") == false
    @test is_palindrome("man,ATacogeesea") == false
    @test is_palindrome("Tacogeeseman,A cEvil is a namf12zZ2@@@man,Ae of a foeman, as I live.a") == false
    @test is_palindrome("Panama.sLmxhinkma") == false
    @test is_palindrome("Tace od3!@@@zz21f a foeman, ass I live.a") == false
    @test is_palindrome("Tacogeese cEvil is ca namf12zZ2@@@man,Ae of a foeman, as I live.a") == false
    @test is_palindrome("A man,  plan,, a canal: PanamTacoa") == false
    @test is_palindrome("A man, a plan,, geesea canal: Panama") == false
    @test is_palindrome("llW") == false
    @test is_palindrome("A man, a plan, a erec2notjaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama.") == false
    @test is_palindrome("man,A man,  plan, a canalA a12zZ2geeseaea@@@@!3Tacoman,a plan, geesea canal: PanamaTaco not: PanamTacoaTaco") == false
    @test is_palindrome("EvTaco cEvil is a name of a foeman, as I live.atil is a nam12zZ2@@@@!3Taco noca?ttj  d3!parssaw?@@@2Zz21e ofoeman, as I live.") == false
    @test is_palindrome("A man, a plaWas it sawa car o r a d3!@@@Tacocat I petssaw?n, a erecaisnral,  Panama.Panama") == false
    @test is_palindrome("geesd3!@@@noc@2Zz21oeman,aa") == false
    @test is_palindrome("TTca?taco cEvil is a name of a foeman, as I live.ata") == false
    @test is_palindrome("a12zZ2geeTaco cEvil is a name of a foeman, as IcananWA live.atn,a") == false
    @test is_palindrome("Evil is a name of Was it ap car o r a cat I petssaw?1l.") == false
    @test is_palindrome("Ta tco noat") == false
    @test is_palindrome("A 12zZ2geeseaea@@@@!3Tacoman,a a plan, geesea canal: PanamaTaco not") == false
    @test is_palindrome("Rats live on no rvil") == false
    @test is_palindrome("A man,nWA man, a plan, a erecaisnral,  Panama.shink  plan, a canal: Panaawn,moa") == false
    @test is_palindrome("1WeAanama..A") == false
    @test is_palindrome("it") == false
    @test is_palindrome("Was it sawa car o r a cat I petrssaSStep on no petsw?") == false
    @test is_palindrome("no@tj") == false
    @test is_palindrome("12zZaA man,Taco cEvil i12zZ2@@@@!@3Tacos a name of a foeman, as I live.at a plannWA man, a pmlan, a erecaisnral,  Panama.sLmxhink, geesea canal: PanamaTcaco") == false
    @test is_palindrome("livea") == false
    @test is_palindrome("Panama.sLmxahink2Zeman,") == false
    @test is_palindrome("1zZczaTaco") == false
    @test is_palindrome("Was it a car or a cat ") == false
    @test is_palindrome("geesd3!@@@noc@2Zz21oea") == false
    @test is_palindrome("A mf12zZ2@@@@!3j  d3!@@@2Zeman,an, a plan, a cananWA man, a plan, a d3!@@e@2eZeman,erecaisnral,  Panamar.sLmxhinkmaor") == false
    @test is_palindrome("lWas it ap car ol r a cat I petssaw?i.lve.a.t") == false
    @test is_palindrome("geesd3!@@@noc@2Zz21oemaaa") == false
    @test is_palindrome("man,ATacoeesea") == false
    @test is_palindrome("eEvisattcanarlere") == false
    @test is_palindrome("12zZ2@d3!@@@Tacocat@@@A man, a   d3!@d3!@@@2DoZz2112zZ2@@@@!@3Taco1") == false
    @test is_palindrome("EvTaco cEvil is a name of a foeman, aPanamaTacos I live.atil is a namofoeman, as I live.") == false
    @test is_palindrome("pml,an,,") == false
    @test is_palindrome("A man, a plan, a erec2notjaisnral,  Pa12zZ2@@@@!a@3Evil is a name of a foeman, as I d3!@@@SSzz21live.Taco notj  d3!@@@2Zz21nama.") == false
    @test is_palindrome("canalA") == false
    @test is_palindrome("pannWA") == false
    @test is_palindrome("Panama.sLmxad3!@@@Tacocathink2Zeman,") == false
    @test is_palindrome("erecainA man, a plan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Z.z21nama.WAsnral,Dd3!@@@2DoZz21o") == false
    @test is_palindrome("A man,nWA man, a plan, a erecaisnral,  Panama.shink  plan, a canal: Panaawwn,moa") == false
    @test is_palindrome("ofoeman,as") == false
    @test is_palindrome("Panama.sLmxhink,") == false
    @test is_palindrome("EvTaco cA man, a plan, a canaanWA mn, a plan, a erecaisnral,  Panamar.sLmxhinkmaorEvil is a name of a foeman, as I li ve.atil is a name ofoeman, as I live.") == false
    @test is_palindrome("A man, a plaA a12zZ2geeseaea@@@@z!3Tacoman,a plan, geesea canal: PanamaTaco notWas it sawa car o r a caat I petssaw?n, a erecaisnral,  Panama.") == false
    @test is_palindrome("cEviiA man, a plaWas it sawa car o r a d3!@@@Tacocat I petssaw?n, a erecaisnral,  Panama.Panamalnot") == false
    @test is_palindrome("f12zZ2@@@man,A man,  plan, a canal: PcoaTaco@!3") == false
    @test is_palindrome("I") == true
    @test is_palindrome("A man,  plan, a cl: PanamTacoa") == false
    @test is_palindrome("A man, a plan,. a canal, Panama.") == false
    @test is_palindrome("12zZZ2@@@@!@3Taco notj  d3!@@@@2Zz21") == false
    @test is_palindrome("on12zZ2@@@@!3j  d3!@@@ooname2Zz21") == false
    @test is_palindrome("Panama.Was") == false
    @test is_palindrome("man,ATacogeesea cEvil is a namf12zZ2@A man, a plaWas it sawa car o r a cat I petssaw?n, a erecaisnral,  Panama@@man,Ae of a foemplaWasan, as I live.a man,  plan, a canal: PanamTacoaTaco") == false
    @test is_palindrome("iStepis") == false
    @test is_palindrome("Panama.asLmxhinkma") == false
    @test is_palindrome("wssaw") == false
    @test is_palindrome("LWzOuT") == false
    @test is_palindrome("1ereacaisnral,zZczaTaco") == false
    @test is_palindrome("planl,") == false
    @test is_palindrome("TacaotA man,nWA man, a plan, a erecaisnral,  Panama.shink  plan, a canal: Panaawn,moa") == false
    @test is_palindrome("A 12zZ2geeseaea@@@@!f12zZ2@@@@!3j  d3!@@@2eZeman,3Tacoman, a plan, geesea canal: PanamaTaco not") == false
    @test is_palindrome("Panaaama") == false
    @test is_palindrome("ggese") == false
    @test is_palindrome("Tacogeesea") == false
    @test is_palindrome("12zZaTacco") == false
    @test is_palindrome("petsesaw?n,") == false
    @test is_palindrome("Panaf12zZ2@@@@!3j  d3!@@@2Zzeman,ma.Panamalnot") == false
    @test is_palindrome("PanPama") == false
    @test is_palindrome("d3!@@@Taco cEvvil is a name of a foeman, as I live.aZz21oeman,") == false
    @test is_palindrome("nnWA man, a plan, a erecaisanral,  Panama.sLmxhink") == false
    @test is_palindrome("EvisWas it sawa car o r a cat I petssaw?nWAarl") == false
    @test is_palindrome("d3!@@@2@DoZz2") == false
    @test is_palindrome("erre") == true
    @test is_palindrome("Panama.sLmxhhink,") == false
    @test is_palindrome("live.ata") == false
    @test is_palindrome("A man, a p12zZ2@d3!@@@Tacocat@@@A man, a   d3!@d3!@@@2DoZz2112zZ2@@@@!@3Taco1lan, a canal,  Panama.") == false
    @test is_palindrome("parssawa?") == false
    @test is_palindrome("sapw?petsecaisnral,") == false
    @test is_palindrome("@@@@EvTaco!33j") == false
    @test is_palindrome("Evivl") == false
    @test is_palindrome("lvEvil") == false
    @test is_palindrome("petrssaSStep") == false
    @test is_palindrome("lofoeman,W") == false
    @test is_palindrome("dd3!@@@2DoZz213!@@@2Zz21naPanama.sLmxhinkma.") == false
    @test is_palindrome("ld3!@@@2Zz21nama.l.a") == false
    @test is_palindrome("live.atil") == false
    @test is_palindrome("d3!@@@Taco cEvvil is a name of aPanama.sLmf12zZ2@@@@!3j  d3!@@@2Zzeman,or foeman, as I live.aZz21oeman,") == false
    @test is_palindrome("12zZZ2 @@@@!@33j  d3!@@@zz21") == false
    @test is_palindrome("no1WeeenWA man, a plans, a erStep 1zZczaTacoosawn no hpetsecaisnral,  Panama.orrTaTaccoks") == false
    @test is_palindrome("cEivil") == false
    @test is_palindrome("Able was I Iiere I saw Elba.") == false
    @test is_palindrome("gaQLMzyB") == false
    @test is_palindrome("p12zZ2@d3!@@@Tacocat@@@@A") == false
    @test is_palindrome("Iiere") == false
    @test is_palindrome("Dd3!@@@212ozZ2@@@@A man, a plZan, a erecaisnral,  Pa12zZ2@@@@!@3Taco notj  d3!@@@2Zz21nama.!@3Taco 12zZ2@@@@!@3Taco2notj  d3!@@@2DoZz21DoZz21o") == false
    @test is_palindrome("leivee.a") == false
    @test is_palindrome("Taco cEvil ies a namman,ATacogeesea cEvil is a namf12zZ2@@@man,Ae of a foemplaWasan, as I live.a man,  plan, a canal: PanamTacoaTacoe of a foeman, as I live.a") == false
    @test is_palindrome("live.atn,a") == false
    @test is_palindrome("d3!@@@2Z.z21nama.WAsnral,Dd3!f12zZ2@@@@!3j  d3!@@@2Zz21oeman,@@@2DoZz21o") == false
    @test is_palindrome("man,nWA") == false
    @test is_palindrome("on12zZ2@@@@!3j Z d3!@@@@2Zz21") == false
    @test is_palindrome("r") == true
    @test is_palindrome("Panama.caisnral,") == false
    @test is_palindrome("SSS starviloo notS") == false
    @test is_palindrome("A man,Taco cEvil is a name of a foeman, as I live.at a plan, geesea canal: Panamalive.at") == false
    @test is_palindrome("12zZf12zZ2@@@man,A2@@@@!3Taco noca?ttj  d3!paA man,Taco cEvil i12zZ2@@@@!@3Tacos a name of a foeman, as I live.at a plannWA man, a pmlan, a erecaisnral,  Panama.sLmxhink, geesea canal: Panamarssaw?@@@2Zz21") == false
    @test is_palindrome("EvisWas") == false
    @test is_palindrome("12zZZ2") == false
    @test is_palindrome("cEcvilccnot") == false
    @test is_palindrome("e.a") == false
    @test is_palindrome("A man, a plan, geesea canal:a Panamaco") == false
    @test is_palindrome("EDBeGUgzCE") == false
    @test is_palindrome("PanamaTaconotS") == false
    @test is_palindrome("erPanama.Panamalnotre") == false
    @test is_palindrome("12zZ12") == false
    @test is_palindrome("hpetsecaisnral,122zZ2") == false
    @test is_palindrome("Dere") == false
    @test is_palindrome("WRiQwNNUK") == false
    @test is_palindrome("man,ATacoge12zZ2geeseaea@@@@!3Tacoman,efoemord3!@@@2Zz21oeman,AAblean,sea") == false
    @test is_palindrome("12zZaTaccliveo") == false
    @test is_palindrome("Panama.d3!@@@2Zzeman,ma.PanamalnotsLmxhink,") == false
    @test is_palindrome("Able was I ere I saws Elba.") == false
    @test is_palindrome("d3!@@@Ta") == false
    @test is_palindrome("A 12zZs2geeseaea@@@@!f12zZ2@@@@!3j, geescanal: PanamaTaco not") == false
    @test is_palindrome("12zZ2@@@@!@3TacoTacogeese cEvil is a na12zZ2@@@man,Ae of a foeman, as I live.a no@tj Z d3!@@@2Zz21") == false
    @test is_palindrome("Step osawn no pePanPamats") == false
    @test is_palindrome("A man,  plan, a canal: PanamTacA man,Taco cEvil i12zZ2@@@@!@3Tacos a name of a foeman, as I live.at a plan, geesea canal: Panamaa") == false
    @test is_palindrome("awaa") == false
    @test is_palindrome("2notjWassattar") == false
    @test is_palindrome("n12zZ2@@@@!3Tacto notj  d3!@@@2Zz12zZ2@d3!@@@Tacocat@@@A man, a   d3!@d3!@@@2DoZz2112zZ2@@@@!@3Taco121o") == false
    @test is_palindrome("pets,f12zZ2@@@man,A") == false
    @test is_palindrome("a12zZ2geeseaea@@@@!3Tacoman,") == false
    @test is_palindrome("lofWoeman,W") == false
    @test is_palindrome("ma12zZ2geeseaea@@@@!3Tacoman,") == false
    @test is_palindrome("12zZ2@@@@!@3TacZz2112zZ2@@@@!@3Taco") == false
    @test is_palindrome("d3!@@@2 ord3!a@@@2Zz21oeman,Able wliveas I ere I saw Elba.name1") == false
    @test is_palindrome("Tacogeeseman,A cEvil is a namf12zZ2@@@man,Ae of a foeman, asa I live.a") == false
    @test is_palindrome("Tacno@tjo") == false
    @test is_palindrome("canalpetssawAbleA") == false
    @test is_palindrome("star") == false
    @test is_palindrome("A 12zZ2geeseaea@@@@!3Tacoman,d3!@@@2name1a a plan, geesea canal: PanamaDoTaco not") == false
    @test is_palindrome("TlivA man, a plan, geesea canal:a Panamacoe.Tacco") == false
    @test is_palindrome("1212zZ2@@@@!@3Taco notj  d3!@@@2DoZz21zZ2@@@@!3Taco") == false
    @test is_palindrome("ca?t") == false
    @test is_palindrome("a12zZ2geeseaea@@@@z!3Tacoman,aLL") == false
    @test is_palindrome("ca") == false
    @test is_palindrome("man,ATacogeesea cEvil is a namf12zZ2@@@man,Ae of a foemplaWasan, as I live.a man,  plan, a canal: PanamTacoageesd3!@@@noc@2Zz21oeaToaco") == false
    @test is_palindrome("12zZ2@@@@!@3TacZz2112zZ2@@@@!@3Taco notj  d3!@@@2DoZzo212Zz21oeman,") == false
    @test is_palindrome("f,12zZ2@d3!@@@2eZeman,") == false
    @test is_palindrome("d3!@@@2DoZz2112zZ2@@@@!@3Taco") == false
    @test is_palindrome("d3!parssaw?@@@2Zz21e") == false
    @test is_palindrome("cEcvilcd3!@@@2 ord3!a@@@2Zz21oeman,Able wliveas I ere I saw Elba.name1") == false
    @test is_palindrome("f12zZ2@@@@!live12zZ2@@@@!3orTaco.a3j  d3!@@@2eZeman,") == false
    @test is_palindrome("seeoo ntot") == false
    @test is_palindrome("ld3!Z@@@2Zz21nama.l.a") == false
    @test is_palindrome("a12zZ2geStepElba.eTaco cEvil is a name 1WeenWPanama..A man, a plan, a erStep osawn no petsecaisnral,  Panam a.sLmxahinksf a foeman, as IcananWA live.atn,a") == false
    @test is_palindrome("taco") == false
    @test is_palindrome("Stetp osawn no peerStepts") == false
    @test is_palindrome("1zZczaTa1WeenWPanama..A man, a plan, a erStep osawn no petsecaisnral,  Panam a.sLmxahinksco") == false
    @test is_palindrome("md3!@@@2Zeman,Tacoe2notjWassattaresea") == false
    @test is_palindrome("lEvilf12zZ2@@@man,A") == false
    @test is_palindrome("manf12zZ2@@@manTaco") == false
    @test is_palindrome("leiv12zZaTaccoee.a") == false
    @test is_palindrome("EvTaco cEvil is a name of a foeman, as I live.atil is a nam12zZ2@@@@!3Taco noca?ttj  d3!parssaw?@@@2Zz21e ofoeman, as I live.Tacat") == false
    @test is_palindrome("saw?p,etsecaisnriisal,") == false
    @test is_palindrome(" ") == true
    @test is_palindrome("!") == true
    @test is_palindrome("  ") == true
    @test is_palindrome("\t") == true
    @test is_palindrome("\n") == true
    @test is_palindrome("\r") == true
    @test is_palindrome("   ") == true
    @test is_palindrome("z") == true
    @test is_palindrome("Able was I erel I saw Elba.") == false
    @test is_palindrome("Taco catgeese") == false
    @test is_palindrome("12zZ2@@@@!j3j") == false
    @test is_palindrome("A man, a plan, Pa canal, Panama.") == false
    @test is_palindrome("12zZ2@@3@@!j3j") == false
    @test is_palindrome("12zZ2@@3@@!jfoeman,3j") == false
    @test is_palindrome("12zZ2@@@@!3j  12zZ2@@@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("A") == true
    @test is_palindrome("A man, a plan, Pa canal, Pana.ma.") == false
    @test is_palindrome("12zZ2@@@evilj") == false
    @test is_palindrome("Do geese see Go") == false
    @test is_palindrome("cat") == false
    @test is_palindrome("12@zZ2@@@@!3j  12zZ2Panama21") == false
    @test is_palindrome("live.") == false
    @test is_palindrome("Rats") == false
    @test is_palindrome("lieve.") == false
    @test is_palindrome("Evil is a name of a fIoeman, as I live.") == false
    @test is_palindrome("A man, a plan, a canal: ,Panama") == false
    @test is_palindrome("foem,an,") == false
    @test is_palindrome("Panama.Was it a car or a cat I saw?") == false
    @test is_palindrome("12zZ2pets@@@@!3j  12zZ2@@@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("A man, a plan, PA  man, a plan, Pa canal, Panamano canal, Pana.ma.") == false
    @test is_palindrome("Aorcatgees,Panamae") == false
    @test is_palindrome("A man, a pl,an, a canal: ,Panama") == false
    @test is_palindrome("wsaww") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2@@@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("lieveA man, a plan, Pa canal, Pana.ma..") == false
    @test is_palindrome("erel") == false
    @test is_palindrome("12zZ2@@@@!3j  12zZ21") == false
    @test is_palindrome("12zZerel") == false
    @test is_palindrome("lieveA man, a plan, PaA man, a plan, a canal: Panama canal, Pana.ma..") == false
    @test is_palindrome("foeman,Step on no pets") == false
    @test is_palindrome("foemaIn,Step") == false
    @test is_palindrome("s?aw?") == false
    @test is_palindrome("AeNO") == false
    @test is_palindrome("A man,A a plan, a canal: ,Panama") == false
    @test is_palindrome("Evil is a name of a fIoeman,s as I live.") == false
    @test is_palindrome("foem,acatn,") == false
    @test is_palindrome("12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("Evil isor a name of a fIoeman, as I live.") == false
    @test is_palindrome("A man., a plan, Pa canal, Pana.ma.") == false
    @test is_palindrome("saw?12@zZ2@@@@!3j  12zZ2Panama21") == false
    @test is_palindrome("12zZ2@@3@@!j33Able was I erel I saw Elba.j") == false
    @test is_palindrome("wsawww") == false
    @test is_palindrome("foeem,an,") == false
    @test is_palindrome("A man, a plan, Pa canal, Panasee.ma.") == false
    @test is_palindrome("T12zZ2Panama21aco cat") == false
    @test is_palindrome("foeem,noan,") == false
    @test is_palindrome("wswawww") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa canal, Pana.ma.Zz21") == false
    @test is_palindrome("foeem,,an,") == false
    @test is_palindrome("as") == false
    @test is_palindrome("12zZ@@@!j3") == false
    @test is_palindrome("PaaPanama") == false
    @test is_palindrome("Rtats") == false
    @test is_palindrome("12@zZ12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2Panama21") == false
    @test is_palindrome("saw?12@zZ2@@@@!3j") == false
    @test is_palindrome("Pana.ma..") == false
    @test is_palindrome("aas") == false
    @test is_palindrome("saw?12@zZ2@@@@!3j  nama21") == false
    @test is_palindrome("TaTco catgeese") == false
    @test is_palindrome("12zPaaPanamaZ2@@@evilj") == false
    @test is_palindrome("12@zZ12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2a21") == false
    @test is_palindrome("12@zZ12zZ2@@@@!23j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2Panama21") == false
    @test is_palindrome("A maPa canal, Pana,mano canal, Pana.ma.") == false
    @test is_palindrome("saw??") == false
    @test is_palindrome("lieveA man, a plan, Pa cacnal, Pana.ma..") == false
    @test is_palindrome("Doe see 12zZ2@@j@@!j3jd3!@@@2Zz21Go") == false
    @test is_palindrome("A man, anama.") == false
    @test is_palindrome("car") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("12zZ2@@@@!2j3jd3!@@@2Zz21") == false
    @test is_palindrome("A man, a plan, Pa canal, Panasee.ma.ts") == false
    @test is_palindrome("Do") == false
    @test is_palindrome("12zZ21") == false
    @test is_palindrome("lieveA man, a plan,Elba. Pa cacnal, Pana.ma..") == false
    @test is_palindrome("AeNA man, a plan, Pa ncanal, Panasee.mma.") == false
    @test is_palindrome("Do ge12zZ2@@j@@!j3jd3!@@@2Z1Goese see Go") == false
    @test is_palindrome("1@2zZ2@@@evilj") == false
    @test is_palindrome("Panam.a.") == false
    @test is_palindrome("ncanal,") == false
    @test is_palindrome("PA") == false
    @test is_palindrome("HijEVmHx") == false
    @test is_palindrome("Able was I ere Iba.") == false
    @test is_palindrome("joOnfO") == false
    @test is_palindrome("RtatRs") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa caA man,A a plan, a canal: ,Panamanal, Pana.ma.Zz21") == false
    @test is_palindrome("ncanalfoem,an,,") == false
    @test is_palindrome("A man, a pnl,an, a canal: ,aPanama") == false
    @test is_palindrome("12@zZ2@@@@!3j  12zZ2lieveA man, a plan, PaA man, a plan, a canal: Panama canal, Pana.ma..Panama21") == false
    @test is_palindrome("12zZ2it@@2A") == false
    @test is_palindrome("Panamano") == false
    @test is_palindrome("maPa") == false
    @test is_palindrome("12@zZ2@@@@!3j ! 12zZ2Panama21") == false
    @test is_palindrome("Step12zZ2petssaw@@@@!3j  12zZ2@@@@!Able was I ere I saw Elba.j3jd3!@@@2Zz21") == false
    @test is_palindrome("T12zZ2Panama21acoDoe see 12zZ2@@j@@!j3jd3!@@@2Zz21Go") == false
    @test is_palindrome("saw?12@zZ2@@@@!3j  nama321") == false
    @test is_palindrome("PanPana,manoamano") == false
    @test is_palindrome("Panama.Was it a car or a cat I 12zZ2@@@@!3j  d3!@@@2Zz21saw?") == false
    @test is_palindrome("122zPaaPanamael") == false
    @test is_palindrome("12zZ2a21") == false
    @test is_palindrome("T12zZ2Panama21acoDoe see 12zZ2@@j@@!j3jd3!@z@@2Zz2lieveA man, a plan,Elba. Pa cacnal, Pana.ma..1Go") == false
    @test is_palindrome("Iba.") == false
    @test is_palindrome("egeese") == false
    @test is_palindrome("joOngeesefO") == false
    @test is_palindrome("Evil is a name of a foeman,  live.") == false
    @test is_palindrome("foemaIn,SPanasee.ma.p") == false
    @test is_palindrome("foeIem,noan,") == false
    @test is_palindrome("Ablba.") == false
    @test is_palindrome("Step1etssaw@@@@!3j  12zZ2@@@@!Able was I ere I saw Elba.j3jd3!@@@2Zz21") == false
    @test is_palindrome("Panasee.ma.") == false
    @test is_palindrome("12zsaw?12@zZ2@@@@!3j  nama21") == false
    @test is_palindrome("Evil isor a name of a fIoeman,I as I live.") == false
    @test is_palindrome("Evil isor a name of a fIoemalieveAn, as I live.") == false
    @test is_palindrome("staTaco") == false
    @test is_palindrome("wwas") == false
    @test is_palindrome("Evil is a name of a fIoeman, s as I live.") == false
    @test is_palindrome("Pana.ma...") == false
    @test is_palindrome("Steman,p12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("Aorcatgees,Steep on no petsPanamae") == false
    @test is_palindrome("Ky") == false
    @test is_palindrome("T12zZ2Panama21acoDoe seWas it a car or a cat I saw?e 12zZ2@@j@@!j3jd3!@@@2Zz21Go") == false
    @test is_palindrome("Pana.ma..PaA.") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan12@zZ12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2Panama21, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("lieveA man, a plan, Pa cacnal,i Pana.ma..") == false
    @test is_palindrome("wswawwA man, a plan, Pa canal, Panasee.ma.w") == false
    @test is_palindrome("12zZ2@@j@@!j3jd3!@@@2Zz212@@@@lieveA man, a plan, Pa cacnal, Pana.ma..!3j") == false
    @test is_palindrome("Step12zZ2petssaw@@@@!3j") == false
    @test is_palindrome("A maPa canal, Pana,mano canal12zZ2@@Aorcatgees,Panamae@@!2j3jd3!@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("T12zZ2PanamaPana.ma.21aco cat") == false
    @test is_palindrome("A maPa canal, Pana,mano canal12zZ2@@Aorcatgees,PanPana.ma..1Goamae@@!2j3jd3!@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("KyDo geese see Go") == false
    @test is_palindrome("Evil is a name of a fIoeman,l as I live.") == false
    @test is_palindrome("Pana,mano") == false
    @test is_palindrome("Pana.ma.") == false
    @test is_palindrome("f,oe!em,noaan,") == false
    @test is_palindrome("Step12zZ2petssaw@@@@!3j  Zz21") == false
    @test is_palindrome("Was12zZ2@@@@!j3j") == false
    @test is_palindrome("A man, a pnl,an, a canal: ,aPanA man, a plan, Pa canal, Pana.ma.a") == false
    @test is_palindrome("wsaAeNA") == false
    @test is_palindrome("12zZ2@@j@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("T12zZ2Panama21aco") == false
    @test is_palindrome("A maPa canal, Pana,mano canal12zZ2@@Aorcatgees,Panplan,Elba.amae@@!2j3jd3!@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("A maPa canal, Pana,mano @canal12zZ2@@Aorcatgees,Panplan,Elba.amae@@!2j3jd3!@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("foeman,Step") == false
    @test is_palindrome("ncanalfoem,an,a,") == false
    @test is_palindrome("Steman,p12zZ2pets@@@@@!3j") == false
    @test is_palindrome("foemaaIn,SPanasee.ma.p") == false
    @test is_palindrome("12zZ2@@@@!@3j  d3!@@@2Zz21") == false
    @test is_palindrome("PanPana,Pao") == false
    @test is_palindrome("s?a") == false
    @test is_palindrome("Ablba.PA") == false
    @test is_palindrome("joOngeesecacnal,ifO") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., wsaAeNAa plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("12zZ2@it@@@!3j  12zZ2@@@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("12zZ2a21erel") == false
    @test is_palindrome("fofoemaIn,StepeIaem,noan,") == false
    @test is_palindrome("staTaTco") == false
    @test is_palindrome("lieveA maa.ma..") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa  Pana.ma.Zz21wsaAeNAa plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("A maPa canal, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2j3jd3!@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("12zZ2@@@@!Able") == false
    @test is_palindrome("lieeve.") == false
    @test is_palindrome("foeem,nor") == false
    @test is_palindrome("foeman,Smtep") == false
    @test is_palindrome("lieveA man, a plan,Elba. Pa cacnal,A man., a plan, Pa canal, Pana.ma. Pana.ma..") == false
    @test is_palindrome("Go") == false
    @test is_palindrome("Evil isor a name of a fIA maPa canal, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2j3jd3!@@@2Zz21, Pana.ma.oeman, as I live.") == false
    @test is_palindrome("Aorcatgees,wsaAeNAaSteep on no petsPanamae") == false
    @test is_palindrome("A maPa canal, Pana,mano canal12zZ2@@Aorcatgees,Panplan,Elba.ama12zZ2it@@2Az21, Pana.ma.") == false
    @test is_palindrome("ncanoalfoem,an,,") == false
    @test is_palindrome("KyDo geeGse see Go") == false
    @test is_palindrome("Pa.na.ma..") == false
    @test is_palindrome("T12zZ2Panama21acoDoe") == false
    @test is_palindrome("12zZ2Panama21") == false
    @test is_palindrome("sa??") == false
    @test is_palindrome("Twwasaco catgeese") == false
    @test is_palindrome("A man, a plan, a canal: ,PanaPanasee.ma.tsma") == false
    @test is_palindrome("lieeve12@zZ12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2a21.") == false
    @test is_palindrome("Pana.ma.oeman,") == false
    @test is_palindrome("sa???") == false
    @test is_palindrome("A maPa canal, aPana,mano canal12zZ2@@Aorcatgees,Panplan,Elbaa.ama12zZ2it@@2Az21, Pana.ma.") == false
    @test is_palindrome("Pana.ma.a") == false
    @test is_palindrome("liaa.ma..") == false
    @test is_palindrome("A man, a pnl,an, a canal: ,aPanA Aorcatgees,Panamaeman, a plan, Pa canal, Pana.ma.a") == false
    @test is_palindrome(",PanaPanasee.ma.tsma") == false
    @test is_palindrome("egeeese") == false
    @test is_palindrome("o") == true
    @test is_palindrome("lieveA ma.n, a plan,Elba. Pa cacnal,A man., a plan, Pa canal, Pana.ma. Pana.ma..") == false
    @test is_palindrome("Evil is a name of a fvIoeman,s as I live.") == false
    @test is_palindrome("12zZas2@@j@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("12zZ2a21ereel") == false
    @test is_palindrome("R") == true
    @test is_palindrome("Evil is a name of a fI oeman,l as I live.") == false
    @test is_palindrome("stTco") == false
    @test is_palindrome("fofoeSmaIn,StepeIaem,noan,") == false
    @test is_palindrome("12zZ2@@j@@!j3jd3!@z@@2Zz2lieveA") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa  Pana.ma.Zz21wsaAeNAa plan, Pa  Pana.ma.ZEvil is a name of a fvIoeman,s as I live.z21") == false
    @test is_palindrome("Step12zZ2psaw?12@zZ2@@@@!3j  nama21ets@@@@!3j  12zZ2it@@2A man., wsaAeNAa plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("12zZ@2@@3@@!j3j") == false
    @test is_palindrome("eNO") == false
    @test is_palindrome("12a3") == false
    @test is_palindrome("PanamanPaAo") == false
    @test is_palindrome("manm.,") == false
    @test is_palindrome("12zZ2@@@@!@3j") == false
    @test is_palindrome("ssa???") == false
    @test is_palindrome("nm.,") == false
    @test is_palindrome("A man., a plan, Pa canal, aPana.ma.") == false
    @test is_palindrome("Step1etssaw@@@@!3j  12zZ2@@@@!AblT12zZ2Panama21aco cate was I ere I saw Elba.j3jd3!@@@2Zz21") == false
    @test is_palindrome("hLSbYVmk") == false
    @test is_palindrome("Evil iDo geese see God?s a name of a foeman, as I live.") == false
    @test is_palindrome("Kyy") == false
    @test is_palindrome("122zPaaaPana2mael") == false
    @test is_palindrome("wswaww") == false
    @test is_palindrome("fIoem,an,I") == false
    @test is_palindrome("A man, a plan, PA  man, a plan, T12zZ2PanamaPana.ma.21aco catPa canal, Panamano canal, Pana.ma.") == false
    @test is_palindrome("A man., a plan, Pa canal, Pana.ma.canal12zZ2@@Aorcatgees,Panplan,Elba.amae@@!2j3jd3!@@@2Zz21,") == false
    @test is_palindrome("Ablbba.") == false
    @test is_palindrome("KyDo") == false
    @test is_palindrome("Aorcatgees,Step12zZ2pets@@@@!3j  12zZ2@@@@!j3jd3!@@@2Zz21Steep on no petsPa12zZ2a21erelnamae") == false
    @test is_palindrome("12zZas2@@j@@!j3jd3z21") == false
    @test is_palindrome("A maPa canal, aPana,mZ2@@Aorcatgees,Panplan,Elbaa.ama12zZ2it@@2Az21, Pana.ma.") == false
    @test is_palindrome("foeem,saw?12@zZ2@@@@!3j  nama321,an,") == false
    @test is_palindrome("geeeGse") == false
    @test is_palindrome("Evil isor a name of a fIA maPa canal, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2j3jd3!@@@2Zz2Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan12@zZ12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2Panama21, Pa  Pana.ma.Zz211, Pana.ma.oeman, as I live.") == false
    @test is_palindrome("scatPaa???") == false
    @test is_palindrome("Pana.mPa.") == false
    @test is_palindrome("12zsaw?12@zZ2@@@@!3j  na21") == false
    @test is_palindrome("12zzZ2@@j@@!j3jd3!@@@2Zz21") == false
    @test is_palindrome("aPana,mZ2@@Aorcatgees,Panplan,Elbaa.ama12zZ2it@@2Az21,") == false
    @test is_palindrome("PAno") == false
    @test is_palindrome("A man,fvIoeman,s a plan, Pa canal, Panama.") == false
    @test is_palindrome("T12zZ2Panama2T12zZ2Panama21acoDoe see 12zZ2@@j@@!j3jd3!@@@2Zz21Go1aco") == false
    @test is_palindrome("A man,ma.") == false
    @test is_palindrome("canal12zZ2@") == false
    @test is_palindrome("T12zZ2PanamaPana.co cat") == false
    @test is_palindrome("T12zZ2Panama21aco ccat") == false
    @test is_palindrome("Able zw12zzZ2@@j@@!j3jd3!@@@2Zz21re Iba.") == false
    @test is_palindrome("manm.,wwas") == false
    @test is_palindrome("pnl,an,") == false
    @test is_palindrome("Pana.maa.a") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2@@@@3jd3!@@@2Zz21") == false
    @test is_palindrome("canal12zZ2@@Aor2catgees,Panplan,Elbaa.ama12zZ2it@@2Az21,Kyy") == false
    @test is_palindrome("lieveA man, a plan,Elba. Pa cacn12zZ2@@j@@!j3jd3!@@@2Zz212@@@@lieveAal, Pana.ma..") == false
    @test is_palindrome("foem,anm,") == false
    @test is_palindrome("12zZ2@@3@@!j33Able wras I erel I saw Elba.j") == false
    @test is_palindrome("A maPa canalo, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2j3jd3!@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa  Pana.ma.Zz21wsaAeNAa plan, Pa  Pana.ma.ZEvil is a A maPa canalo, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2j3jd3!@@@2Zz21, Pana.ma.name of a fvIoeman,s as I live.z21") == false
    @test is_palindrome("lieveA") == false
    @test is_palindrome("12zZ12@zZ2@@@@!3j  12zZ2Panama212@@@@!@3j") == false
    @test is_palindrome("d3d!@@@2Zz2!1") == false
    @test is_palindrome("S2tep12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan12@zZ12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2Panama21, Pa  Pana.ma.Zz21") == false
    @test is_palindrome(",aPanA") == false
    @test is_palindrome("Panaanama.ma.") == false
    @test is_palindrome("canal,") == false
    @test is_palindrome("Able was I ere I sncanalfoem,an,,aw Elba.") == false
    @test is_palindrome("Step12zZ2psaw?12@zZ2@@@@!3j  nama21ets@@@@!3j  12zZ2it@@2A man., wsaAeNT12zZ2Panama2T12zZ2Panama21acoDoe see 12zZ2@@j@@!j3jd3!@@@2Zz21Go1acoAa plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("A mand3!@@@2Zz21saw?,aPanA man, a plan, Pa canal, Pana.ma.a") == false
    @test is_palindrome("nama21ets@@@@!3j") == false
    @test is_palindrome("T1w2zZ2Panama21acoDoe seWas it a car or a cat I saw?e 12zZ2@@j@@!j3jd3!@@@2Zz21Go") == false
    @test is_palindrome("Elbaa.j") == false
    @test is_palindrome("Step12zZ2psaw?12@zZ2@@@@!3j  nama21ets@@@@!3j  12zZ2it@@2A manZ., wsaAeNAa plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("foemaIn,SjoOngeesefOPanasee.ma.p") == false
    @test is_palindrome("manmcacnal,i.,wwas") == false
    @test is_palindrome("Do geese see sGo") == false
    @test is_palindrome("A.") == false
    @test is_palindrome("12zZ2a211") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., Step12zZ2pets@@@@!3j  12zZ2it@@2A mAorcatgees,Steep on no petsPanamaean., a plan, Pa  Pana.ma.Zz21wsaAeNAa plan, Pa  Pana.ma.ZEvil is a A maPa canalo, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2j3jd3!@@@2Zz21, Pana.ma.name of a fvIoeman,s as I live.z21") == false
    @test is_palindrome("saw?1on2@zZ2@@@@!3jj") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2@@@@3jd3!@@@22Zz21") == false
    @test is_palindrome("Aogrcatgees,Panamae") == false
    @test is_palindrome("Evil isor a name of a fIoeman,Step12zZ2pets@@@@!3jI live.") == false
    @test is_palindrome("Evil isor a namof a fIoemalieveAn, as I live.") == false
    @test is_palindrome("man,") == false
    @test is_palindrome("pets") == false
    @test is_palindrome("ws12zZ2@@j@@!j3jd3!@@@2Zz21waww") == false
    @test is_palindrome("KyDo12zZ2@@@@!2j3jd3!@@@2Zz21") == false
    @test is_palindrome("foemaPanPana,manoamanon,") == false
    @test is_palindrome("Evil iss a name of a foeman,  live.") == false
    @test is_palindrome("S2tep12z12zPaaPanamaZ2@@@2eviljZ3j") == false
    @test is_palindrome("Do geese see Geod?") == false
    @test is_palindrome("Aorcatgees,PafoemaIn,SjoOngeesefOPanasee.ma.pnamae") == false
    @test is_palindrome("12@zZ12zZ2@@@@!23j") == false
    @test is_palindrome("wswawwere") == false
    @test is_palindrome("saw?e") == false
    @test is_palindrome("A man, a pnl,an, a canal:a ,aPanama") == false
    @test is_palindrome("12zZas2@@j@@!j3jd3!@@@2fIoem,an,I") == false
    @test is_palindrome("sa????") == false
    @test is_palindrome("f,oe122zPaaPanamael!em,naoaan,") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., Step12zZ2pets@@@@!3j  12zZ2iseWasAeNAa plan, Pa  Pana.ma.ZEvil is a name of a fvIoeman,s as I live.z21") == false
    @test is_palindrome("HijEVmHHx") == false
    @test is_palindrome("A maPa canal, Pana,mano canal12zZ2@@Aorcatgees,PanPana.ma..1Goamae@@!2j3jd3!A@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("fem,an,") == false
    @test is_palindrome("12zZ12@zZ2@@@@!3j  12zZ2Pa") == false
    @test is_palindrome("foetm,acaton,") == false
    @test is_palindrome("12zZ12@@zZ2@@@@!3j  12zZ2Panama212@@@@!@3j") == false
    @test is_palindrome("fIoemalieveAn,") == false
    @test is_palindrome("EYk") == false
    @test is_palindrome("PanamaA man, a plan, Pa canal, Panasee.ma.ts") == false
    @test is_palindrome("12zZ2@@j@@!j312zZas2@@j@@!j3jd3!@@@2Zz21jd3!@z@@2Zz2lieveA") == false
    @test is_palindrome("122zPaaaPannwswawwAa2mael") == false
    @test is_palindrome("fofoeSmaIn,SteIaem,noan,") == false
    @test is_palindrome("RR") == true
    @test is_palindrome("Pana.mao.oeman,") == false
    @test is_palindrome("12zPaa12zZ2@@@@!3j  12zZ2@@@@!j3jd3!@@@2Zz21PanamaZ2@@@evilj") == false
    @test is_palindrome("12zZ2Panama212@@@@!@3j") == false
    @test is_palindrome("12zZ2Pzanama212@@@@!@3j") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2it@@2A man., S@tep12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan, Pa  Pana.ma.Zz21wsaAeNAa plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome(",PanaPanasee.ma.ts") == false
    @test is_palindrome("A man, a panama") == false
    @test is_palindrome("wsawwww") == false
    @test is_palindrome("HjiEjEHVmHHx") == false
    @test is_palindrome("Evil isor a name of a fIA maPa canal, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2Pana.mao.oeman,j3jd3!@@@2Zz21, Pana.ma.oeman, as I live.") == false
    @test is_palindrome("egrykPqA") == false
    @test is_palindrome("Pana.ma.on,") == false
    @test is_palindrome("fIoeman,s") == false
    @test is_palindrome("w?e12zZ2@@j@@!j3jd3!@@@2Zz21Go1aco") == false
    @test is_palindrome("Steman,p12zZ2pets@@@@!3jAble zw12zzZ2@@j@@!j3jd3!@@@2Zz21re Iba.  12zZ2it@@2A man., a plan, Pa  Pana.ma.Zz21") == false
    @test is_palindrome("Elba.j") == false
    @test is_palindrome("pnnl,an,") == false
    @test is_palindrome("A man, a pnl,an, a canal: ,Step1etssaw@@@@!3j  12zZ2@@@@!Able was I ere I saw Elba.j3jd3!@@@2Zz21aPanama") == false
    @test is_palindrome("Step12zZ2pets@@@@!3j  12zZ2@@@@3jd3!@3@@22Zz21") == false
    @test is_palindrome("wswawwerecar") == false
    @test is_palindrome("KyDoDoe") == false
    @test is_palindrome("aas12zZ2@@3@@!jfoeman,3j") == false
    @test is_palindrome("Panasee.ma.ts") == false
    @test is_palindrome("12zZ2@@3@@!j33Able") == false
    @test is_palindrome("T12zZ2Panama21aco cccat") == false
    @test is_palindrome("wsaAeNT12zZ2Panama2T12zZ2Panama21acoDoe") == false
    @test is_palindrome("PanPan,Pao") == false
    @test is_palindrome("foaem,an,") == false
    @test is_palindrome("wwswaww") == false
    @test is_palindrome("scatPaa??") == false
    @test is_palindrome("Tacot cat") == false
    @test is_palindrome("liaa.ma..fIoeman,2Step12zZ2pjets@@@@!3jI") == false
    @test is_palindrome("O") == true
    @test is_palindrome("foeIemwsaAeNA,noan,") == false
    @test is_palindrome("OQdpFdbUIt") == false
    @test is_palindrome("f,oe!em,") == false
    @test is_palindrome("catPa") == false
    @test is_palindrome("foeIemwsaAmanm.,wwaseNA,fIoeman,I") == false
    @test is_palindrome("A man, aa plan, Pa canal, Panasee.ma.ts") == false
    @test is_palindrome("Evil isor a namZ2pets@@@@!3jI live.") == false
    @test is_palindrome("wsaAeNAa") == false
    @test is_palindrome("Tacot c at") == false
    @test is_palindrome("12zZ2@@3@@!j3312zZ2@@j@@!j3jd3!@@@2Zz212@@@@lieveAAble") == false
    @test is_palindrome("Step12zZ2petssaw@@@@!3j  12zZ2@@@@!Able was I ereman,A I saw Elba.j3jd3!@@@2Zz21") == false
    @test is_palindrome("cccat") == false
    @test is_palindrome(",aPa,nA") == false
    @test is_palindrome("lliKyyeveA") == false
    @test is_palindrome("Panaccat.ma..") == false
    @test is_palindrome("lieveATaco catgeese man, a plan, Pa cacnal,i Pana.ma..") == false
    @test is_palindrome("AeNA man,e a plan, Pa ncanal, Panasee.mma.") == false
    @test is_palindrome("T12zZ2PaDoe") == false
    @test is_palindrome("canal12zZ2@@Aorcatgees,PanPana.ma..1Goamae@@!2j3jd3!A@@@2Zz21,") == false
    @test is_palindrome("namZ2pets@@@@!3jI") == false
    @test is_palindrome("A man, a pnl,an, a can plan, Pa ca.a") == false
    @test is_palindrome("KyD") == false
    @test is_palindrome("foeIemwsaStep12zZ2petssaw@@@@!3j  12zZ2@@@@!Able was I ere I saw Elba.j3jd3!@@@2Zz21AeNA,noan,") == false
    @test is_palindrome("petsPanamaean.,") == false
    @test is_palindrome("A man., a plan, Pa canal, Pana.ma.canal12zZ2@@Aorcatgees,PanplaPn,Elba.amae@@!2j3jds?aw?3!@@@2Zz21,") == false
    @test is_palindrome("A maPag canal, Pana,mano canal12zZ2@@Aorcatgees,PanPana.ma..1Goamae@@!2j3jd3!A@@@2Zz21, Pana.ma.") == false
    @test is_palindrome("feofoeSmaIn,StepeIaem,noan,") == false
    @test is_palindrome("S2tep12@zZ12zZ2@@@@!23j12z12zPaaPanamaZ2@@@2eviljZ3j") == false
    @test is_palindrome("?sa???") == false
    @test is_palindrome("12zZ2@@3@@!j33Able wrasOQdpFdbUIt I erel I saw Elba.j") == false
    @test is_palindrome("Aorcatgees,wsaAeNAaStpeep on no petsPanamae") == false
    @test is_palindrome("g") == true
    @test is_palindrome("12zPaaPanamaZ2@P@@evilj") == false
    @test is_palindrome("12zsaw?12@zZ@@@@!3j  na21") == false
    @test is_palindrome("12zsaw?12@zZ2@j@@@!3j  na21") == false
    @test is_palindrome(",Pannasee.ma.tsma") == false
    @test is_palindrome("Evil isor a name of a fIA maPa canal, Pana,mano @canal12zZ2@@Aorcatgees,PanplanfofoemaIn,StepeIaem,noan,,Elba.amae@@!2j3jd3!@@@2Zz2Step12zZ2pets@@@@!3j  12zZ2it@@2A man., a plan12@zZ12zZ2@@@@!3j  12zZ2@@j@@!j3jd3!@@@2Zz212@@@@!3j  12zZ2Panama21, Pa  Pana.ma.Zz211, Pana.ma.oeman, as I live.s?a") == false
    @test is_palindrome("foemaIn,SPanaseme.ma.p") == false
    @test is_palindrome("pnl,an,canal12zZ2@@Aorcatgees,PanPana.ma..1Goamae@@!2j3jd3!A@@@2Zz21,") == false
    @test is_palindrome("Aorcatgees,PafoemaIn,S12zZ@2@@3@@!j3jjoOngeesefOPanasee.ma.pnamae") == false
end
