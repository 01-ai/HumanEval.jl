@testitem "018_how_many_times_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "018_how_many_times.jl"))
    @test how_many_times("ababa","aba") == 2
    @test how_many_times("abcdefg","efg") == 1
    @test how_many_times("abababab","aba") == 3
    @test how_many_times("hello world","o") == 2
    @test how_many_times("aaaabbbbcccc","bb") == 3
    @test how_many_times("12211221122","122") == 3
    @test how_many_times("racecar","car") == 1
    @test how_many_times("mississippi","ss") == 2
    @test how_many_times("thequickbrownfox","fox") == 1
    @test how_many_times("fizzbuzz","zz") == 2
    @test how_many_times("aaaabbbbccccc","bb") == 3
    @test how_many_times("bbb","bb") == 2
    @test how_many_times("zz","bbb") == 0
    @test how_many_times("122","zz") == 0
    @test how_many_times("bb","bb") == 1
    @test how_many_times("misracecarsissippi","ss") == 1
    @test how_many_times("abababab","fox") == 0
    @test how_many_times("e","e") == 1
    @test how_many_times("thequickbrownfox","thequickbrownfox") == 1
    @test how_many_times("bb","thequickbrownfox") == 0
    @test how_many_times("fizzbuzz","fizzbuzz") == 1
    @test how_many_times("122","12mississippi2") == 0
    @test how_many_times("aaacarabbbbcccc","efg") == 0
    @test how_many_times("hello world","fox") == 0
    @test how_many_times("ababa","ababa") == 1
    @test how_many_times("fizzbuzz","fizzzbuzz") == 0
    @test how_many_times("12mississippi2","efg") == 0
    @test how_many_times("hello worrld","ababao") == 0
    @test how_many_times("thebquickbrownfox","thequickbrownfox") == 0
    @test how_many_times("aaacarabbbbcccc","aaacabrabbbbcccc") == 0
    @test how_many_times("zz","ababao") == 0
    @test how_many_times("thequickbrrownfox","thequickbrrownfox") == 1
    @test how_many_times("hello woorrld","abaabaaoo") == 0
    @test how_many_times("aaaabbbbcccc","thequickbrownfox") == 0
    @test how_many_times("abababab","hello woorrld") == 0
    @test how_many_times("zz","efhello worrldssg") == 0
    @test how_many_times("fiuzzbuzz","efg") == 0
    @test how_many_times("aaaabbbcbcccc","hello woorrld") == 0
    @test how_many_times("bb","bssb") == 0
    @test how_many_times("zz","zz") == 1
    @test how_many_times("12hello woorrld","zz") == 0
    @test how_many_times("bbaaaabbbcbcccc","bssb") == 0
    @test how_many_times("sss","sefhello worrldssgs") == 0
    @test how_many_times("fiuzzbuzz","aaaabbbbccccc") == 0
    @test how_many_times("efg","hello woorrld") == 0
    @test how_many_times("ababathequickbrownfox","abaaba") == 0
    @test how_many_times("efgg","12mtheqabaabaaoouickbrrownfoxississippi2") == 0
    @test how_many_times("bb","mississippababao") == 0
    @test how_many_times("fizzbuzz","fizzzbbbzz") == 0
    @test how_many_times("sss","sfizzzbbbzzss") == 0
    @test how_many_times("ccar","rccar") == 0
    @test how_many_times("efg","abaabaabcdefg") == 0
    @test how_many_times("bbaaaabbbcbccc","bbb") == 1
    @test how_many_times("hello world","oo") == 0
    @test how_many_times("fizzbuz","zzz") == 0
    @test how_many_times("aaaabbbcbcccc","aaaaabbbcbcccc") == 0
    @test how_many_times("hello lwoorrld","hello lwoorr") == 1
    @test how_many_times("eg","egccarfiuzzbuzz") == 0
    @test how_many_times("12211221122","1222") == 0
    @test how_many_times("efg","efg") == 1
    @test how_many_times("ss","ssfizzzbbbzzsss") == 0
    @test how_many_times("zz","zzz") == 0
    @test how_many_times("s1222bssbs","s1222bssbbs") == 0
    @test how_many_times("12hello woo1rrcarld","zz") == 0
    @test how_many_times("hello worrlod","ababao") == 0
    @test how_many_times("sfizabaabazbbbzzss","sfizabaabazbbbzzsabcdefg") == 0
    @test how_many_times("ezzbuzz","essfizzzbbbzzssszzbuzz") == 0
    @test how_many_times("zz","zmississippababaoz") == 0
    @test how_many_times("mississiezzbuzzpi","ss") == 2
    @test how_many_times("eg","eg") == 1
    @test how_many_times("abababab","ab") == 4
    @test how_many_times("12hello woorrld","zzz") == 0
    @test how_many_times("efgbbaaaabbbcbcccc","efgbbaaababbbcbcccc") == 0
    @test how_many_times("hello woorrld","hello worldaaacarabbbbcccc") == 0
    @test how_many_times("aba","aba") == 1
    @test how_many_times("ef12mtheqabaabaaoouickbrrownfoxississippi2g","effg") == 0
    @test how_many_times("ezzbuzz","efg") == 0
    @test how_many_times("cgareg","careg122") == 0
    @test how_many_times("122bbaaaabbbcbcccc11221122","1221122112aaaabbbcbcccc2") == 0
    @test how_many_times("sefhello worrldssgs","aaaaabbbcbcccc") == 0
    @test how_many_times("fiuababathequickbrownfoxzzbuzz","fiuizzbuzz") == 0
    @test how_many_times("zzz","z") == 3
    @test how_many_times("fizzbuzz","effg") == 0
    @test how_many_times("caregsfizabaabazbbbzzss122","cggareg") == 0
    @test how_many_times("fiuzzbuzz","egfg") == 0
    @test how_many_times("hellol lwoorr","hellol lw") == 1
    @test how_many_times("12mtheqabaabaaoouickbrrownfoxississippi2","efgg") == 0
    @test how_many_times("12hello whello lwoorroorrld","zabababab") == 0
    @test how_many_times("zz","zzzz") == 0
    @test how_many_times("hello lwoorr","zz") == 0
    @test how_many_times("efg","effizzbuzzfg") == 0
    @test how_many_times("efg","egfg") == 0
    @test how_many_times("zef12mtheqabaabaaoouickbrrownfoxississippi2gz","zz") == 0
    @test how_many_times("hello woorrld","whello woorrld") == 0
    @test how_many_times("thequickbrownfox","thequickbrownracecarfox") == 0
    @test how_many_times("bb","thequickbrownracecarfoxbbb") == 0
    @test how_many_times("fiessfizzzbbbzzssszzbuzzuababathequickbrownfoxzzbuzz","fiuizzbuzz") == 0
    @test how_many_times("bbaaaabbbcb12hello whello lwoorroorrldcccc","bssb") == 0
    @test how_many_times("therbquickbrownfox","thequickbrownfox") == 0
    @test how_many_times("bbaaaabbbcbccc","oo") == 0
    @test how_many_times("aaaaabbbbaaaa","aaa") == 5
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabc","abc") == 2
    @test how_many_times("Lorem ipsum dolor sit amet, consectetur adipiscing elit.","ipsum") == 1
    @test how_many_times("The quick brown fox jumps over the lazy dog.","the") == 1
    @test how_many_times("aaaaaaaabaaaaaaa","ba") == 1
    @test how_many_times("banana","ana") == 2
    @test how_many_times("cacccccac","cac") == 2
    @test how_many_times("fofofofofofofof","of") == 7
    @test how_many_times("racecarapenapapayapineapple","ap") == 5
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","AAAAAAA") == 44
    @test how_many_times("dog.","ap") == 0
    @test how_many_times("aaabrownaaaa","aaaaabbbbaaaa") == 0
    @test how_many_times("The quicfoxk brown fox jumps over the lazy dog.","the") == 1
    @test how_many_times("The quick brown fox jumps over the lazy dog.","foipsumx") == 0
    @test how_many_times(".dogfox.","dogfox.") == 1
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscing elit.","ipsum") == 1
    @test how_many_times("ba","aaaaadogfox.aa") == 0
    @test how_many_times("quickraceacarapenapapayapineapple","quickracecarapenapapayapineapple") == 0
    @test how_many_times("AAAAAAA","ap") == 0
    @test how_many_times("The quick brown fox jumps over the lazy dog.","aaaaofabbbbtheaaaa") == 0
    @test how_many_times("the","the") == 1
    @test how_many_times("The quick brown fox jumps over the lazy dog.","aaaaofabbbbtheaelit.aaa") == 0
    @test how_many_times("aaaaaaaabaaaabrownaaaaaaaaaa","ba") == 1
    @test how_many_times("abc","abc") == 1
    @test how_many_times("quicfox","ba") == 0
    @test how_many_times("sit","sit") == 1
    @test how_many_times("The quick brown fox jumps over the lazy dog.","The quick brown fox jumps over the lazy dog.") == 1
    @test how_many_times("gg.","dog.") == 0
    @test how_many_times("cac","cac") == 1
    @test how_many_times("quickraceacarapenapapayapineapple","quickraceacarapenapapayapineapple") == 1
    @test how_many_times("amlazyet,","ba") == 0
    @test how_many_times("cacccccac","cacc") == 1
    @test how_many_times(".dogfox.","quickcfoxk") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 1
    @test how_many_times("quicfoxcacccccac","quicfoxcacccccac") == 1
    @test how_many_times("aaabrownaaaa","over") == 0
    @test how_many_times("The quicfoxk brown fox jumps over the lazy dog.","cacccccac") == 0
    @test how_many_times("cacccccac","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("cacccccaac","cac") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","quickraceacarapenapapayapineapple") == 0
    @test how_many_times("the","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("The quicfoxk brown fox jumps over the lazy dog.","The quick brown fox jumps over the  lazy dog.") == 0
    @test how_many_times("AAAAAAA","foipsuconsecteturmx") == 0
    @test how_many_times("AAAAA","abc") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","tAAAAAAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("ataaaaaaaabaaaabrownaaaaaaaaaa","thequickracecarapenapapayapineapple") == 0
    @test how_many_times("AAAAA","elit.") == 0
    @test how_many_times("taaaaofabbbbtheaelit.aaahe","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("The quick brown fox jumps over the  lazy dog.","brown") == 1
    @test how_many_times("baccac","cacccccac") == 0
    @test how_many_times("ccccacc","cacc") == 1
    @test how_many_times("cacccccaac","quickraecarapenapapayapineapple") == 0
    @test how_many_times("taaaaofabbe","ccccacc") == 0
    @test how_many_times("amet,","cac") == 0
    @test how_many_times("consectetur","ataaaaaaaabaaaabrownaaaaaaaaaa") == 0
    @test how_many_times("taaaaofabbbbtheaelitaaaaofabbbbtheaaaa.abrownaahe","taaaaofabbbbtheaelit.abrownaahe") == 0
    @test how_many_times("ap","of") == 0
    @test how_many_times("quicaccfox","ba") == 0
    @test how_many_times("The quicfoxk brown fox jumps over the lazy dog.","cacccccacipsum") == 0
    @test how_many_times("quickraceacarapenapapayapineapple","eapple") == 1
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscing elit.","ielit.psum") == 0
    @test how_many_times("aaabrownaaaa","aaabrownaaaa") == 1
    @test how_many_times("aaaaadogfox.aa","ccccacc") == 0
    @test how_many_times("consectetur","consectetur") == 1
    @test how_many_times("over","over") == 1
    @test how_many_times(".dogfox","dogfdox.") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabc","quickraceacarapenapapayapineapple") == 0
    @test how_many_times("foipsumx","foipsumx") == 1
    @test how_many_times("aaaaaaaabaaaabrownaaaaaaaaaa","aaaaaaaabaaaabrownaaaaaaaaaa") == 1
    @test how_many_times("ipsum","ipsum") == 1
    @test how_many_times("consectetur","consecur") == 0
    @test how_many_times("foipsumx","cacccccaac") == 0
    @test how_many_times("aaaaathequickracecarapenapapayapineapplerownaaaaaaaaaa","ba") == 0
    @test how_many_times("b","b") == 1
    @test how_many_times("sit","foipsuconsecteturmx") == 0
    @test how_many_times("aaAAAAAaaaaaabaaaabrownaaaaaaaaaa","ba") == 1
    @test how_many_times("foipsuconsecteturmx","foipsuconsecteturmx") == 1
    @test how_many_times("aaAAAAAaaaaaabaaLorem ipsum dolor sit amet, consectetur adipiscing elit.aaaaaaaa","ba") == 1
    @test how_many_times("eapple","ap") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","AAAAAAA") == 44
    @test how_many_times("bThe quick brown fox jumps over the lazycacccccacipsum dog.a","bThe quick brown fox jumps over the lazy dog.a") == 0
    @test how_many_times("c","cac") == 0
    @test how_many_times("amlazyet,","amlazyet,") == 1
    @test how_many_times("bThe quick brown fox jumps over the lazy dog.a","banana") == 0
    @test how_many_times("consectetur","quickraceacarapenapapayapineapple") == 0
    @test how_many_times("cacccccac","cacbaaaaofabbbbtheaelit.aaaa") == 0
    @test how_many_times("aaaaaaaabaaaaaaa","jumps") == 0
    @test how_many_times("ccccacc","ccccacc") == 1
    @test how_many_times("Lorem ipsum dolor sit amt, consectetur adipiscing elit.","ipsum") == 1
    @test how_many_times("quicfoxcaccccccac","quicfoxcacccccac") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxsityzabc","abc") == 2
    @test how_many_times("bb","bba") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","cac") == 0
    @test how_many_times("AAAAA","AAAAAAAA") == 0
    @test how_many_times("banana",".dogfox.") == 0
    @test how_many_times("quicaccfox","quicaccfox") == 1
    @test how_many_times("abcdefghijklmnopqrstuvwxsvityzabct","abcdefghijklmnopqrstuvwxsityzabct") == 0
    @test how_many_times("foipsumx","abcdefghijklmnopqrstuvwxyzabc") == 0
    @test how_many_times("AAA","ipsum") == 0
    @test how_many_times("cacccccac","caac") == 0
    @test how_many_times("bbb","bbbb") == 0
    @test how_many_times("Lorem ipsum dolor sit amt, consectetur adipiscing elit.","cacccccaac") == 0
    @test how_many_times("taaaaofabcacccccacipsumbbbtheaelit.aaahe","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscing elit.","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","quickraceacarapenapapayapineapple") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","abcdefghijklmnopqrstuvwxsvityzabct") == 0
    @test how_many_times("aaabbaaabbbbaaaa","aaaaabbaaAAAAAaaaaaabaaaabrownaaccccaccaaabbaaaa") == 0
    @test how_many_times("laz","lazy") == 0
    @test how_many_times("caac","cacccccac") == 0
    @test how_many_times("foipsuconsequickcfoxkurmx","AAAAAAA") == 0
    @test how_many_times("bana","thequickracecarapenapapayapineapple") == 0
    @test how_many_times("ipoversum","aaaaadogfox.aa") == 0
    @test how_many_times("foipsuconsequickcfoxkurmx","foipsuconsecteturmx") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","amt,") == 0
    @test how_many_times("aaaaadogfLoremox.aa","ccccacc") == 0
    @test how_many_times("quicfoxcacccccacc","quicfoxcacccccacc") == 1
    @test how_many_times("The quicfoxk brown fox jumps over the lazy dog.","quicaccfox") == 0
    @test how_many_times("thequickracecarapenapapayapineapple","aaaaabbbbaaaa") == 0
    @test how_many_times("over","aaaaabbbbaaaa") == 0
    @test how_many_times("b","cac") == 0
    @test how_many_times("eapple",".dogfox.") == 0
    @test how_many_times("consecur","aaAAAAAaaaaaabaaaabrownaaaaaaaAaaa") == 0
    @test how_many_times("quickraceacarapenapapayapineapple","eaAAApple") == 0
    @test how_many_times("bba","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("aaaaathequickracecarapenapapayapineapplerownaaaaaaaaaa","bbaba") == 0
    @test how_many_times("aap","ap") == 1
    @test how_many_times("abcdefghijklmnopqrstuvwxsityzabc","The") == 0
    @test how_many_times("amlazyet,","amlazyety,") == 0
    @test how_many_times("ccccacc","cacac") == 0
    @test how_many_times("banaipsum","thequickracecarapenapapayapineapple") == 0
    @test how_many_times("ccaccccccac","caccccccac") == 1
    @test how_many_times("bana","cquicfoxkacc") == 0
    @test how_many_times("ovlazycacccccacipsumer","over") == 0
    @test how_many_times("bLorem ipsum dolor sit amet, consetctetur adipiscing elit.a","ba") == 0
    @test how_many_times("cacccccac","aaaaabbbbaaaa") == 0
    @test how_many_times("bb","cac") == 0
    @test how_many_times("aaaaadogfox.aa","aaaaadogfox.aa") == 1
    @test how_many_times("foipsumx","abcdefghijklmnopqovlazycacccccacipsumerrstuvwxyzabc") == 0
    @test how_many_times("bbaccac","cacccccac") == 0
    @test how_many_times("ataaaaaaaabaaaabrownaaaaaaaaaa","aaabrownaaaa") == 1
    @test how_many_times("cacbaaaaofabbbbtheaelit.aaaa","cacccccacipsum") == 0
    @test how_many_times("fofofofofofofofaaabrownaaaa","oof") == 0
    @test how_many_times("amlazyety,","amlazyety,") == 1
    @test how_many_times("taaaaofabbbbtheaelit.aaahbThee","taaaaofabbbbtheaelit.aaahe") == 0
    @test how_many_times("amet,","AAAAA") == 0
    @test how_many_times("over","dog.") == 0
    @test how_many_times("aaAAAAAaaaaaabaaLorem","quicfox") == 0
    @test how_many_times("oveamt,","dog.") == 0
    @test how_many_times("tAAAAAAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","cacccccac") == 0
    @test how_many_times("tAAAAAAAAAAAbanaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","quickraceacarapenapapayapineapple") == 0
    @test how_many_times("ovlazycacccccacipsumer","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB") == 0
    @test how_many_times("cacbaaaaofabbbbtheaelit.aaaa","aap") == 0
    @test how_many_times("The quick brown fox jumps over the lazy dog.","sit") == 0
    @test how_many_times("consectetur","bLorem ipsum dolor sit amet, consetctetur adipiscing elit.aconsecur") == 0
    @test how_many_times("dog.","dog.") == 1
    @test how_many_times("aaaamt,","amt,") == 1
    @test how_many_times("cacbaaaaofabbbbtheaelit.aaaa","cacbaaaaofabbbbtheaelit.aaaa") == 1
    @test how_many_times("AAAAAAA","AAAAAAA") == 1
    @test how_many_times("bb","sit") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAadipiscingAAAAAAAAAAAAAAAAAAAAAAAABhe","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("qLoremuicaccfox","ba") == 0
    @test how_many_times("taaaaofabbe","celit.acccacc") == 0
    @test how_many_times("baccac","ccacccccac") == 0
    @test how_many_times("aaaamt,","cacccccacamt,") == 0
    @test how_many_times("cacccccac","cacccccac") == 1
    @test how_many_times("caac","caac") == 1
    @test how_many_times("ap","quick") == 0
    @test how_many_times("quicaccfox","aa") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscilng elit.","Lorem ipsum dolor sit amet, consetctetur adipiscilng elit.") == 1
    @test how_many_times("thequickracecarapenapapayaquicfoxcacccccaccpineapple","thequickracecaraaaapenapapayaquicfoxcacccccaccpineapple") == 0
    @test how_many_times("dogovlazycacccccacipstAAAAAAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABheumer.","over") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabc","oever") == 0
    @test how_many_times(".dogfox.","quicfoxcacccccacc") == 0
    @test how_many_times("AAAAA","ba") == 0
    @test how_many_times("banana","bbaba") == 0
    @test how_many_times("fofofofofofofofaaabroaaAAAAAaaaaaabaaaabrownaaaaaaaaaaaaaa","oof") == 0
    @test how_many_times("consectetur","The") == 0
    @test how_many_times("AAA","cac") == 0
    @test how_many_times("dog.a","epjs") == 0
    @test how_many_times("ipoccccaccversum","aaaaadogfox.aa") == 0
    @test how_many_times("aap","cacbaaaaofabbbbtheaelibLoremaaaa") == 0
    @test how_many_times("ataaaaaaaabaaaabrownaaaaaaaaaa","The quicfoxk brown fox jumps over the lazy dog.") == 0
    @test how_many_times("amt,","sit") == 0
    @test how_many_times(".dogfox","dogfox.") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscing eliot.","ipsum") == 1
    @test how_many_times("cac","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("taaaaofabbbbtheaelit.aaahbThee","quickraceacarapenapapayapineapple") == 0
    @test how_many_times("AAAAAAA","AAAAAA") == 2
    @test how_many_times("elit.a","foipsuconsequickcfoxquicfoxcaccccccackurmx") == 0
    @test how_many_times("consecteur","ataaLorem ipsum dolor sit amet, consetctetur adipiscing elit.aaaaaabaaaabrownaaaaaaaaaa") == 0
    @test how_many_times("cquicfoxkacc","quick") == 0
    @test how_many_times("AAAAAA","AAAAAAAA") == 0
    @test how_many_times("AAA","bbelit.a") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur aditamet,piscing elit.","quicaccfoxsit amet, consetctetur adiamet,piscing elit.") == 0
    @test how_many_times("The quicfoxk brown fobbaccacx jumps over the lazy dog.","The quick brown fox jumps over the  lazy dog.") == 0
    @test how_many_times("aaaaabbbbaaaa","aaaaabbbbaaaa") == 1
    @test how_many_times("fofoothequickracecarapenapapayapineapplefoofof","of") == 3
    @test how_many_times("The quicfoxamlazyet,k brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumups over the lazy dog.","The quicfoxk brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumps over azy dog.") == 0
    @test how_many_times("foipsuconsecteturmx","foataaLorem ipsum dolor sit amet, consetctetur adipiscing elit.aaaaaabaaaabrownaaaaaaaaaaipsuconsecteturmx") == 0
    @test how_many_times("quicfoxcacccccac","cacccccac") == 1
    @test how_many_times("cac","cafoipsuconsecteturmxc") == 0
    @test how_many_times("foipsumx","abcdefghijklmnopqrstuvwxsvityzabct") == 0
    @test how_many_times("the","AAAAAA") == 0
    @test how_many_times("tAAAAAAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","aaaaabbbbaaaa") == 0
    @test how_many_times("ba","ba") == 1
    @test how_many_times("cacccccacamt,","Lorem ipsum dolor sit amet, consetctetur adipiscing elit.") == 0
    @test how_many_times("quicfoxcacccccacc","quicfThe quicfoxk brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumps over azy dog.oxcacccccacc") == 0
    @test how_many_times("cacccccaac","cacc") == 1
    @test how_many_times("quicaccfox","elit.a") == 0
    @test how_many_times("bba","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("consectetur","consuecur") == 0
    @test how_many_times("ccccacc","fofofofofofofof") == 0
    @test how_many_times("dogovlazycacccccacipstAAAAAAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABheumer.","fofofofofofofofaaabroaaAAAAAaaaaaabaaaabrownaaaaaaaaaaaaaa") == 0
    @test how_many_times("etaaaaofabbe","taaaaofabbe") == 1
    @test how_many_times("anab","ana") == 1
    @test how_many_times("boverb","sit") == 0
    @test how_many_times("ovlazycacccccer","over") == 0
    @test how_many_times("fobccacx","aaAAAAAaaaaaabaaaabrownaaaaaaaAaaa") == 0
    @test how_many_times("gg.","dodg.") == 0
    @test how_many_times("aquicaccfoxsit amet, consetctetur adiamet,piscing elit.et,","amet,") == 2
    @test how_many_times("quickcfoxk","qLoremuicaccfox") == 0
    @test how_many_times("taaaaobfabbbbtheaelit.aaahe","TThe quick brown fox jumps over the lazy dog.he quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("Lorem ipsum odolor sit amet, consetctetur adipiscing elit.","Lorem ipsum dolor sit amet, consetctetur adipiscing elit.") == 0
    @test how_many_times("Thconsecteture","The") == 0
    @test how_many_times("bba","aaaaathequickracecarapenapapayapineapplerownaaaaaaaaaa") == 0
    @test how_many_times("AAA","ap") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consectetur adipiscing elit.","ipsu") == 1
    @test how_many_times("quicfoxacccccac","quicfoxcacccccac") == 0
    @test how_many_times("aaabrownaaaaa","over") == 0
    @test how_many_times("aaAAAAAaaaaaabaaaabrownaaaaaaaaaa","foataaLorem") == 0
    @test how_many_times("cccacc","cccquicfoxcacccccaccacc") == 0
    @test how_many_times("aaabbThe quicfoxamlazyet,k brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumups over the lazy dog.aabbbbaaaa","ccacccccac") == 0
    @test how_many_times("caccccc","cacc") == 1
    @test how_many_times("AAAAAAA","aap") == 0
    @test how_many_times("cafkoipsuconsequickcfoxkurmxcac","cafoipsuconsequickcfoxkurmxcac") == 0
    @test how_many_times("quickcfoxk","quickcfoxk") == 1
    @test how_many_times("aaaamt,","aaaamt,") == 1
    @test how_many_times("dodg.","abc") == 0
    @test how_many_times("AA","Lorem ipsum dolor sit amet, consetctetur adipiscilng elit.") == 0
    @test how_many_times("abc","ab") == 1
    @test how_many_times("aaaaababbbaaaa","aaa") == 5
    @test how_many_times("abcdefghijklmnopqrstuvwxsityzabc","abcdefghijklmnopqrstuvwxsityzabc") == 1
    @test how_many_times("aaabrownaaaaa","aaabrownaaaa") == 1
    @test how_many_times("fofofofofofofof","AAAAAAAthequickracecaraaaapenapapayaquicfoxcacccccaccpineappleAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB") == 0
    @test how_many_times("eliot.","ap") == 0
    @test how_many_times("cccacc","ccaccccccac") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscilang elit.","dolor") == 1
    @test how_many_times("aaaabrownaaaa","aaabrownaaaa") == 1
    @test how_many_times("quuicaccfox","elit.a") == 0
    @test how_many_times("quickraceacarapenapapayapineapplee","quickraceacarapenapapayapineapple") == 1
    @test how_many_times("cac","cacccccaac") == 0
    @test how_many_times("brothequickraAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABcarapenapapayaquicfoxcacccccaccpineapplewwn","brothequickracecarapenapapayaquicfoxcacccccaccpineapplewwn") == 0
    @test how_many_times("gg","brownfoipsuconsequickcfoxquicfoxcaccccccackurmx") == 0
    @test how_many_times("amet,","aemet,") == 0
    @test how_many_times("caacc","caac") == 1
    @test how_many_times("Lorem ipsum dolor sit amet, consectetur adipiscing elit.","AAA") == 0
    @test how_many_times("brothequickraAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAelit.aaaaaabaaaabrownaaaaaaaaaaipsuconsecteturmxAAAAAAAAAAAAAAAABcarapenapapayaquicfoxcacccccaccpineapplewwn","brothequickraAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABcarapenapapayaquicfoxcacccccaccpineapplewwn") == 0
    @test how_many_times("o.dogffox","aaaaofabbbbtheaaaa") == 0
    @test how_many_times("foipsuconsecteturmx","faaaaaaaabaaaaaaaoiconsecteturmx") == 0
    @test how_many_times("foipsumx","eaAAApple") == 0
    @test how_many_times("dog.he","consuecur") == 0
    @test how_many_times("racecarapenapapayapineapple","quickcfoxk") == 0
    @test how_many_times("dodg.","b") == 0
    @test how_many_times("bbc","cacccccac") == 0
    @test how_many_times("elit.aconsecur","bbbbquicfoxcacccccacap") == 0
    @test how_many_times("brown","brown") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAAAABhe","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("foipsuconsecteturmx","faaaaaaaabaaaaoiconsecteturmx") == 0
    @test how_many_times("thequickracecaraaaapenapapayaquicfoxcacccccaccpineapple","quickracecarapenapapayapineapple") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("The qfoxuick brown fox jumps over the lazy dog.","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("of","brown") == 0
    @test how_many_times("fmoipsumx","foipsumx") == 0
    @test how_many_times("elit.aconsecur","ab") == 0
    @test how_many_times("amlazyetquicfThe quicfoxk brownfoipsuconsequickcfoxquicfoxcaccThconsectetureccccackurmx fox jumps over azy dog.oxcacccccacc","amlazyetquicfThe quicfoxk brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumps over azy dog.oxcacccccacc") == 0
    @test how_many_times("ovver","oveThe quicfoxk brown fobbaccacx jumps over the lazy dog.r") == 0
    @test how_many_times("cacccc","caac") == 0
    @test how_many_times("amt,","aaabrownaaaa") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscing elit.","Lorem ipsum dolor sit amet, consetctetur adipiscing elit.") == 1
    @test how_many_times("tAAAAAAAAAAdolorAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("The quick brownn fox jumps over the lazy dog.","the") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAadipiscingAAAAAAAAAAAAAAAAAAAAAAAABhe","tAAAAAAAAAAAAAAAAAAAAAAAAAAadipiscingAAAAAAAAAAAAAAAAAAAAAAAABhe") == 1
    @test how_many_times("quickraceacarapeabcnapapayapineapple","eapple") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAABhe","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAABhe") == 1
    @test how_many_times("cacccccacccac","cacc") == 2
    @test how_many_times("baditamet,piscinga","quicaccfox") == 0
    @test how_many_times("etaaaaofabbe","etaaaaofaeapplee") == 0
    @test how_many_times("ipsu","cacc") == 0
    @test how_many_times("elit.aconsecur","elit.aconsecur") == 1
    @test how_many_times("foipsumx","cfofoothequickracecarapenapapayapineapplefoofofacccccaac") == 0
    @test how_many_times("ccaccccccac","ccaccccccac") == 1
    @test how_many_times("foipsuconsecamlazyety,teturmx","foipsuconsecteturmx") == 0
    @test how_many_times("aaaabrownaaaa","brown") == 1
    @test how_many_times("elit.aaaaaaaa","quicfox") == 0
    @test how_many_times("etaaaaofaeapplee","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("oveamt,","aemet,") == 0
    @test how_many_times("foipsuconsecteturtmx","foipsuconsecteturtmx") == 1
    @test how_many_times(".cafoipsuconsecteturmxcdogfox.",".dogfox.") == 0
    @test how_many_times("aaaaabbbbaaaa","aaaaabbbbaaaaa") == 0
    @test how_many_times("gg.","Thconsecteture") == 0
    @test how_many_times("aaAAAAAaaaaaabaaaabrownaaaaaaaAaaa","cacccccac") == 0
    @test how_many_times("taaaaofabbbbtheaelitaaaaofabbbbtheaaaa.abrownaahe","taaaaofabbbcfofoothequickracecaracaaccpenapapayapineapbbaccacplefoofofacccccaacbtheaelit.abrownaahe") == 0
    @test how_many_times("bannana","banana") == 0
    @test how_many_times("cacccccc","cacc") == 1
    @test how_many_times("dog.r","cquicfoxkacc") == 0
    @test how_many_times("ba","abcdefghijklmnopqrstuvwxyzabc") == 0
    @test how_many_times("cacccccacipsum","cacccccacipsum") == 1
    @test how_many_times("sist","sist") == 1
    @test how_many_times("cafoipsuconsequickcfoxkurmxcac","cafoipsuconsequickcfoxkurmxcac") == 1
    @test how_many_times("bLorem ipsum dolor sit amet, consetctetur adipiscing elit.a","bThe quick brown fox jumps over the lazycacccccacipsum dog.a") == 0
    @test how_many_times("laz","cacccccacipsum") == 0
    @test how_many_times("caccccccaac","cacccccaac") == 0
    @test how_many_times("ovvr","ovver") == 0
    @test how_many_times("foipsucAAAAAx","foipsuconsecteturtmx") == 0
    @test how_many_times("foipsuconsecteturmx","aquicaccfoxsit") == 0
    @test how_many_times("quicfoxcacccccocac","quicfoxcaccccThe quicfoxk brown fox jumps over the lazy dog.cac") == 0
    @test how_many_times("bbbbquicfoxcacccccacap","bbbbquicfoxcacccccacap") == 1
    @test how_many_times("bbb","oever") == 0
    @test how_many_times("taaabbaaabbbbaaaahe","the") == 0
    @test how_many_times("browwn","brown") == 0
    @test how_many_times("Lorem","banana") == 0
    @test how_many_times("foipsuconsecteturmx","fquickcfoxkaaaaaaaabaaaaoiconsecTThe quick brown fox jumps over the lazy dog.he quick brown fox jumps over the lazy dog.teturmx") == 0
    @test how_many_times("eappleThe qfoxuick brown fox jumps over the lazy dog.","The qfoxuick brown fox jumps over the lazy dog.") == 1
    @test how_many_times("quicaccfoxsit amet, consetctetur adiamet,piscing elit.","quicaccfoxsit amet, consetctetur adiamet,piscing telit.") == 0
    @test how_many_times("acaac","caac") == 1
    @test how_many_times("ataaaaaaaabaaaabrownaaaaaaaaaa","thequickracelcarapenapapayapineappl") == 0
    @test how_many_times("quicfoxdolor","The") == 0
    @test how_many_times("ccaccccccac","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("ipsu","sit") == 0
    @test how_many_times("caac","ba") == 0
    @test how_many_times("baccac","baccac") == 1
    @test how_many_times("caaaabrownaaaaac","ccccacc") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consectetur adip.iscing elit.","Lorem ipsum dolor sit amet, consectetur adipiscing elit.") == 0
    @test how_many_times("faaaaaaaabasecteturmx","faaaaaaaabasecteturmx") == 1
    @test how_many_times("dog.aaaaaofabbbbtheaaaa","epjs") == 0
    @test how_many_times("browwn","browwn") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","thequickracecaraaaapenapapayaquicfoxcacccccaccpineapple") == 0
    @test how_many_times("racecarapenapapayapineapple","racecarapenapapaeyapineapple") == 0
    @test how_many_times("oof","bThe quick brown fox jumps over the lazy dog.a") == 0
    @test how_many_times("Lorem ipmet, consectetur adip.iscing elit.","Lorem ipsum dol adipiscing elit.") == 0
    @test how_many_times("amet,","aemaditamet,piscing") == 0
    @test how_many_times("aquicaccfoxsit amet, consetctetur adiamet,pistcing elit.et,","amlazyet,") == 0
    @test how_many_times("caccccccacac","cacccccacac") == 0
    @test how_many_times("quickcfoxk","quic") == 1
    @test how_many_times("aaaaabbaaAAAAAaaaaaabaaaabrownaaccccaccaaabbaaaa","ana") == 0
    @test how_many_times("ccabbbccccccac","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("brothequirckracecarapenapapayaquicconsetcteturfoxcacccccaccpineapplewwn","brothequickracecarapenapapayaquicfoxcacccaaaaofabbbbtheaelit.aaaccaccpineapplewwn") == 0
    @test how_many_times("AAAAAA","sist") == 0
    @test how_many_times("dol","a") == 0
    @test how_many_times("aaaamt,","racecarapenapapayapineapple") == 0
    @test how_many_times("fofoothequickracecarapenapapayapineapplefoofof","abcdefghijklmnopqrstuvwxsvityzabct") == 0
    @test how_many_times("dog.a","cacc") == 0
    @test how_many_times("taaaaofoipsumxfabbbbtheaelit.aaahe","The quick brown fox jumps over the lazy dog.") == 0
    @test how_many_times("aaAAAAAaaaaaabaaaabrownaaaaaaaaaaa","quicfoxamlazyet,k") == 0
    @test how_many_times("cacccccacccac","banana") == 0
    @test how_many_times("quicfThe quicfoxk brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumps over azy dog.oxcacccccacc","cacccccacccac") == 0
    @test how_many_times("foipsruconsecteturmquicfoxcaccccccacx","foipsuconsecteturmquicfoxcaccccccacx") == 0
    @test how_many_times("elit.aaaaaaa","consectetur") == 0
    @test how_many_times("dogfdox.","quickraceacarapenapapayapineapple") == 0
    @test how_many_times("dog.","gdog.") == 0
    @test how_many_times("qLoremuicaccfox","of") == 0
    @test how_many_times("Lor","Lorem") == 0
    @test how_many_times("aaabrowanaaaa","aaabrowanaaaa") == 1
    @test how_many_times("caccccaaataaLoremc","caccccaaataaLoremc") == 1
    @test how_many_times("ccafkoipsuconsequickcfoxkurmxcac","ccafkoipsuconsequickcfoxkurmxcac") == 1
    @test how_many_times("banana","g.dogfox.") == 0
    @test how_many_times("AquicfoxAAAAA","cafkoipsuconsequickcfoxkurmxcac") == 0
    @test how_many_times("cacccccc","aaaaofabbbbtheaelit.aaa") == 0
    @test how_many_times("faaaaaaaabaaaaoiconsecteturmx","foipsucoonsecteturmx") == 0
    @test how_many_times("adipiscingcor","taaaaofabbbbtheaelitaaaaofabbbbtheaaaa.abrownaahe") == 0
    @test how_many_times("quiickraecarapenapapayapineapple","quickraecarapenapapayapineapple") == 0
    @test how_many_times("LLorem ipsum dolobanar sit amt, consectetur adipiscing elit.or","LLorem ipsum dolobanar sit amt, consectetur adipiscing elit.or") == 1
    @test how_many_times("cccquicfoxcacccccaccacc","b") == 0
    @test how_many_times("banna","anna") == 1
    @test how_many_times("cactAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhAAAAAAAAAAAAAABheccc","cactAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAhAAAAAAAAAAAAAABheccc") == 1
    @test how_many_times("ieliLorem ipsum dol adipiscing elit.t.psum","ielit.psum") == 0
    @test how_many_times("bananna","bThe quick brown fox jumps over the lazy dog.a") == 0
    @test how_many_times("vvr","vvr") == 1
    @test how_many_times("The quick brown fox jumps over the lazy dog.","The quick brown fox jumps ovefr the lazy dog.") == 0
    @test how_many_times("taaaaofabbbbtheaelit.aaahbThee","tAAAAAAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe") == 0
    @test how_many_times("aaabrowanaaaa","aaaabrowanaaaa") == 0
    @test how_many_times("ovver","sit") == 0
    @test how_many_times("aqeuicaccfoxsit amet, consetctetur adiamet,pistcing elit.et,","aquicaccfoxsit amet, consetctetur adiamet,pistcing elit.et,") == 0
    @test how_many_times("aaaaabbbbaaaaa","aaaaabbbbaaaa") == 1
    @test how_many_times("thequickracelcarapenapapayapineappl","the") == 1
    @test how_many_times("","adipiscilang") == 0
    @test how_many_times("tAAAAAAAAAAAAAAapAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","c") == 0
    @test how_many_times("Lorem ipsum dol adipiscing elit.","Lorem ipsum dol adipiscing elit.") == 1
    @test how_many_times("LLorem ipsum dolobanar sit amt, consectetur adipiscing elit.or","Lorem ipsum dol adipiscing adip.iscingit.") == 0
    @test how_many_times("fofoothequickracecarapenapapayapineapplefoofof","abcdeuvwxsvityzabct") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur adipiscilng eolit.","Lorem ipsum dolor sit amet, consetctetur adipiscilng elit.") == 0
    @test how_many_times("aquicaccfoxsit amet, consetctetur adiamet,piscing elit.et,","bba") == 0
    @test how_many_times("consecttetur","The") == 0
    @test how_many_times("fofoothequickracecarapenapapayapineapplefoofof","oabcdefghijklmnopqrstuvwxsvityzabctf") == 0
    @test how_many_times("b","bbbb") == 0
    @test how_many_times("amet,","aemaditametn,piscing") == 0
    @test how_many_times("aemet,","aemet,") == 1
    @test how_many_times("dooveamt,dg.","dodg.") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consetcteadipiscilangtur adipiscing elit.","Lorem ipsum dolor sit amet, consetctetur adipiscing elit.") == 0
    @test how_many_times("etaaaaaofabbe","etaaaaofabbe") == 0
    @test how_many_times("abcc","abcc") == 1
    @test how_many_times("bananna","bananna") == 1
    @test how_many_times("faaaaaaaabasecteturmx","aaabrowanaaaa") == 0
    @test how_many_times("quickraceacarapenapapayapineapple","quickraceacarapenapapayapineappple") == 0
    @test how_many_times("dolor","Lorem ipsum dol adipiscing elit.") == 0
    @test how_many_times("Lorem ipmet, consectetur adip.iscing elit.","Lorem ipmet, consectetur adip.iscing elit.") == 1
    @test how_many_times("taaaaofabbbbtheaelitaaaaofabbbbtheaaaa.abrownaahe","taaaaofabbbbtheaelitaaaaofabbbbtheaaaa.abrownaahe") == 1
    @test how_many_times("aaaaoaaabbThefabbbbtheaelit.aaa","cacccccc") == 0
    @test how_many_times("aaabbaaabbbbaaaa","browwn") == 0
    @test how_many_times("ipsum","quicbbbbquicfoxcacccccacapk") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","quickraceacarapenapapayapineapelit.t.psumple") == 0
    @test how_many_times("aaaaabbbbaaaa","aacaccccccacacaaabbbbaaaaa") == 0
    @test how_many_times("quuicaccfox","faaaaaaaabasecteturmx") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabc","quicfoxcacccccacc") == 0
    @test how_many_times("abcc","elit.aconsecur") == 0
    @test how_many_times("browwn","etaaaaaofabbe") == 0
    @test how_many_times("foipsucaaabbaaabbbbaaaaonsecteturmx","foataaLorem ipsum dolor sit amet, consetctetur adipiscing elit.aaaaaabaaaabrownaaaaaaaaaaipsuconsecteturmx") == 0
    @test how_many_times("dogetaaaaofaeapplee.cac","dog.cac") == 0
    @test how_many_times("dolor","ana") == 0
    @test how_many_times("laz","laz") == 1
    @test how_many_times("banaipsum","acaadog.rc") == 0
    @test how_many_times("thte","the") == 0
    @test how_many_times("bThe quick brown fox jumps over the lazycaccoveamt,cccacipsum dog.a","bThe quick brown fox jumps over the lazycaccoveamt,cccacipsum dog.a") == 1
    @test how_many_times("LLorem ipsum dolobanar sit amt, consectetur adipiscing elit.or","aemaditametn,piscing") == 0
    @test how_many_times("caacc","abcdefghijklmnopqovlazycacccccacipsumerrstuvwxyzabc") == 0
    @test how_many_times("AA","AA") == 1
    @test how_many_times("caaaabrownaaaaac","aaaaathequickracecarapenapapayapineapplerownaaaaaaaaaa") == 0
    @test how_many_times("cquicfoxkacc","dog.r") == 0
    @test how_many_times("banaana","banaacaccccccacacaaabbbbaaaaaana") == 0
    @test how_many_times("quicfThe quicfoxk brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumps over azy dog.oxcacccccacc","bThe quick brown fox jumps over the lazycacccccacipsum dog.a") == 0
    @test how_many_times("AAA","bThe quick brown fox jumps over the lazycaccoveamt,cccacipsum dog.a") == 0
    @test how_many_times("caaaabrownaaaaaac","aaaaathequickracecarapenapapayapineapplerownaaaaaaaaaa") == 0
    @test how_many_times("LLorem ipsum dolobanar sit amt, consectetur adipiscing elit.or","taaaaofoipsumxfabbbbtheaelit.aaahe") == 0
    @test how_many_times("fobccacx","taaaaobfabbbbtheaelit.aaahe") == 0
    @test how_many_times("cacbaaaaofabbbbtheaelibLoremaaaa","Lorem ipsum dolor sit amet, consetctetur aditpiacaacscilang elit.") == 0
    @test how_many_times("caccccc","AA") == 0
    @test how_many_times("The quicfoxk brown fox jumpxs over the lazy dog.","quicaccfoxsit") == 0
    @test how_many_times("acaagdog.rc","acaadog.quickraceacarapeabcnapapayapineapplerc") == 0
    @test how_many_times("bbbb","bbbb") == 1
    @test how_many_times("dog.aaaaaofabbbbtheaaaa","ovvr") == 0
    @test how_many_times("adiamet,piscing","bannana") == 0
    @test how_many_times("ccaac","caac") == 1
    @test how_many_times("cacccccac","cacccccacipsum") == 0
    @test how_many_times("eielit.psumfabbe","etaaaaofaeapplee") == 0
    @test how_many_times("aquicaccfoxsit amet, consetctetur adiamet,piscing elit.et,","bThe quick brown fox jumps over the lazycacccccacipsum dog.a") == 0
    @test how_many_times("racecarapernapapayapineapple","racecarapernapapayapineapple") == 1
    @test how_many_times("tAAAAAAquicfoxAAAAAeAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABhe","aaaaabbbbaaaa") == 0
    @test how_many_times("a","AAAAAA") == 0
    @test how_many_times("bbelit.a","acaadog.rc") == 0
    @test how_many_times("bThse quick brown fox jumps over the lazycaccoveamt,cccacipsum dog.a","bThse quick brown fox jumps over the lazycaccoveamt,cccacipsum dog.a") == 1
    @test how_many_times("bba","quicfox") == 0
    @test how_many_times(".cafoipsuconfobbaccacxsecteturmxcdogfox.",".cafoipsuconsecteturmxcdogfox.") == 0
    @test how_many_times("ccabcdefghijklmnopqovlazycacccccacipsumerrstuvwxyzabcccacc","fofofofofofofof") == 0
    @test how_many_times("browbwn","browwn") == 0
    @test how_many_times("aaaaamt,","bbc") == 0
    @test how_many_times("banaana","aaa") == 0
    @test how_many_times("bbbbb","bbbb") == 2
    @test how_many_times("banaipsum","banaipsum") == 1
    @test how_many_times("dogovlazycaccccAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABheumer.","dogovlazycacccccacipstAAAAAAquicfoxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABheumer.") == 0
    @test how_many_times("abcc","aabcc") == 0
    @test how_many_times("anab","adiamet,pistcing") == 0
    @test how_many_times("cacccccaac","cacccccaac") == 1
    @test how_many_times("caacccccac","caacccccac") == 1
    @test how_many_times("aap","aaabbThe quicfoxamlazyet,k brownfoipsucolnsequickcfoxquicfoxcaccccccackurmx fox jumups over the lazy dog.aabbbbaaaaaap") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABcacccccaac","caac") == 1
    @test how_many_times("quicfoxcacccccac","racecarapenapapaeyapineapple") == 0
    @test how_many_times("aaAAAAAaaaaaabaaaabrownaaaaaaaaaa","quickcfoxk") == 0
    @test how_many_times("foipsumx","dodg.") == 0
    @test how_many_times("fofofofofofofofaaabroaaAAAAAaaaaaabaaaabrownaaaaaaaaaaaaaa","fofofofofofofofaaabroaaAAAAAaaaaaabaaaabrownaaaaaaaaaaaaaa") == 1
    @test how_many_times("abcdefghijklmnopqrstuvwxsityzabc","ThLorem ipsum dolor sit amet, consetctetur adipiscilang elit.e") == 0
    @test how_many_times("aaAAAAAaaaaaabaaLorem","daog.a") == 0
    @test how_many_times("vvr","ba") == 0
    @test how_many_times("faaaaaaaabaaaaoaaabbThe quicfoxamlazyet,k brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumups over the lazy dog.aabbbbaaaaiconsecteturmx","faaaaaaaabaaaaoaaabbThe quicfoxamlazyet,k brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumups over the lazy dog.aabbbbaaaaiconsecteturmx") == 1
    @test how_many_times("celit.aaaaaaacabcdefghijklmnopqovlazycacccccacipsumerrshtuvwxyzabcccacc","dgog.cac") == 0
    @test how_many_times("The quicfoxk brown fox jumps over the lazy dog.","cacccccabThe quick brown fox jumps over the lazy dog.ac") == 0
    @test how_many_times("laz","cccaacacccccacipsum") == 0
    @test how_many_times("Lorem ipsccccaccum dolor sit amet, consetctetg elit.","Lorem ipsum dooveamt,or sit ametfaaaaaaaabaaaaaaaoiconsecteturmx, consetctetur adipiscing elit.") == 0
    @test how_many_times("The quicfoxk brown foxbrothequickracecarapenapapayaquicfoxcacccaaaaofabbbbtheaelit.aaaccaccpineapplewwn jumps over the lazy dog.","The quicfoxk brown fox jumps over the lazy dog.") == 0
    @test how_many_times("elit.","Lor") == 0
    @test how_many_times("gg.","dogg.dg.") == 0
    @test how_many_times("bbaba","bbaba") == 1
    @test how_many_times("aaabrquicbbbbquicfoxcacccccacapkaquicaccfoxsitowanaaaa","aaabrowanaaaa") == 0
    @test how_many_times("quicfoxcacccccacc","taaabbaaabbbbaaaahe") == 0
    @test how_many_times("The quicfoxkthe brown fox jumps over the lazy dog.","The quicfoxk brown fox jumps over the lazy dog.") == 0
    @test how_many_times("cacccccabThe","ab") == 1
    @test how_many_times("The quick brown fps over the lazy dog.","The quick brown fps over the lazy dog.") == 1
    @test how_many_times("aaaaabbaaAAAAfoipsuconsequickcfoxkurmxAaaaaaabaaaabrownaaccccaccaaabbaaaa","aaaaabbaaAAAAAaaaaaabaaaabrownaaccccaccaaabbaaaa") == 0
    @test how_many_times("abcdefghijklmnopqovlazycacccccacipsumerrstuvwxyzabc","abcdefghijklmnopqovlazycacccccacipsumerrstuvwxyzabc") == 1
    @test how_many_times("abcdefghijklmnopqovlazycacccccacipsumerrstuvkwxyzabc","abcdefghijklmnopqovlazycacccccacipsumerrstuvwxyzabc") == 0
    @test how_many_times("quicacthequickracecarapenapapayapineapplecfox","quicaccaaaaaaaabaaaabrownaaaaaaaaaafox") == 0
    @test how_many_times("cccaacacccccacipsum","etaaaaofaeapplee") == 0
    @test how_many_times("fofofbLorem ipsum dolor sit amet, consetctetur adipiscing elit.aofofofofof","fofofofofofofof") == 0
    @test how_many_times("consuecurAquicfoxAAAAA","consuecur") == 1
    @test how_many_times("aaaaaaelit.aaaaaaaaabaaaabrownaaaaaaaaaa","aaaaaaaabaaaabrownaaaaaaaaaa") == 1
    @test how_many_times("of","ccaac") == 0
    @test how_many_times("elit.aconsbbbbecu","elit.aconsecu") == 0
    @test how_many_times("g.dogfox.","aaaabofabbbbtheaaaa") == 0
    @test how_many_times("quicaccfoxsit amet, consetctetur adiamet,piscing elit.","quicaccfoxsit amet, consetctetur adiamet,piscing elit.") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAABheaaaaabbaaAAAAAaaaaaabaaaabrownaaccccaccaaabbaaaa","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAABhe") == 1
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAABheaaaaabbaaAAAAAaaaaaabaaaabrownaaccccaccaaabbaaaa","acaagdog.rc") == 0
    @test how_many_times("ab","ba") == 0
    @test how_many_times("cafoipsuconsequickcfoxkurmxcac","consuecur") == 0
    @test how_many_times("quiaaaaoaaabbThefabbbbtheaelit.aaacfoxcacccccac","cacccccaquicfThe quicfoxk brownfoipsuconsequickcfoxquicfoxcaccccccackurmx fox jumps over azy dofoxcaccc") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAABheaaaaabbaaAAAAAaaaaaabaaaabrownaaccccaccaaabbaaaa","taaaaofabbbbtheaelitaaaaofabbbbtheaaaa.abrownaahe") == 0
    @test how_many_times("tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapcaaabbaaaa","tAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAquickracecarapenapapayapineappleAAAAAABheaaaaabbaaAAAAAaaaaaabaaaabrownaaccccaccaaabbaaaa") == 0
    @test how_many_times("celit.aaaaaaacabcdefghijklmnopqovlazycacccccacipsumerrshtuvwxyzabcccacc","dgog.cacc") == 0
    @test how_many_times("Lorem ipsum dolor sit amt, consectetur adipiscing elit.","cac") == 0
    @test how_many_times("abaccac","ccacccccac") == 0
    @test how_many_times("theequickracecarapenapapayaquicfoxcacccccaccpineapple","theequickracecarapenapapayaquicfoxcacccccaccpineapple") == 1
    @test how_many_times("Lorem ipsum dolor sit amet, consetctetur aditpiacaacscilang elit.","Lorem ipsum dolor sit amet, consetctetur aditpiacaacscilang elit.") == 1
    @test how_many_times("","xyz") == 0
    @test how_many_times("hello","hello world") == 0
    @test how_many_times("apple","pineapple") == 0
    @test how_many_times("12\$34\$56","\$") == 2
    @test how_many_times("x","x") == 1
    @test how_many_times("x","y") == 0
    @test how_many_times(" "," ") == 1
    @test how_many_times("hellohello","hello") == 2
    @test how_many_times("aaaaaa","aa") == 5
    @test how_many_times("abcabcabc","abcabc") == 2
    @test how_many_times("racecarapenapapayapineapple","ana") == 0
    @test how_many_times("The quick brown foxamet, jumps over the lazy dog.","the") == 1
    @test how_many_times("anaap","ana") == 1
    @test how_many_times("racecarapenapapayapineapple","The quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("elit.","abcdefghijklmnopqrstuvwxyzabc") == 0
    @test how_many_times("racecarrapenapapayapineapple","ana") == 0
    @test how_many_times("aAAAAAAAna","racecaracecarrapenapapayapineapplerrapenapapayapineapple") == 0
    @test how_many_times("aaaaaaaabaaaaaaa","jumpsba") == 0
    @test how_many_times("ipsum","the") == 0
    @test how_many_times("racecarapenapapayapineapple","appp") == 0
    @test how_many_times("AAAAaaaaaaaabaaaaaaaAAA","AAAAAAA") == 0
    @test how_many_times("anabanana","ana") == 3
    @test how_many_times("anracecarapenapapayapineapplea","ana") == 0
    @test how_many_times("of","fofofofofofofof") == 0
    @test how_many_times("racecarapenaapapayapineapple","ap") == 5
    @test how_many_times("ipsum","sit") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","racecarapenapapayapineapple") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","AAAAAAAA") == 43
    @test how_many_times("ba","basit") == 0
    @test how_many_times("ap","ap") == 1
    @test how_many_times("consectetur","racecaracecarrapenapapayapineapplerrapenapapayapineapple") == 0
    @test how_many_times("of","of") == 1
    @test how_many_times("ana","anaap") == 0
    @test how_many_times("anaba","anabanana") == 0
    @test how_many_times("consecteturr","consectetur") == 1
    @test how_many_times("foxamet,","foxamet,") == 1
    @test how_many_times("anracecarapenapapayapineapplea","an") == 1
    @test how_many_times("AAAAAAAA","racecarapenapapayapineapple") == 0
    @test how_many_times("racecarrapenapapayapineapple","racecarrapenapapayapineapple") == 1
    @test how_many_times("aaaa","aaa") == 2
    @test how_many_times("aaaaaaaabaaaaaaa","jfoxumpsba") == 0
    @test how_many_times("racecaAAAAAAArapenapapayapineapple","ana") == 0
    @test how_many_times("Lorem","aAAAAaaaaaaaabaaaaaaaAAAaaaabbbbaaaa") == 0
    @test how_many_times("fofofofofofofof","Th e quAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.") == 0
    @test how_many_times("oof","of") == 1
    @test how_many_times("anracecarapenapapayapineapplea","lazzy") == 0
    @test how_many_times("fofofofofofofof","lazy") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consectetur adipiscing elit.","sit") == 1
    @test how_many_times("foxaet,","quick") == 0
    @test how_many_times("foxamconsecteturet,","foxamet,") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabc","abcdefghijklmnopqrstuvwxyzabc") == 1
    @test how_many_times("anaap","aaaaaaaabaaaaaaaana") == 0
    @test how_many_times("racecarapenapapayapineapple","na") == 1
    @test how_many_times("racecarapenanpapayapineapple","foxaet,") == 0
    @test how_many_times("AAAAAAA","consecteturr") == 0
    @test how_many_times("aaaaabbbbaaaa","of") == 0
    @test how_many_times("anaap","anaap") == 1
    @test how_many_times("Lorem","ipsum") == 0
    @test how_many_times("consecrteturr","consecteturr") == 0
    @test how_many_times("ba","of") == 0
    @test how_many_times("racecarapenaapapayapineapple","The quick brown foLoremxamet, jumps over the lazy dog.") == 0
    @test how_many_times("The","ap") == 0
    @test how_many_times("ajumpsaaa","jumps") == 1
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabcipsum","ipsum") == 1
    @test how_many_times("aaaaaaaabaaaaaaa","ana") == 0
    @test how_many_times("na","racecaracecarrapenapapayapineapapapayapineapple") == 0
    @test how_many_times("ba","an") == 0
    @test how_many_times("abasitna","ana") == 0
    @test how_many_times("abasitna","racecaraquAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABrpenapapayapineapple") == 0
    @test how_many_times("obrownf","anabanana") == 0
    @test how_many_times("ajumpsaaa","racecaracecarrapenapapayapineapapapayapineapple") == 0
    @test how_many_times("racecarapenanpapayapineapeple","foxfaet,") == 0
    @test how_many_times("fofofofofofofof","dog.") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabcipsum","consectetur") == 0
    @test how_many_times("Thazy dog.","the") == 0
    @test how_many_times("racepcaAAAAAAArapenapapayapineapplee","ana") == 0
    @test how_many_times("The","dog.") == 0
    @test how_many_times("racecarapenapapayapineapple","ba") == 0
    @test how_many_times("appp","apppp") == 0
    @test how_many_times("racecarapenaapapayapineapple","racecarapenaapapayapineapple") == 1
    @test how_many_times("abasitna","ba") == 1
    @test how_many_times("of","aaaaabbbbaaaa") == 0
    @test how_many_times("appp","appp") == 1
    @test how_many_times("cacccccac","appp") == 0
    @test how_many_times("AAAAaaaaaaaabaaaaaaaAAA","racepcaAAAAAAArapenapapayapineapplee") == 0
    @test how_many_times("racepcaAAAAAAArapenapaadipiscingpayapineapplee","aaaaaaaabaaaaaaaaana") == 0
    @test how_many_times("cacc","cacc") == 1
    @test how_many_times("elit.","abcdefghijklmnopqrappppstuvwxyzabc") == 0
    @test how_many_times("the","lazy") == 0
    @test how_many_times("ajumpsaaa","anaba") == 0
    @test how_many_times("AAAAaaaafoxamconsecteturet,aaaabaaaaaaaAAA","Aelit.AAAAAA") == 0
    @test how_many_times("foxamconsecteturet,","p") == 0
    @test how_many_times("na","sit") == 0
    @test how_many_times("appppconsAelit.AAAAAAectetur","consecteturr") == 0
    @test how_many_times("consecteturr","consecteturr") == 1
    @test how_many_times("na","anaba") == 0
    @test how_many_times("aaaaabbbbaaaa","consectedturThe quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("The quick brown fox jumps over the lazy dotheg.","racecarapenaapapayapineapple") == 0
    @test how_many_times("racecarapenanpapayapineapple","foxfaet,") == 0
    @test how_many_times("ba","babcdefghijklmnopqrstuvwxyzabcsit") == 0
    @test how_many_times("fofofofofofofof","dolorof") == 0
    @test how_many_times("oof","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB") == 0
    @test how_many_times("appp","app") == 1
    @test how_many_times("cacccccac","foxaet,") == 0
    @test how_many_times("The quick brown fox jumps over the lazy dotheg.","racecarapenaapapayapineappale") == 0
    @test how_many_times("foxfaect,consecteturr","appppconsAelit.AAAAAAectetur") == 0
    @test how_many_times("appppconsAelit.AAAAAAectetur","conse ctedturThe quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("aAAAAAAAna","aAAAAAAAnaracecarapenaapapayapineappale") == 0
    @test how_many_times("foxamconsecteturet,","Th e quAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.") == 0
    @test how_many_times("oof","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB") == 0
    @test how_many_times("foxamconsecteturet,","Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.") == 0
    @test how_many_times("Aelit.AAAAAAA","Aelit.AAAAAA") == 1
    @test how_many_times("AAAAAAAA","AAAAAAA") == 2
    @test how_many_times("aaaaabbbbaaaa","e") == 0
    @test how_many_times("conse ctedturThe quick brown foxamet, jumps over the lazy dog.","abcdefghijklmnopqrappppstuvwxyzabc") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzaaAAAAAAAnabcipsum","consectetur") == 0
    @test how_many_times("foxamconsecteturet,","pp") == 0
    @test how_many_times("aaaaabbbbafofofofofofofofaaa","aaaaabbbbafofofofofofofofaaa") == 1
    @test how_many_times("aaaaaaaabaaaaaaa","appp") == 0
    @test how_many_times("conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.","conse ctedturThedotheg. quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("jumpsba","AAAAAAA") == 0
    @test how_many_times("aaaaabbba","aaa") == 3
    @test how_many_times("elit.","jumpsba") == 0
    @test how_many_times("racecarapenaapapayapineappale","racecarapenaapapayapineappale") == 1
    @test how_many_times("consecteturr","racecarapenaapapayapineapple") == 0
    @test how_many_times("foxaomconsecteturet,","foxamconsecteturet,") == 0
    @test how_many_times("conse ctedturThedotheg. quick brown foxamet, jumps over the lazy dog.","aaa") == 0
    @test how_many_times("pcacp","AAAAAAAA") == 0
    @test how_many_times("fofofofofofofof","racecaAAAAAAArapenapapayapineapple") == 0
    @test how_many_times("aaaaracecarapenanpapayapineapeplea","aaaaa") == 0
    @test how_many_times("Lorem","cac") == 0
    @test how_many_times("The quick brown foLoremxamet, jumps over the lazy dog.","an") == 0
    @test how_many_times("aanaap","aaaaaaaabaaaaaaaana") == 0
    @test how_many_times("conse ctedturThsit over the lazy dog.","conse ctedturThe quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("AAAAAAAanaba","AAAAAAAanaba") == 1
    @test how_many_times("racecarapenaapapayapineapple","The quick brown fox jumps over the lazy dotheg.") == 0
    @test how_many_times("dog.","foxamconsecteturet,") == 0
    @test how_many_times("quAAAAAAAAA","quAAAAAAAAA") == 1
    @test how_many_times("elit.","basit") == 0
    @test how_many_times("consectetuabcdefghijklmnopqrappppstuvwxyzabcrr","consectetur") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB") == 0
    @test how_many_times("babcdefghijklmnopqrstuvwxyzabcsit","consecuteturr") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB") == 1
    @test how_many_times("racecarapenapapayeapineapple","ba") == 0
    @test how_many_times("foxaet,","foxaet,") == 1
    @test how_many_times("cacccccac","consecteturr") == 0
    @test how_many_times("baa","ba") == 1
    @test how_many_times("anaaa","anaaa") == 1
    @test how_many_times("racecarapenaapapayapineappale","an") == 0
    @test how_many_times("anaap","apfoox") == 0
    @test how_many_times("app","apppp") == 0
    @test how_many_times("quick","quicik") == 0
    @test how_many_times("conse","The quick brown foxamet, jumps over the lazy doTg.") == 0
    @test how_many_times("sbasit","an") == 0
    @test how_many_times("Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.","Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.") == 1
    @test how_many_times("nna","racecaraquAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABrpenapapayapineapple") == 0
    @test how_many_times("anaaaLorem","anaaa") == 1
    @test how_many_times("conse","coonse") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consectetur adipiscing elit.","consectetur") == 1
    @test how_many_times("racecarapenaapapayapineappale","racecarapenapapayapineapple") == 0
    @test how_many_times("foxamet,","fxoxamet,") == 0
    @test how_many_times("apppp","appp") == 1
    @test how_many_times("basit","apppp") == 0
    @test how_many_times("oxaet,","foxaet,") == 0
    @test how_many_times("Th e quAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.","abc") == 0
    @test how_many_times("racepcaAAAAAAAranpenapapayapineapplee","racepcaAAAAAAArapenapapayapinThazy dog.eapplee") == 0
    @test how_many_times("e","conse") == 0
    @test how_many_times("AAAAAAAA","quicik") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","ana") == 0
    @test how_many_times("sbasit","anaap") == 0
    @test how_many_times("Lorem ipsum dolor sit amet, consectetur adipiscing elit.","Lorem ipsum dolor sit amet, consectetur adipiscing elit.") == 1
    @test how_many_times("AAAAAAAA","AAAAAAAA") == 1
    @test how_many_times("fooff","foof") == 1
    @test how_many_times("basit","basit") == 1
    @test how_many_times("aaaaabbbbafofofofofofofofaaa","Thazy dog.") == 0
    @test how_many_times("na","anaana") == 0
    @test how_many_times("sit","na") == 0
    @test how_many_times("racecarapenaapapayapineappapfooxale","racecarapenaapapayapineappale") == 0
    @test how_many_times("Aelit.AAAAAA","racecaracecarrapenapapayapineapplerrapenapapayapineapple") == 0
    @test how_many_times("racecarapenaapapayapineappapfooxale","ana") == 0
    @test how_many_times("quAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr","aaa") == 0
    @test how_many_times("The","ddog.") == 0
    @test how_many_times("foxamconsecteturetp,","foxaomconsecteturet,p") == 0
    @test how_many_times("anaba","anaba") == 1
    @test how_many_times("over","racecarapenaapapayapineappale") == 0
    @test how_many_times("conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.","bc") == 0
    @test how_many_times("aThazynaap","anaap") == 0
    @test how_many_times("The","TAAAAaaaaaaaabaaaaaaaAAAhe") == 0
    @test how_many_times("e","laazy") == 0
    @test how_many_times("coonsecteturr","consecteturr") == 0
    @test how_many_times("conse ctedturThsit over the lazy dog.","aThazynaap") == 0
    @test how_many_times("thhe","the") == 0
    @test how_many_times("basit","bassit") == 0
    @test how_many_times("foLoremxamet,","quicik") == 0
    @test how_many_times("anaba","abcdefghijklmnopqrappppstguvwxyzabc") == 0
    @test how_many_times("annnaaba","anaba") == 0
    @test how_many_times("sit","bassit") == 0
    @test how_many_times("racecaracecarrapenapapayapineapplerrapenapapayapineapple","racecaracecarrapenapapayapineapplerrapenapapayapineapple") == 1
    @test how_many_times("fofofofofofofof","Th e quAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.") == 0
    @test how_many_times("Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.","Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.") == 0
    @test how_many_times("racepcaAAAAAAArapenapapayapineapplee","racecaAAAAAAArapenapapayapifoxaet,neapple") == 0
    @test how_many_times("sbasist","anaap") == 0
    @test how_many_times("sitfox","bassit") == 0
    @test how_many_times("bAAAAaaaafoxamconsecteturet,aaaabaaaaaaaAAAa","ba") == 1
    @test how_many_times("Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.","oxaet,") == 0
    @test how_many_times("fofofofofofofof","racecarapenapapayapineapple") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr","jracecarapenanpapayapineappleumps") == 0
    @test how_many_times("sit","ncaca") == 0
    @test how_many_times("jumpsba","consectedturThe quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzaaAAAAAAAnaabcipsum","consectetur") == 0
    @test how_many_times("AAAAAAA","cac") == 0
    @test how_many_times("laazy","aapfoox") == 0
    @test how_many_times("racecarapenracecaAAAAAAArapenapapayapineapple","racecarapenaapapayapineapple") == 0
    @test how_many_times("jumpsba","AA") == 0
    @test how_many_times("consectedturThe","conse") == 1
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","AAAAaaaaaaaabaaaaaaaAAA") == 0
    @test how_many_times("Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.","dolor") == 0
    @test how_many_times("jracecarapenanpapayapineappleumps","consectetur") == 0
    @test how_many_times("conse ctedturacepcaAAAAAAArapenapapayapinThazy dog.eappleerThsit over the lazy dog.","aThazynddog.aap") == 0
    @test how_many_times("racepcaAAAAAAArapenapapayapinThazy","racecarapenaapapayapineappapfooxale") == 0
    @test how_many_times("tbassithe","the") == 1
    @test how_many_times("Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.","Lorem ipsum dolor sit amet, consectetur adipiscing elit.") == 0
    @test how_many_times("racecarapenanpapayapineapeple","an") == 1
    @test how_many_times("Lor","ipsum") == 0
    @test how_many_times("Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.","Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.") == 1
    @test how_many_times("foxamconsectetret,","Th e quAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the lazy dog.") == 0
    @test how_many_times("Lconse ctedturThsit over the lazy dog.orem ipsum dolor sit amet, consectetur adipiscing elit.","sit") == 2
    @test how_many_times("foxamconsecteturet,","foxamconsecteturetp,") == 0
    @test how_many_times("aaaaaaaabaaaaaaa","racecarapenaapapayapineappale") == 0
    @test how_many_times("consectedtAelit.AAAAAAick brown foxamet, jumps over the lazy dog.","dconsectedturThe quick brown foxamet, jumps over the lazy dog.og.") == 0
    @test how_many_times("aAAAAAAAnaracecarapenaapapayapineappale","foxfaect,consecteturr") == 0
    @test how_many_times("jraaaaaaaabaaaaaaaaanaaceacarapenanpapayapineappleumps","consectetur") == 0
    @test how_many_times("foxaomconseet,","foxamconsecteturet,") == 0
    @test how_many_times("jracecarapenanpapayapiracepcaAAAAAAArapenapapayapineappleeneappleumps","jracecarapenanpapayapiracepcaAAAAAAArapenapapayapineappleeneappleumps") == 1
    @test how_many_times("Th","doTg.") == 0
    @test how_many_times("foxamconsecteturet,","foxamconsecteturet,") == 1
    @test how_many_times("doTg.","oof") == 0
    @test how_many_times("consectedtAelit.AAAAAAick brown foxamet, jumps over the lazy dog.","foxaomconsecteturet,p") == 0
    @test how_many_times("babcdefghianaaajklmnopqrstuvwxyzabcsit","babcdefghijklmnopqrstuvwxyzabcsit") == 0
    @test how_many_times("aaaaabbbbaaaa","racecaAAAAAAArapenapapayapifoxaet,neapplee") == 0
    @test how_many_times("racecarapenanpapayapineapple","racecarapenanpapayapineapple") == 1
    @test how_many_times("aAAAAAAAna","racecaracecarrapenapapayapineracecaracecarrapenapapayapineapapapayapineappleapplerrapenarpapayapineapple") == 0
    @test how_many_times("aapfoox","laazy") == 0
    @test how_many_times("abasitna","racecarapenanpapayapineapeple") == 0
    @test how_many_times("aaaaabbbracecarapenaapapayapineappapfooxalebaaaa","consectedturThe quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("thlaazyeana","the") == 0
    @test how_many_times("oxt,","oxaet,") == 0
    @test how_many_times("an","an") == 1
    @test how_many_times("AAAAAAA","apfoo") == 0
    @test how_many_times("racepcaAAAAAAArapenapapayapineapplee","racepcaAAAAAAAraracecaracecarrapenapapayapineracecaracecarrapenapapayapineapapapayapineappleapplerrapenarpapayapineapplepenapapayapineapplee") == 0
    @test how_many_times("foLoremxamet,","qk") == 0
    @test how_many_times("conse","Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.") == 0
    @test how_many_times("rpapayeapineapple","anaap") == 0
    @test how_many_times("ajumpsaaa","racecaracecarrapenapapayanpineapapapayapineapple") == 0
    @test how_many_times("appppconsAelit.AAAAAAectetur","bc") == 0
    @test how_many_times("AAAAAAThe quick brown foLoremxamet, jumps over the lazy dog.A","AAAAAAThe quick brown foLoremxamet, jumps over the lazy dog.A") == 1
    @test how_many_times("baa","Aelit.AAAAAA") == 0
    @test how_many_times("quAAAAAAAAA","Aelit.AAAAAAAaaa") == 0
    @test how_many_times("aana","ana") == 1
    @test how_many_times("racecarrapenapapayapineapple","aaa") == 0
    @test how_many_times("abcdefghijklmnopqrappppstguvwxyzabc","racecarapenaapapayapineappapfooxale") == 0
    @test how_many_times("consectedtAelit.AAAAAAick brown foxamet, jumps over the lazy dog.","racecaraquAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABrpenapapayapineapple") == 0
    @test how_many_times("racecfoxfaect,consecteturrarapenaapapayapineappapfooxale","racecarapenaapapayapineappale") == 0
    @test how_many_times("foxfaect,consecteturr","anaaa") == 0
    @test how_many_times("aac","abcappppbc") == 0
    @test how_many_times("anaaaLorem","abcdefghijklmnopqrappppstguvwxyzabc") == 0
    @test how_many_times("Th e quAAAAAAAAA AAAAaazy dog.","dconsectedturThe") == 0
    @test how_many_times("coonsecteturr","consencteturr") == 0
    @test how_many_times("aaaa","aaaa") == 1
    @test how_many_times("qobrownffuick","abcdefghijklmnopqrstuvwxbc") == 0
    @test how_many_times("aapfoox","aapfoox") == 1
    @test how_many_times("racecarapenanpapayapineappl","racecarapenanpapayapineapple") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabc","racecarapenaapapayapineappale") == 0
    @test how_many_times("AAAsitAAAA","apfoo") == 0
    @test how_many_times("na","aanaana") == 0
    @test how_many_times("anracecarapenapapayapineapplea","nan") == 0
    @test how_many_times("consectedturThe quick brown foxamet, jumps over the lazy dog.consecrteturr","consecrteturr") == 1
    @test how_many_times("racecaAAAAAAArapenapapayapifoxaet,neapple","jfoxumpsba") == 0
    @test how_many_times("ffoxamconsecteturet,","ffoxamconsecteturet,") == 1
    @test how_many_times("racecarapenapapayapineapple","The quick brown foxamet,racecarapenanpapayapineapple jumconsecteturps over the lazy dog.") == 0
    @test how_many_times("conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.","conse ctedturThedotheg. quick brown foxamet, juAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABmps over the lazy dog.") == 0
    @test how_many_times("racecarapenanpapayapineapepl","racecarapenanpapayapineapeple") == 0
    @test how_many_times("oof","babcdefghianaaajklmnopqrstuvwxyzabcsit") == 0
    @test how_many_times("consectetur","AAAAAAA") == 0
    @test how_many_times("racecarapenaapapayapineappapfooxale","of") == 0
    @test how_many_times("TAAAAaaaaaaaadog.AbaaaaaaaAAAhe","TAAAAaaaaaaaabaaaaaaaAAAhe") == 0
    @test how_many_times("aanaap","aaaaconsecteturaaaabaaaaaaaana") == 0
    @test how_many_times("confoLoremxamet,e","conse") == 0
    @test how_many_times("AAAdotheg.AAA","AAAAAAA") == 0
    @test how_many_times("The","aap") == 0
    @test how_many_times("racecarapenapineppale","racecarapenapapayapineapple") == 0
    @test how_many_times("aanaap","rpapayeapineapple") == 0
    @test how_many_times("conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.","ee") == 0
    @test how_many_times("anabba","anaba") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","conscectetur") == 0
    @test how_many_times("AAAAAAAA","abcdefghijklmnopqrstuvwxyzaaAAAAAAAnabcipsum") == 0
    @test how_many_times("AAAAAAAanaba","aaaaabbbbafofofofofofofofaaa") == 0
    @test how_many_times("consectedturThe","dog.eapplee") == 0
    @test how_many_times("racecarapenaapapThe quick brown foLoremxamet, jumps over the lazy dog.ayapineapple","racecarapenaapapayapineapple") == 0
    @test how_many_times("aaconsannnaabae ctedturacepcaAAAAAAArapenapapayapinThazy dog.eappleerThsit over the lazy dog.aa","aaaa") == 0
    @test how_many_times("quAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr","aThazynddog.aapquAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr") == 0
    @test how_many_times("deTg.","conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("laaaaabbbbaaaaazy","The quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("fofofofofofofof",".dog.") == 0
    @test how_many_times("dog.eapplee","oof") == 0
    @test how_many_times("caccccacac","cacccccac") == 0
    @test how_many_times("pappp","appp") == 1
    @test how_many_times("Lorem","Lorappem") == 0
    @test how_many_times("dog.A","aaconsannnaabae ctedturacepcaAAAAAAArapenapapayapinThazy dog.eappleerThsit over the lazy dog.aa") == 0
    @test how_many_times("dog.eapplee","quAAAAAAAAA") == 0
    @test how_many_times("conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.","racecaAAAAAAArapenapapayapineapple") == 0
    @test how_many_times("app","app") == 1
    @test how_many_times("dog.eappleerT","TAAAAaaaaaaaabaaaaaaaAAAhe") == 0
    @test how_many_times("iracecarapenracecaAAAAAAArapenapapayapineapplesum","ipsum") == 0
    @test how_many_times("oof","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjracecarapenanpapayapineappleuctedturThempsAAAAAAAAAAAAAAAAAB") == 0
    @test how_many_times("aaaaabbba","AAAdotheg.AAA") == 0
    @test how_many_times("Lor","anaba") == 0
    @test how_many_times("jus","aaaaaaaabaaaaaaaana") == 0
    @test how_many_times("TAAAAaaaaaaaabaaaaaaaAAAhe","The") == 0
    @test how_many_times("consectedturThe quick brown foxamet, jumps over the lazThazy dog.y dog.","consectedturThe quick brown foxamet, jumps over the lazy dog.") == 0
    @test how_many_times("racepcaAAAAAAArapenapapayapineapplee","racecaAAAAAAArapenapapAelit.AAAAAAayapifoxaet,neapple") == 0
    @test how_many_times("conse ctedturacepcaAAAAAAArapenapapayapinThazy dog.eappleerThsit over the lazy dog.","conse ctedturacepcaAAAAAAArapenapapayapinThazy dog.eappleerThsit over the lazy dog.") == 1
    @test how_many_times("babcdefghijklmnopqrstuvwxyzabcsit","babcdefghijklmnopqrstuvwxyzabcsit") == 1
    @test how_many_times("oof","ofracepcaAAAAAAArapenapaadipiscingpayapineapplee") == 0
    @test how_many_times("Tjfoxumpsbahe","TAAAAaaaaaaaabaaaaaaaAAAhe") == 0
    @test how_many_times("nana","ana") == 1
    @test how_many_times("aanaanasit","na") == 2
    @test how_many_times("apgciRKR","dPgciRKR") == 0
    @test how_many_times("an","Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.") == 0
    @test how_many_times("sitoof","na") == 0
    @test how_many_times("aaaaabbbbafofofofofofofofaaa","aaaaabbbbafofofofofofaa") == 0
    @test how_many_times("aAAAAAAAnaconsecteturracecarapenaapapayapineappale","foxfaect,consecteturr") == 0
    @test how_many_times("an","AAAdotheg.AAA") == 0
    @test how_many_times("ajumpsaaa","ajumpsaaa") == 1
    @test how_many_times("laaznay","laazy") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAB","AAAAAAAAAAAAAAAAAAAAAAAAAAAB") == 1
    @test how_many_times("Lorem","racepcaAAAAAAAraracecaracecarrapenapapayapineracecaracecarrapenapapayapineapapapayapineappleapplerrapenarpapayapineapplepenapapayapineapplee") == 0
    @test how_many_times("na","na") == 1
    @test how_many_times("foxamconsecteracecarapenanpapayapineapplre,","foxamconsecteracecarapenanpapayapineapplret,") == 0
    @test how_many_times("laazy","alaazy") == 0
    @test how_many_times("abcdefghijklmnopqrstuvwxyzabc","c") == 2
    @test how_many_times("o","of") == 0
    @test how_many_times("p","p") == 1
    @test how_many_times("conaaaaracecarapenanpapayapineapepleasectetur","AAAAAAA") == 0
    @test how_many_times("ssit","ncaca") == 0
    @test how_many_times("coonsecteturr","aana") == 0
    @test how_many_times("foxamconsecteturet,","racecfoxfaect,consecteturrarapenaapapayapineappapfooxale") == 0
    @test how_many_times("anaaaLelit.or","anaaaLelit.or") == 1
    @test how_many_times("daog.aa","daog.aa") == 1
    @test how_many_times("foxamconsectetuAAAdotheg.AAAret,","foxamconsecteturet,") == 0
    @test how_many_times("racecarapenapineppale","racecarapenapineppale") == 1
    @test how_many_times("foxaomconsecteturet,p","foxaomconsecteturet,p") == 1
    @test how_many_times("brown","e") == 0
    @test how_many_times("anabanana","anabanana") == 1
    @test how_many_times("TAAAAaaaaaaaadog.AbaaaaaaaAAAhe","TAAAAaaaaaaaadog.AbaaaaaaaAAAhe") == 1
    @test how_many_times("jumpsba","jumpsba") == 1
    @test how_many_times("aaaaaa","aaaaa") == 2
    @test how_many_times("abcdefghijklmnopqrstuvconsectedturThe quick brown foxamet, jumps over the lazy dog.wxyzabc","abcdefghijklmnopqrstuvwxyzabc") == 0
    @test how_many_times("consectedtAelit.AAAAAAick brown foxamr theconse ctedturThe quick brown foxamet, jumps over the lazy dog.g.","consectedtAelit.AAAAAAick brown foxamr the lazy dog.") == 0
    @test how_many_times("cc","cc") == 1
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB","racecarapenaaanabapapayapineapple") == 0
    @test how_many_times("apppp","apppp") == 1
    @test how_many_times("nana","racecarapenanpapayapineapple") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjracecarapenanpapayapineappleuctedturThempsAAAAAAAAAAAAAAAAAB","quAAAAAAAAA") == 0
    @test how_many_times("racecarapenapapayapineapple","The quick brown foxamet,racecarapenanpapayapineapple jumconsecrps over the lazy dog.") == 0
    @test how_many_times("dog.y","dconsectedturThe quick brown foxamet, jumps over the lazy dog.og.") == 0
    @test how_many_times("conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.","conse ctedturThedotheobrownfg. quick brown foxamet, jumps over the lazy dog.") == 1
    @test how_many_times("iupsum","the") == 0
    @test how_many_times("ansbasit","Th e quAAAAAAAAA AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABr the laaaaabbbbaaaaazy dog.") == 0
    @test how_many_times("ccac","cac") == 1
    @test how_many_times("sitoof","consectetur") == 0
    @test how_many_times("aana","anaap") == 0
    @test how_many_times("aAAAAAAAAAAAAAAAAAAAAAAAAAAAABna","ana") == 0
    @test how_many_times("foxaet,","cquick") == 0
    @test how_many_times("racecarapenaapapayapbAAAAaaaafoxamconsecteturet,aaaabaaaaaaaAAAapple","The quick brown foLoremxamet, jumps over the lazy dog.") == 0
    @test how_many_times("anaaaLorem","anaaaLorem") == 1
    @test how_many_times("anabanana","anansbasitabanana") == 0
    @test how_many_times("oxaet,","foxaeet,") == 0
    @test how_many_times("conse ctedturacepcaAcAAAAAArapenapapayapinThazy dog.eappleerThsit over the lazy dog.","aThazynddog.aap") == 0
    @test how_many_times("abcdefghijklmnopqrappppstguvwxyzabc","abcdefghijklmnopqrappppstguvwxyzabc") == 1
    @test how_many_times("anabanana","annabanana") == 0
    @test how_many_times("TAAAAaaaaaaaaaaaaaadog.AbaaaaaaaAAAhe","TAAAAaaaaaaaadog.AbaaaaaaaAAAhe") == 0
    @test how_many_times("broown","e") == 0
    @test how_many_times("Th","Th") == 1
    @test how_many_times("aadipiscing","aadipiscing") == 1
    @test how_many_times("aAAAAAAAAabcdefghijklmnopqrstuvwxyzaaAAAAAaaaaaAAnabcipsumna","aAAAAAAAAabcdefghijklmnopqrstuvwxyzaaAAAAAaaaaaAAnabcipsumna") == 1
    @test how_many_times("foxaet,","quickanansbasitabanana") == 0
    @test how_many_times("appppconsAelit.AAAAAAectretur","bc") == 0
    @test how_many_times("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjracecarapenanpapayapineappleuctedturThempsAAAAAAAAAAAAAAAAAB","AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAjracecarapenanpapayapineappleuctedturThempsAAAAAAAAAAAAAAAAAB") == 1
    @test how_many_times("consecrteturr","consecrteturr") == 1
end
