@testitem "125_split_words_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "125_split_words.jl"))
    @test split_words("Hello?") == 2
    @test split_words("abc deg") == SubString{String}["abc", "deg"]
    @test split_words("aaa,bbb") == SubString{String}["aaa", "bbb"]
    @test split_words("Hello World!") == SubString{String}["Hello", "World!"]
    @test split_words("123,456") == SubString{String}["123", "456"]
    @test split_words("abc123") == 1
    @test split_words("Hello , world !") == SubString{String}["Hello", ",", "world", "!"]
    @test split_words("apple, banana, orange, grapefruit") == SubString{String}["apple,", "banana,", "orange,", "grapefruit"]
    @test split_words("1234") == 0
    @test split_words("HELLO WORLD") == SubString{String}["HELLO", "WORLD"]
    @test split_words("aabc123") == 1
    @test split_words("Hellabc123o , world !") == SubString{String}["Hellabc123o", ",", "world", "!"]
    @test split_words("HELLOHELLO WORLD WOORLD") == SubString{String}["HELLOHELLO", "WORLD", "WOORLD"]
    @test split_words("g") == 0
    @test split_words("aaabc123") == 1
    @test split_words("Hello ,Hello? world !") == SubString{String}["Hello", ",Hello?", "world", "!"]
    @test split_words("Hello dWorlld!") == SubString{String}["Hello", "dWorlld!"]
    @test split_words("Hello WdWorlld!") == SubString{String}["Hello", "WdWorlld!"]
    @test split_words("abc de") == SubString{String}["abc", "de"]
    @test split_words("aabc123Hello World!") == SubString{String}["aabc123Hello", "World!"]
    @test split_words("abcd de") == SubString{String}["abcd", "de"]
    @test split_words("2aaabc123") == 1
    @test split_words("abcHELLOHELLO WOORLD WOORLD de") == SubString{String}["abcHELLOHELLO", "WOORLD", "WOORLD", "de"]
    @test split_words("abcHello World! deg") == SubString{String}["abcHello", "World!", "deg"]
    @test split_words("NDcwhK") == 1
    @test split_words("abca123") == 1
    @test split_words("abcHELLOHELLO WRLD de") == SubString{String}["abcHELLOHELLO", "WRLD", "de"]
    @test split_words("Helalabc123o , world !") == SubString{String}["Helalabc123o", ",", "world", "!"]
    @test split_words("dabcd de") == SubString{String}["dabcd", "de"]
    @test split_words("ab cd deg") == SubString{String}["ab", "cd", "deg"]
    @test split_words("abcHELLOHELLO WRabcHELLOHELLO WOORLD WOORLD deLD de") == SubString{String}["abcHELLOHELLO", "WRabcHELLOHELLO", "WOORLD", "WOORLD", "deLD", "de"]
    @test split_words("NDcwK") == 0
    @test split_words("Hello ,Hello? rld !") == SubString{String}["Hello", ",Hello?", "rld", "!"]
    @test split_words("Hello , world Hello , world !!") == SubString{String}["Hello", ",", "world", "Hello", ",", "world", "!!"]
    @test split_words("Helalabc123o , bworld !") == SubString{String}["Helalabc123o", ",", "bworld", "!"]
    @test split_words("HELLOHello , world !HELLO WORLD WOOLRLD") == SubString{String}["HELLOHello", ",", "world", "!HELLO", "WORLD", "WOOLRLD"]
    @test split_words("abcabc a123") == SubString{String}["abcabc", "a123"]
    @test split_words("abcHello , deworabcd dded a123") == SubString{String}["abcHello", ",", "deworabcd", "dded", "a123"]
    @test split_words("Hello ,Helaabc123lo? rld  !") == SubString{String}["Hello", ",Helaabc123lo?", "rld", "!"]
    @test split_words("ababc123") == 2
    @test split_words("12344") == 0
    @test split_words("H!ello WdWorlld!") == SubString{String}["H!ello", "WdWorlld!"]
    @test split_words("Heab cd deglled 1234") == SubString{String}["Heab", "cd", "deglled", "1234"]
    @test split_words("aaabc123aabc123Hello World!") == SubString{String}["aaabc123aabc123Hello", "World!"]
    @test split_words("dabcd aaabc123aabc123Hello World!e") == SubString{String}["dabcd", "aaabc123aabc123Hello", "World!e"]
    @test split_words("oHelldHelled !") == SubString{String}["oHelldHelled", "!"]
    @test split_words("abc g") == SubString{String}["abc", "g"]
    @test split_words("Hello ,Hello? rlaabc123c d !") == SubString{String}["Hello", ",Hello?", "rlaabc123c", "d", "!"]
    @test split_words("abcHELLOHELLO WRLLD dee") == SubString{String}["abcHELLOHELLO", "WRLLD", "dee"]
    @test split_words("abce deg") == SubString{String}["abce", "deg"]
    @test split_words("Hello , worHelled ld !") == SubString{String}["Hello", ",", "worHelled", "ld", "!"]
    @test split_words("aaa3bc123") == 1
    @test split_words("Helalabc123o , bworldNDcwhK!") == SubString{String}["Helalabc123o", ",", "bworldNDcwhK!"]
    @test split_words("aabc12abc1233") == 2
    @test split_words("ab cd degab cd deg") == SubString{String}["ab", "cd", "degab", "cd", "deg"]
    @test split_words("Hello , world HellHello , eworabcd deHello2aaabc123 , world !d o , world !!") == SubString{String}["Hello", ",", "world", "HellHello", ",", "eworabcd", "deHello2aaabc123", ",", "world", "!d", "o", ",", "world", "!!"]
    @test split_words("ab cdg deg") == SubString{String}["ab", "cdg", "deg"]
    @test split_words("aObcLHELLOHELLO WRLD de") == SubString{String}["aObcLHELLOHELLO", "WRLD", "de"]
    @test split_words("aObcLHELLOHELLOHELLO WORLD WOORLDHELLO WRLD de") == SubString{String}["aObcLHELLOHELLOHELLO", "WORLD", "WOORLDHELLO", "WRLD", "de"]
    @test split_words("HelloHello ,Helaabc123lo? rld  ! ,Hello? world Hello ,Hello? rlaabc123c d !!") == SubString{String}["HelloHello", ",Helaabc123lo?", "rld", "!", ",Hello?", "world", "Hello", ",Hello?", "rlaabc123c", "d", "!!"]
    @test split_words("Heab cabcHello World! degd deglled 1234") == SubString{String}["Heab", "cabcHello", "World!", "degd", "deglled", "1234"]
    @test split_words("14") == 0
    @test split_words("zAMobwxrx") == 5
    @test split_words("HHelblo ,Helaabc123lo? rl") == SubString{String}["HHelblo", ",Helaabc123lo?", "rl"]
    @test split_words("HELLOD") == 0
    @test split_words("ab cd cdeg") == SubString{String}["ab", "cd", "cdeg"]
    @test split_words("abcHello Worlld! deg") == SubString{String}["abcHello", "Worlld!", "deg"]
    @test split_words("abcHello , deworabcd dHello , worHelled ld !ded a123") == SubString{String}["abcHello", ",", "deworabcd", "dHello", ",", "worHelled", "ld", "!ded", "a123"]
    @test split_words("ab cdg deg12344") == SubString{String}["ab", "cdg", "deg12344"]
    @test split_words("gg") == 0
    @test split_words("aaa,bb") == SubString{String}["aaa", "bb"]
    @test split_words("Hello , woapple, banana, orange, grapefruitrld Hello , world !!") == SubString{String}["Hello", ",", "woapple,", "banana,", "orange,", "grapefruitrld", "Hello", ",", "world", "!!"]
    @test split_words("zAMorx") == 3
    @test split_words("Hello , world HellHello ,d !d o , world !!") == SubString{String}["Hello", ",", "world", "HellHello", ",d", "!d", "o", ",", "world", "!!"]
    @test split_words("HOHello , world !HELLO WORLD WOOLRLD") == SubString{String}["HOHello", ",", "world", "!HELLO", "WORLD", "WOOLRLD"]
    @test split_words("NHello , world Hello , world !!DcwhK") == SubString{String}["NHello", ",", "world", "Hello", ",", "world", "!!DcwhK"]
    @test split_words("Hello ,Hello? waaa,bborld !") == SubString{String}["Hello", ",Hello?", "waaa,bborld", "!"]
    @test split_words("HHelblo ,Helaabc123lo? rlabcHello Worlld! deg") == SubString{String}["HHelblo", ",Helaabc123lo?", "rlabcHello", "Worlld!", "deg"]
    @test split_words("Hello , w orld Hello , world !!") == SubString{String}["Hello", ",", "w", "orld", "Hello", ",", "world", "!!"]
    @test split_words("aObcLOHELLO HELLOHELLO WORLD WOORLDHELLO WRLaabc123D de") == SubString{String}["aObcLOHELLO", "HELLOHELLO", "WORLD", "WOORLDHELLO", "WRLaabc123D", "de"]
    @test split_words("oHeHlldHelled !") == SubString{String}["oHeHlldHelled", "!"]
    @test split_words("dabcd aaabc123aabab cdg deg12344c123Hello World!e") == SubString{String}["dabcd", "aaabc123aabab", "cdg", "deg12344c123Hello", "World!e"]
    @test split_words("aaab cdg deg12344a,bbb") == SubString{String}["aaab", "cdg", "deg12344a,bbb"]
    @test split_words("NDcwhwK") == 1
    @test split_words("ab ecd degab cd deg") == SubString{String}["ab", "ecd", "degab", "cd", "deg"]
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("Testing with spaces, commas and odd-order lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spaces,", "commas", "and", "odd-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("Testing error handling when None is passed as the input parameter") == SubString{String}["Testing", "error", "handling", "when", "None", "is", "passed", "as", "the", "input", "parameter"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supercalifragilisticexpialidocious"]
    @test split_words("A mix of spaces and commas like this,should split as,words,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890"]
    @test split_words("This text contains no whitespaces but has commas,a period, and  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("This also has no whitespaces, but only has commas like, this, and, that, so we should split on commas") == SubString{String}["This", "also", "has", "no", "whitespaces,", "but", "only", "has", "commas", "like,", "this,", "and,", "that,", "so", "we", "should", "split", "on", "commas"]
    @test split_words("A normal sentence with whitespaces and no commas") == SubString{String}["A", "normal", "sentence", "with", "whitespaces", "and", "no", "commas"]
    @test split_words("ABCDEFG") == 0
    @test split_words("k") == 0
    @test split_words("A normal sentence with whitespaces and noommas") == SubString{String}["A", "normal", "sentence", "with", "whitespaces", "and", "noommas"]
    @test split_words("should") == 3
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilificateion, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilificateion,", "supercalifragilisticexpialidocious"]
    @test split_words("eZWOsSCmTx") == 1
    @test split_words("so") == 0
    @test split_words("Testing erros the input parameter") == SubString{String}["Testing", "erros", "the", "input", "parameter"]
    @test split_words("supercalifragilisticexpialidocious64") == 11
    @test split_words("kk") == 0
    @test split_words("wOWbbX") == 2
    @test split_words("normal") == 3
    @test split_words("v!mll!d") == 4
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("handling") == 5
    @test split_words("only") == 2
    @test split_words("supercalifragilisticexpiali12345,67890cious") == SubString{String}["supercalifragilisticexpiali12345", "67890cious"]
    @test split_words("like") == 1
    @test split_words("errsos") == 2
    @test split_words("Testing with spacsupercalifragilisticexpiali12345,67890ciouses, commas and odd-order lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spacsupercalifragilisticexpiali12345,67890ciouses,", "commas", "and", "odd-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("A mix of spaces and commas like this,should split as,words,and numbersthhis, like 12345,678900") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbersthhis,", "like", "12345,678900"]
    @test split_words("A mix of antidisestatheblishmentarianism,0") == SubString{String}["A", "mix", "of", "antidisestatheblishmentarianism,0"]
    @test split_words("A mix of spaces and commas like this,should split as,word s,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,word", "s,and", "numbers", "like", "12345,67890"]
    @test split_words("A mix of spaces and commas like thids,should split as,word s,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "thids,should", "split", "as,word", "s,and", "numbers", "like", "12345,67890"]
    @test split_words("commas,a") == SubString{String}["commas", "a"]
    @test split_words("as,words,,a") == SubString{String}["as", "words", "", "a"]
    @test split_words("trrf.vph") == 7
    @test split_words("this,should") == SubString{String}["this", "should"]
    @test split_words("sentence") == 3
    @test split_words("such") == 1
    @test split_words("None") == 1
    @test split_words("jp") == 2
    @test split_words("A nice luist of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccificateion, supercalifragilisticexpialidolcious") == SubString{String}["A", "nice", "luist", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccificateion,", "supercalifragilisticexpialidolcious"]
    @test split_words("jpnormal") == 5
    @test split_words("A mix of spacesk and commas like this,should split as,words,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spacesk", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("of") == 1
    @test split_words("A normal sentence with whitespacpes and noommas") == SubString{String}["A", "normal", "sentence", "with", "whitespacpes", "and", "noommas"]
    @test split_words("onlyed!vhllxblxyqv") == 12
    @test split_words("dz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,k") == SubString{String}["dz.olhjcymqpz", "wnfx;lz.iwrohveybkgts.feaasfbyb", "k"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsiilicovolcanoconiosis, floccinaucinihilipilificateion, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsiilicovolcanoconiosis,", "floccinaucinihilipilificateion,", "supercalifragilisticexpialidocious"]
    @test split_words("Testing") == 2
    @test split_words("text") == 3
    @test split_words("supercalifragilisticexpiali12345,67890ciousA normal sentence with whitespaces and noommas") == SubString{String}["supercalifragilisticexpiali12345,67890ciousA", "normal", "sentence", "with", "whitespaces", "and", "noommas"]
    @test split_words("A mix of spacesk and cohould split as,words,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,words,and", "numbers", "like", "12345,67890"]
    @test split_words("o") == 0
    @test split_words("seisntence") == 3
    @test split_words("commas") == 0
    @test split_words("A") == 0
    @test split_words("aUTtCDfe") == 2
    @test split_words("Tesrameter") == 3
    @test split_words("onlyedjp!vhllxblxyqv") == 14
    @test split_words("jwzfxwpfxyqkiaUTtCDfe") == 9
    @test split_words("normabitl") == 5
    @test split_words("pniceasssantidisestatheblishmentarianism,0ed") == SubString{String}["pniceasssantidisestatheblishmentarianism", "0ed"]
    @test split_words("A normal sentences with whitespaces and noommas") == SubString{String}["A", "normal", "sentences", "with", "whitespaces", "and", "noommas"]
    @test split_words("Sep") == 1
    @test split_words("supercalifragilisticexpiali1esd;2345,67890cious") == SubString{String}["supercalifragilisticexpiali1esd;2345", "67890cious"]
    @test split_words("aUTtCaeDfe") == 2
    @test split_words("aalalsoso") == 2
    @test split_words("whitespacpes") == 4
    @test split_words("with") == 2
    @test split_words("ek!m,rkk") == SubString{String}["ek!m", "rkk"]
    @test split_words("onlyed!lowercasevhllxblxyqv") == 14
    @test split_words("A mix of spacesk and cohould split as,words,and numbers,67890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,words,and", "numbers,67890"]
    @test split_words("A nice list of words lipneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "lipneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supercalifragilisticexpialidocious"]
    @test split_words("spaces") == 1
    @test split_words("on") == 1
    @test split_words("llike") == 2
    @test split_words("supercalifragilistiicexpiali1esd;2345,67890cious") == SubString{String}["supercalifragilistiicexpiali1esd;2345", "67890cious"]
    @test split_words("passed") == 2
    @test split_words("sentences") == 3
    @test split_words("A nice list of words like antidisestablishmentaroianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("A normal sentence w3.9.7ith whitespaces and noommas") == SubString{String}["A", "normal", "sentence", "w3.9.7ith", "whitespaces", "and", "noommas"]
    @test split_words("hanhdlA normal sentence with whitespaces and no floccinaucinihilipilificateion,commasing") == SubString{String}["hanhdlA", "normal", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,commasing"]
    @test split_words("bA") == 1
    @test split_words("A niA normal sentence with whitespaces and noommasce list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "niA", "normal", "sentence", "with", "whitespaces", "and", "noommasce", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("noommas") == 1
    @test split_words("luiist") == 2
    @test split_words("hjklpzryebaproyqtmq.") == 10
    @test split_words("sh(defaultas,words,and,oulsupercalifragilisticexpiali1esd;2345,67890ciousd") == SubString{String}["sh(defaultas", "words", "and", "oulsupercalifragilisticexpiali1esd;2345", "67890ciousd"]
    @test split_words("hsUoS") == 1
    @test split_words("input") == 3
    @test split_words("A normal hsUoSsentence with whitespacpes and noommas") == SubString{String}["A", "normal", "hsUoSsentence", "with", "whitespacpes", "and", "noommas"]
    @test split_words("noommasce") == 1
    @test split_words("A mix of spacesk and cohould split as,words,and numbers,67890th") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,words,and", "numbers,67890th"]
    @test split_words("sspaces") == 1
    @test split_words("Testing error handling when None is prassed as the input parameter") == SubString{String}["Testing", "error", "handling", "when", "None", "is", "prassed", "as", "the", "input", "parameter"]
    @test split_words("also") == 1
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)]numbersthhis, \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]numbersthhis,"]
    @test split_words("A normal sentence with whtitespaces and no commas") == SubString{String}["A", "normal", "sentence", "with", "whtitespaces", "and", "no", "commas"]
    @test split_words("mix") == 1
    @test split_words("A mix of spacesk and cohould split as,words,and numbers,u67890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,words,and", "numbers,u67890"]
    @test split_words("iunput") == 3
    @test split_words("A mix of spacesk and cohould split as,hjklpwords,and numbers,67890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,hjklpwords,and", "numbers,67890"]
    @test split_words("") == 0
    @test split_words("oweA") == 0
    @test split_words("A mix of spaces and commas like this,should split as,words,and numbers like 12345,67890text") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890text"]
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.191v6 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.191v6", "64", "bit", "(AMD64)]"]
    @test split_words("mplizuvx;pz") == 7
    @test split_words("supercalifragilisticexpialidolcious") == 12
    @test split_words("GSG") == 0
    @test split_words("es") == 0
    @test split_words("A nice list of words like antidisestabclishmentarianism, pneumonoultramicroscopicsiilicovolcanoconiosis, floccinaucinihilipilificateion, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestabclishmentarianism,", "pneumonoultramicroscopicsiilicovolcanoconiosis,", "floccinaucinihilipilificateion,", "supercalifragilisticexpialidocious"]
    @test split_words("A mix of spacesk and cohould split as,hjklpwords,and numbers,6A normal sentence with whtitespaces and no commas7890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,hjklpwords,and", "numbers,6A", "normal", "sentence", "with", "whtitespaces", "and", "no", "commas7890"]
    @test split_words("supercalifragilisticexpialidocus64") == 11
    @test split_words("Nonee!m,r") == SubString{String}["Nonee!m", "r"]
    @test split_words("supercalifragilisticexpiali1esd;2345,67890cioubits") == SubString{String}["supercalifragilisticexpiali1esd;2345", "67890cioubits"]
    @test split_words("antThis") == 3
    @test split_words("no") == 1
    @test split_words("A mix of spaces and commas like this,shoulld split as,words,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,shoulld", "split", "as,words,and", "numbers", "like", "12345,67890"]
    @test split_words("(AMD64)supercalifragilisticexpiali1esd;2345,67890cioubits]") == SubString{String}["(AMD64)supercalifragilisticexpiali1esd;2345", "67890cioubits]"]
    @test split_words("sentencne") == 4
    @test split_words("aalso") == 1
    @test split_words("d") == 1
    @test split_words("onlyedjp!vspacesxblxyqv") == 12
    @test split_words("26") == 0
    @test split_words("As mix of antidisestatheblishmentarianism,0") == SubString{String}["As", "mix", "of", "antidisestatheblishmentarianism,0"]
    @test split_words("floccinaucinihilipilificateion,p") == SubString{String}["floccinaucinihilipilificateion", "p"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,phanhdlAidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,phanhdlAidocious"]
    @test split_words("wen") == 1
    @test split_words("This text contains no whitespaces but has commas,a period, and  odd-orspacesc,der lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-orspacesc,der", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("antidisestatheblishmentarianism,0") == SubString{String}["antidisestatheblishmentarianism", "0"]
    @test split_words("lowercasek") == 2
    @test split_words("luist") == 2
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidthxdkazwhvui,ocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidthxdkazwhvui,ocious"]
    @test split_words("spacesc,supercalifragilisticexpialidocious") == SubString{String}["spacesc", "supercalifragilisticexpialidocious"]
    @test split_words("floccinaucinihiilion,p") == SubString{String}["floccinaucinihiilion", "p"]
    @test split_words("A mix of spaces and commas like this,shoulld split as,words,ers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,shoulld", "split", "as,words,ers", "like", "12345,67890"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonousltramicroscopicsilicovolcanoconsniosis, floccinaucinihilipilificateion,phanhdlAidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonousltramicroscopicsilicovolcanoconsniosis,", "floccinaucinihilipilificateion,phanhdlAidocious"]
    @test split_words("A mix of spaces and commas like this,should split as,words,and n,umbersthhis, like 12345,678900") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "n,umbersthhis,", "like", "12345,678900"]
    @test split_words("noommamms") == 1
    @test split_words("eA") == 0
    @test split_words("niA") == 1
    @test split_words("jwzfxwpfxyqkiaUTtCkDfe") == 9
    @test split_words("A mix of spacesk and cohould split as,ds,and numbers,6A normal sentence with whtitespaces and no commas7890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,ds,and", "numbers,6A", "normal", "sentence", "with", "whtitespaces", "and", "no", "commas7890"]
    @test split_words("08:14:53)") == 0
    @test split_words("jgKFmqluVX") == 2
    @test split_words("anti") == 2
    @test split_words("jnormal") == 4
    @test split_words("ants") == 2
    @test split_words("comA normal hsUoSsentence with whitespacpes and noommasmas,a") == SubString{String}["comA", "normal", "hsUoSsentence", "with", "whitespacpes", "and", "noommasmas,a"]
    @test split_words("As") == 0
    @test split_words("onlyed!vhllxblxycomA normal hsUoSsentence with whitespacpes and noommasmas,aqvv") == SubString{String}["onlyed!vhllxblxycomA", "normal", "hsUoSsentence", "with", "whitespacpes", "and", "noommasmas,aqvv"]
    @test split_words("sentencnne") == 5
    @test split_words("Testing error handling when None is prasseed as the input parasentencnnemeter") == SubString{String}["Testing", "error", "handling", "when", "None", "is", "prasseed", "as", "the", "input", "parasentencnnemeter"]
    @test split_words("hanhdlA normial sentence with whitespaces and no floccinaucinihilipilificateion,commasing") == SubString{String}["hanhdlA", "normial", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,commasing"]
    @test split_words("A nice list of words laucinihilipilificateion, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "laucinihilipilificateion,", "supercalifragilisticexpialidocious"]
    @test split_words("hanhdlA normilal sentence with whitespaces and no floccinaucinihilipilificateion,commasing") == SubString{String}["hanhdlA", "normilal", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,commasing"]
    @test split_words("we") == 0
    @test split_words("aUTtCDe") == 1
    @test split_words("fFQFb") == 2
    @test split_words("supercalifragilisticexpi ali12345,67890ciousA normal sentence with whitespaces and noommas") == SubString{String}["supercalifragilisticexpi", "ali12345,67890ciousA", "normal", "sentence", "with", "whitespaces", "and", "noommas"]
    @test split_words("commasA mix of spaces and commas like this,shoulld split as,words,ers like 12345,67890,a") == SubString{String}["commasA", "mix", "of", "spaces", "and", "commas", "like", "this,shoulld", "split", "as,words,ers", "like", "12345,67890,a"]
    @test split_words("tetxt") == 4
    @test split_words("wiiwth") == 2
    @test split_words("aajwzfxwpfxyqkiaUTtCDfelso") == 10
    @test split_words("andTesting with spacsupercalifragilisticexpiali12345,67890ciouses, commas and odd-order lowercase letters like a, bdf, hjklp") == SubString{String}["andTesting", "with", "spacsupercalifragilisticexpiali12345,67890ciouses,", "commas", "and", "odd-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("luiiust") == 2
    @test split_words("nlbormal") == 5
    @test split_words("parameter") == 4
    @test split_words("noommamsms") == 1
    @test split_words("antidianism,0") == SubString{String}["antidianism", "0"]
    @test split_words("words") == 2
    @test split_words("antidim,0") == SubString{String}["antidim", "0"]
    @test split_words("o3.9.7nTesrameterly") == 5
    @test split_words("[MSC") == 0
    @test split_words("08:1:53)") == 0
    @test split_words("this,ishouldno") == SubString{String}["this", "ishouldno"]
    @test split_words("normaaal") == 3
    @test split_words("hanhdlA normial sentence with whitespaces and no floccinaucinihilipilificateion,commasingf") == SubString{String}["hanhdlA", "normial", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,commasingf"]
    @test split_words("v!mll!md") == 4
    @test split_words("whtitespaces") == 4
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultr amicroscopicsilicovolcanoconsiosis, floificateion,phanhdlAidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultr", "amicroscopicsilicovolcanoconsiosis,", "floificateion,phanhdlAidocious"]
    @test split_words("hanhdlA normal sentence with whitespaces and no floccinaucinihilipilificateion,cosing") == SubString{String}["hanhdlA", "normal", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,cosing"]
    @test split_words("A nice list of words laucinihilipilificateion, supercalifragilisiticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "laucinihilipilificateion,", "supercalifragilisiticexpialidocious"]
    @test split_words("sentencesas,words,and") == SubString{String}["sentencesas", "words", "and"]
    @test split_words("(AMD64)supercalifragilisticexpiali1esd;2345,67x890cioubits]") == SubString{String}["(AMD64)supercalifragilisticexpiali1esd;2345", "67x890cioubits]"]
    @test split_words("supercalifragilisticexpiali12345,67890ciousA") == SubString{String}["supercalifragilisticexpiali12345", "67890ciousA"]
    @test split_words("ttetxt") == 5
    @test split_words("floccinaucinihilnipilificateion,commasing") == SubString{String}["floccinaucinihilnipilificateion", "commasing"]
    @test split_words("aUTtCaeDf12345,6antThis7890texte") == SubString{String}["aUTtCaeDf12345", "6antThis7890texte"]
    @test split_words("whtitespasaces") == 4
    @test split_words("nbormal") == 4
    @test split_words("cohould") == 3
    @test split_words("this,shoulld") == SubString{String}["this", "shoulld"]
    @test split_words("like,None") == SubString{String}["like", "None"]
    @test split_words("flo2021,ccinaucinihilipilificateion,p") == SubString{String}["flo2021", "ccinaucinihilipilificateion", "p"]
    @test split_words("uflo2021,ccinaucinihilipilificateion,p") == SubString{String}["uflo2021", "ccinaucinihilipilificateion", "p"]
    @test split_words("A normal sentencPython 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)]numbersthhis, \ne with whtitespaces and no commas") == SubString{String}["A", "normal", "sentencPython", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]numbersthhis,", "e", "with", "whtitespaces", "and", "no", "commas"]
    @test split_words("A normal hsUoSsentence with whitespacpletterses aantindisestablishmentarianoism,nd") == SubString{String}["A", "normal", "hsUoSsentence", "with", "whitespacpletterses", "aantindisestablishmentarianoism,nd"]
    @test split_words("jgKaantindisestablishmentarieanoism,ndFmqluVX") == SubString{String}["jgKaantindisestablishmentarieanoism", "ndFmqluVX"]
    @test split_words("llikbA normal sentence with whitespacpes and noommasdf,e") == SubString{String}["llikbA", "normal", "sentence", "with", "whitespacpes", "and", "noommasdf,e"]
    @test split_words("parameeter") == 4
    @test split_words("pneumonoultr") == 6
    @test split_words("A nice list ofo words like antidisestablishmentaroianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "ofo", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("A mix of spacesk and cohould split as,hjklpwords,and snumbers,6A normal sentence with whtitespaces and no cosmmas7890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,hjklpwords,and", "snumbers,6A", "normal", "sentence", "with", "whtitespaces", "and", "no", "cosmmas7890"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinauA mix of spacesk and cohould split as,hjklpwords,and numbers,67890cinihilipilification, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinauA", "mix", "of", "spacesk", "and", "cohould", "split", "as,hjklpwords,and", "numbers,67890cinihilipilification,", "supercalifragilisticexpialidocious"]
    @test split_words("floccinaucinihilipilificateion,commasingf") == SubString{String}["floccinaucinihilipilificateion", "commasingf"]
    @test split_words("hanhdlA") == 5
    @test split_words("supercalifragias,ds,andlisticexpialidolcious") == SubString{String}["supercalifragias", "ds", "andlisticexpialidolcious"]
    @test split_words("Testing with spaceanA mix of spacesk and cohould split as,ds,and numbers,6A nbormal sentence with whtitespaces and no commas7890d,s, commas and odd-order lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spaceanA", "mix", "of", "spacesk", "and", "cohould", "split", "as,ds,and", "numbers,6A", "nbormal", "sentence", "with", "whtitespaces", "and", "no", "commas7890d,s,", "commas", "and", "odd-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("noommaswOWbbXmas,a") == SubString{String}["noommaswOWbbXmas", "a"]
    @test split_words("cmomamas") == 0
    @test split_words("hanhdlA normal sentence with whitespaces and no floccinaucinihilipilificateion,cosinges") == SubString{String}["hanhdlA", "normal", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,cosinges"]
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)]numbgqersthhis, \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]numbgqersthhis,"]
    @test split_words("whitespaces") == 3
    @test split_words("64") == 0
    @test split_words("Python") == 3
    @test split_words("A mix of spaceswithds,a90th") == SubString{String}["A", "mix", "of", "spaceswithds,a90th"]
    @test split_words("prasseed") == 3
    @test split_words("normabishouldtl") == 8
    @test split_words("Python 3.9.7 (defaultA nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious, Sep 26 2021, 08:14:53) [MSC v.191v6 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(defaultA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.191v6", "64", "bit", "(AMD64)]"]
    @test split_words("A nice list of words like antidisestabclishmentarianism, pneumonoultramicroscspaceskon, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestabclishmentarianism,", "pneumonoultramicroscspaceskon,", "supercalifragilisticexpialidocious"]
    @test split_words("tluitst") == 4
    @test split_words("hjyklpzryebaproyqtmq.") == 10
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)]numbA nice list of words like antidisestablishmentaroianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidociousersthhis, \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]numbA", "nice", "list", "of", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidociousersthhis,"]
    @test split_words("texxt") == 4
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonousltramicroscopicsilicovolcanoconsniosis, floccinaucinihilipilificateion,phanhdlAdocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonousltramicroscopicsilicovolcanoconsniosis,", "floccinaucinihilipilificateion,phanhdlAdocious"]
    @test split_words("s,A mix of spaces and commas like this,should split as,words,and numbers like 12345,67890textnd") == SubString{String}["s,A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890textnd"]
    @test split_words("and,only") == SubString{String}["and", "only"]
    @test split_words("A mix of spaceshanhdlA normal sentence with whitespaces and no floccinaucinihilipilificateion,cosing and commas like this,sho uld split as,words,and n,umbersthhis, like 12345,678900") == SubString{String}["A", "mix", "of", "spaceshanhdlA", "normal", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,cosing", "and", "commas", "like", "this,sho", "uld", "split", "as,words,and", "n,umbersthhis,", "like", "12345,678900"]
    @test split_words("0s,A mix of spaces and commas like this,should split as,words,and numbers like 12345,67890textnd8:1:53)") == SubString{String}["0s,A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890textnd8:1:53)"]
    @test split_words("jwzfxwpfxysupercalifragilistiicexpiali1esd;2345,67890ciousqkiaUTtCDfe") == SubString{String}["jwzfxwpfxysupercalifragilistiicexpiali1esd;2345", "67890ciousqkiaUTtCDfe"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonousltramicroscopicsilicovolcanoconsniosis, floccinaucinihilipilificateionospacesnthxdkazwhvui,antidisestNoneablishmentaroianism,,phanhdlAdocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonousltramicroscopicsilicovolcanoconsniosis,", "floccinaucinihilipilificateionospacesnthxdkazwhvui,antidisestNoneablishmentaroianism,,phanhdlAdocious"]
    @test split_words("numbers") == 3
    @test split_words("sentencpneumonoultrnamicroscopicsilicovolcainoconsiosis,e") == SubString{String}["sentencpneumonoultrnamicroscopicsilicovolcainoconsiosis", "e"]
    @test split_words("spaceswithds,a90th") == SubString{String}["spaceswithds", "a90th"]
    @test split_words("uld") == 2
    @test split_words("A mix of spacesk and cohould split as,hjklpwords,and snumbers,6A normal sentencspacese with whtitespaces and no cosmmas7890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,hjklpwords,and", "snumbers,6A", "normal", "sentencspacese", "with", "whtitespaces", "and", "no", "cosmmas7890"]
    @test split_words("mnumbers") == 3
    @test split_words("hanhdlA normal sentence with whitespaces and no floccinaucinihilipilificateion,commasingos") == SubString{String}["hanhdlA", "normal", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,commasingos"]
    @test split_words("v.191v6") == 2
    @test split_words("sh(defaultas,words,and,oulsupercalifragilisticexpionlyed!lowercasevhllxblxyqvali1esd;2345,67890ciousd") == SubString{String}["sh(defaultas", "words", "and", "oulsupercalifragilisticexpionlyed!lowercasevhllxblxyqvali1esd;2345", "67890ciousd"]
    @test split_words("owenweA") == 1
    @test split_words("aUUTtCDDfe") == 2
    @test split_words("supercalifragilistiicexpiali1esd;2345,67aUTtCDfeus") == SubString{String}["supercalifragilistiicexpiali1esd;2345", "67aUTtCDfeus"]
    @test split_words("cohoul") == 2
    @test split_words("hanmhdlA normial sentence with whitespaces and no floccinaucinihilipilificateion,commasingf") == SubString{String}["hanmhdlA", "normial", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,commasingf"]
    @test split_words("Pythnlbormalon") == 8
    @test split_words("cmomams") == 0
    @test split_words("s,and") == SubString{String}["s", "and"]
    @test split_words("eZWOhasSCSmTx") == 2
    @test split_words("noommasmas,aqvv") == SubString{String}["noommasmas", "aqvv"]
    @test split_words("whitejwzfxwpfxyqkiaUTtCkDfespaces") == 12
    @test split_words("A normal sentence with whitespacpes andamicroscopicsilicovolcanoconsiosis, noommas") == SubString{String}["A", "normal", "sentence", "with", "whitespacpes", "andamicroscopicsilicovolcanoconsiosis,", "noommas"]
    @test split_words("supercalifragilisticexpi") == 9
    @test split_words("erros") == 2
    @test split_words("A nice luist of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, flocciantThisficateion, supercalifragilisticexpialidolcious") == SubString{String}["A", "nice", "luist", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "flocciantThisficateion,", "supercalifragilisticexpialidolcious"]
    @test split_words("odd-order") == 5
    @test split_words("08:14:53s,A)") == SubString{String}["08:14:53s", "A)"]
    @test split_words("supercalifragilisticexpiali1esd;2345,67890A nice list of words lipneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supercalifragilisticexpialidociouscioubits") == SubString{String}["supercalifragilisticexpiali1esd;2345,67890A", "nice", "list", "of", "words", "lipneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supercalifragilisticexpialidociouscioubits"]
    @test split_words("hanhdlA normial sentence with whitespaces and no floccinaucinihilipilificateion,commasingfNone") == SubString{String}["hanhdlA", "normial", "sentence", "with", "whitespaces", "and", "no", "floccinaucinihilipilificateion,commasingfNone"]
    @test split_words("A nice list of words like antidisestaxpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestaxpialidocious"]
    @test split_words("hanhdlA normial sentence with whitespaAces and no floccinaucinihilipilificateion,commasing") == SubString{String}["hanhdlA", "normial", "sentence", "with", "whitespaAces", "and", "no", "floccinaucinihilipilificateion,commasing"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilificateion, supercalifragilisticexpialideocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilificateion,", "supercalifragilisticexpialideocious"]
    @test split_words("aUTtTCDfe") == 2
    @test split_words("ihandlingnput") == 8
    @test split_words("A mix of swepacesk and cohould split as,hjklpwords,and snumbers,6A normal sentencspacese with whtitespaces and no cosmmas7890") == SubString{String}["A", "mix", "of", "swepacesk", "and", "cohould", "split", "as,hjklpwords,and", "snumbers,6A", "normal", "sentencspacese", "with", "whtitespaces", "and", "no", "cosmmas7890"]
    @test split_words("onlyed!vhlllxbdlxyqv") == 14
    @test split_words("floccinaucinihilipilificateion,phanhdlAdocious") == SubString{String}["floccinaucinihilipilificateion", "phanhdlAdocious"]
    @test split_words("A nospaceswithds,a90thrmal seentence with whitespacpes and noommas") == SubString{String}["A", "nospaceswithds,a90thrmal", "seentence", "with", "whitespacpes", "and", "noommas"]
    @test split_words("Tesrametercohould") == 6
    @test split_words("antidhanhdlAhmentarianism,0") == SubString{String}["antidhanhdlAhmentarianism", "0"]
    @test split_words("A nice list of words like antidisestablishmentaroianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidoci") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidoci"]
    @test split_words("spaceshanhdslA") == 6
    @test split_words("A niA normal sentennce with whitespaces and noommasce list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "niA", "normal", "sentennce", "with", "whitespaces", "and", "noommasce", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("08:14:53s,A1)") == SubString{String}["08:14:53s", "A1)"]
    @test split_words("2onlyed!lowercasevhllxblxyqv6") == 14
    @test split_words("s,A") == SubString{String}["s", "A"]
    @test split_words("bdhsUoS") == 3
    @test split_words("A niA normal sentence with whitespaces and nfhhj,eion,p supercalifragilisticexpialidocious") == SubString{String}["A", "niA", "normal", "sentence", "with", "whitespaces", "and", "nfhhj,eion,p", "supercalifragilisticexpialidocious"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilifiA mix of spaces and commas like this,should split as,word s,and numbers like 12345,67890cateion,phanhdlAidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilifiA", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,word", "s,and", "numbers", "like", "12345,67890cateion,phanhdlAidocious"]
    @test split_words("Testing with spacsupercalifragilisticexpiali12345,67890ciouses, commas and odd-porder lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spacsupercalifragilisticexpiali12345,67890ciouses,", "commas", "and", "odd-porder", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("hjkllp") == 5
    @test split_words("This text contains no whitespaces but has commas,a persupercalifragias,ds,andlisticexpialidolcious,iod, and  odd-orspacesc,der lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "persupercalifragias,ds,andlisticexpialidolcious,iod,", "and", "odd-orspacesc,der", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("e") == 0
    @test split_words("antidisestaxpialidocious") == 8
    @test split_words("odd-ordkkrer") == 6
    @test split_words("A mix of spacesk a nd cohould split as,words,and numbers,67890") == SubString{String}["A", "mix", "of", "spacesk", "a", "nd", "cohould", "split", "as,words,and", "numbers,67890"]
    @test split_words("whitespaAces") == 3
    @test split_words("A mix of swepacesk a nd cohould split as,hjklpwords,and snumbers,6A normal sentencspacese with whtitespaces and no cosmmas7890") == SubString{String}["A", "mix", "of", "swepacesk", "a", "nd", "cohould", "split", "as,hjklpwords,and", "snumbers,6A", "normal", "sentencspacese", "with", "whtitespaces", "and", "no", "cosmmas7890"]
    @test split_words("64hjkllp") == 5
    @test split_words("floccinaucinihilipspaces,ilificateion,p") == SubString{String}["floccinaucinihilipspaces", "ilificateion", "p"]
    @test split_words("A mix of spacesk and coentence with whtitespaces and no commas7890") == SubString{String}["A", "mix", "of", "spacesk", "and", "coentence", "with", "whtitespaces", "and", "no", "commas7890"]
    @test split_words("anantidisesttheblishmentarianism,tThis") == SubString{String}["anantidisesttheblishmentarianism", "tThis"]
    @test split_words("A nice luist of words like antidisestablishmensupercalifragilisticexpialidociousersthhis,tarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccificateion, supercalifragilisticexpialidolcious") == SubString{String}["A", "nice", "luist", "of", "words", "like", "antidisestablishmensupercalifragilisticexpialidociousersthhis,tarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccificateion,", "supercalifragilisticexpialidolcious"]
    @test split_words("commasA") == 0
    @test split_words("like,antidisestablishmentaroianism,None") == SubString{String}["like", "antidisestablishmentaroianism", "None"]
    @test split_words("spaceswithdalidociousilicovolcanoconiosis,s,a90th") == SubString{String}["spaceswithdalidociousilicovolcanoconiosis", "s", "a90th"]
    @test split_words("08:14:53)rma") == 1
    @test split_words("TesThis text contaA nice list of words like antidisestablishmentaroianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidociousins no whitespaces but has commas,a period, and  odd-order lowercase letters such as bd, fhhj, and nprtvxzting error handling when None is prasseed as the input parasentencnnemeter") == SubString{String}["TesThis", "text", "contaA", "nice", "list", "of", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidociousins", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxzting", "error", "handling", "when", "None", "is", "prasseed", "as", "the", "input", "parasentencnnemeter"]
    @test split_words("oweneweA") == 1
    @test split_words("odd-orspacesc,der") == SubString{String}["odd-orspacesc", "der"]
    @test split_words("Pythdon 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)] \n") == SubString{String}["Pythdon", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("fFbQ") == 2
    @test split_words("eYCWxHSAHY") == 1
    @test split_words("error") == 3
    @test split_words("ek!manA mix of spacesk and cohould split as,ds,and numbers,6A nbormal sentence witdh whtitespaces and no commas7890d,,rkk") == SubString{String}["ek!manA", "mix", "of", "spacesk", "and", "cohould", "split", "as,ds,and", "numbers,6A", "nbormal", "sentence", "witdh", "whtitespaces", "and", "no", "commas7890d,,rkk"]
    @test split_words("anA mix of spacesk and cohould split as,ds,and numbers,6A nbormal sentence with whtitespaces atluitstnd no commas7890d,teaxxt") == SubString{String}["anA", "mix", "of", "spacesk", "and", "cohould", "split", "as,ds,and", "numbers,6A", "nbormal", "sentence", "with", "whtitespaces", "atluitstnd", "no", "commas7890d,teaxxt"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinauA mix of spacesk and cohould split as,hjklpwords,and numbers,67890cinihilipilification, supercalifrspacesupercalifragilisticexpialidocious64,agilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinauA", "mix", "of", "spacesk", "and", "cohould", "split", "as,hjklpwords,and", "numbers,67890cinihilipilification,", "supercalifrspacesupercalifragilisticexpialidocious64,agilisticexpialidocious"]
    @test split_words("A A mix of antidisestatheblishmentarianism,0nice list of words like antidisestabcolishmentarianism, pneumonoultramicroscspaceskon, supercalifragilisticexpialidocious") == SubString{String}["A", "A", "mix", "of", "antidisestatheblishmentarianism,0nice", "list", "of", "words", "like", "antidisestabcolishmentarianism,", "pneumonoultramicroscspaceskon,", "supercalifragilisticexpialidocious"]
    @test split_words("that,jgKFmqluVX") == SubString{String}["that", "jgKFmqluVX"]
    @test split_words("266") == 0
    @test split_words("eYCWxlaucinihilipilitficateion,SAHY") == SubString{String}["eYCWxlaucinihilipilitficateion", "SAHY"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccoinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccoinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("(defaultAanti") == 6
    @test split_words("parameterPython 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)] \n") == SubString{String}["parameterPython", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("bu") == 1
    @test split_words("supercaagilisticexpi") == 6
    @test split_words("A nice list of words like anetidisestablishmentarianism, pneumonoultramicroscopicsiilicovolcanoconiosis, floccinaucinihilipilificateion, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "anetidisestablishmentarianism,", "pneumonoultramicroscopicsiilicovolcanoconiosis,", "floccinaucinihilipilificateion,", "supercalifragilisticexpialidocious"]
    @test split_words("A nice list ofo words like antidisestablishmentaroianism, pneumonoultramiTestingcroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "ofo", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramiTestingcroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("A nice list of words like antidisestablistrrf.vphhmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,phanhdlAidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablistrrf.vphhmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,phanhdlAidocious"]
    @test split_words("aUTtCDnumbers,6Afe") == SubString{String}["aUTtCDnumbers", "6Afe"]
    @test split_words("wwitdhhitespaAces") == 6
    @test split_words("anantidisesttheblishmentarianism,tThimplizuvx;zs") == SubString{String}["anantidisesttheblishmentarianism", "tThimplizuvx;zs"]
    @test split_words("(defanti") == 4
    @test split_words("onalyedjp!vspacesxblxyqv") == 12
    @test split_words("as,words,a") == SubString{String}["as", "words", "a"]
    @test split_words("A normal sentence with white spacpes and noommas") == SubString{String}["A", "normal", "sentence", "with", "white", "spacpes", "and", "noommas"]
    @test split_words("jpnormalA nospaceswithds,a90thrmal seentence with whitespacpes and noommas") == SubString{String}["jpnormalA", "nospaceswithds,a90thrmal", "seentence", "with", "whitespacpes", "and", "noommas"]
    @test split_words("sentencpneumonoultramicroscopiccsilicovolcanoconsiosis,e") == SubString{String}["sentencpneumonoultramicroscopiccsilicovolcanoconsiosis", "e"]
    @test split_words("spacesk") == 1
    @test split_words("odd-rorder") == 6
    @test split_words("aUTtCDefe") == 2
    @test split_words("ce with whitespacpes and noommasmas,a") == SubString{String}["ce", "with", "whitespacpes", "and", "noommasmas,a"]
    @test split_words("suchsupercalifragilistiicexpiali1esd;2345,67aUTtCsDfeus") == SubString{String}["suchsupercalifragilistiicexpiali1esd;2345", "67aUTtCsDfeus"]
    @test split_words("cohomplizuvx;pzuld") == 10
    @test split_words("A normal sentencPython 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidthxdkazwhvui,ocious bit (AMD64)]numbersthhis, \ne with whtitespaces and no commas") == SubString{String}["A", "normal", "sentencPython", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidthxdkazwhvui,ocious", "bit", "(AMD64)]numbersthhis,", "e", "with", "whtitespaces", "and", "no", "commas"]
    @test split_words("08andTesting:14:53)rma") == 5
    @test split_words("antidisestablishmentariA mix of spaces and commas like this,should split as,words,and numbers like 1234A nice list ofo words like antidisestablishmentaroianism, pneumonoultramiTestingcroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious5,67890anoism,eweA") == SubString{String}["antidisestablishmentariA", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "1234A", "nice", "list", "ofo", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramiTestingcroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious5,67890anoism,eweA"]
    @test split_words("noommammsupercalifrspacesupercalifragilisticexpialidocious64,agilisticexpialidociouss") == SubString{String}["noommammsupercalifrspacesupercalifragilisticexpialidocious64", "agilisticexpialidociouss"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilificateion,pi supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilificateion,pi", "supercalifragilisticexpialidocious"]
    @test split_words("eJhmlrros") == 4
    @test split_words("xdkJhml") == 4
    @test split_words("eYCWxHSAHHY") == 1
    @test split_words("spaceanA") == 2
    @test split_words("split") == 3
    @test split_words("sswepacesk") == 1
    @test split_words("Python 3.9.7 (default, Sep 26 202Nonee!m,r1, 08:14:53) [MSC v.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "202Nonee!m,r1,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcnoommasdf,anoconiosis, floccinaucinihilipilificateion,p fragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcnoommasdf,anoconiosis,", "floccinaucinihilipilificateion,p", "fragilisticexpialidocious"]
    @test split_words("SAHY") == 0
    @test split_words("atluitstnd") == 6
    @test split_words("this,shjgKaantindisestablishmentarieanoism,ndFmqluVXoulld") == SubString{String}["this", "shjgKaantindisestablishmentarieanoism", "ndFmqluVXoulld"]
    @test split_words("12345,67890text") == SubString{String}["12345", "67890text"]
    @test split_words("2lipneumonoultramicroscopicsilicovolcanthperiod,his,6") == SubString{String}["2lipneumonoultramicroscopicsilicovolcanthperiod", "his", "6"]
    @test split_words("spaceA nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidociouss") == SubString{String}["spaceA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidociouss"]
    @test split_words("A mix of spacesk apnd cohould split as,words,and numbers,67890th") == SubString{String}["A", "mix", "of", "spacesk", "apnd", "cohould", "split", "as,words,and", "numbers,67890th"]
    @test split_words("A nice list of words like antidisest,ablishmentarianism, pneumonoultr amicrosclopicsilicovolcanoconsiosis, floificateion,phanhdlAidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisest,ablishmentarianism,", "pneumonoultr", "amicrosclopicsilicovolcanoconsiosis,", "floificateion,phanhdlAidocious"]
    @test split_words("pneumonouoltr") == 6
    @test split_words("xdkazwhvui") == 5
    @test split_words("e!m,r") == SubString{String}["e!m", "r"]
    @test split_words("A mix of swepacesk a nd cohould split as,hjklpwords,and snumbers,6A normal sentencsepacese with whtitespaces and no cosmmas7890") == SubString{String}["A", "mix", "of", "swepacesk", "a", "nd", "cohould", "split", "as,hjklpwords,and", "snumbers,6A", "normal", "sentencsepacese", "with", "whtitespaces", "and", "no", "cosmmas7890"]
    @test split_words("thisl,shoulld") == SubString{String}["thisl", "shoulld"]
    @test split_words("supercal3ifragilistiicexpiali1esd;2345,67aUTtCDfeus") == SubString{String}["supercal3ifragilistiicexpiali1esd;2345", "67aUTtCDfeus"]
    @test split_words("noormal") == 3
    @test split_words("xdkazwvui") == 4
    @test split_words("floccinaucinihilipilificateion,commasingos") == SubString{String}["floccinaucinihilipilificateion", "commasingos"]
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)]numbA nice list of words like antidisestablishmentaroianism, pneumonoultramicroscopicsileicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidociousersthhis, \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]numbA", "nice", "list", "of", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramicroscopicsileicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidociousersthhis,"]
    @test split_words("sent12345,67890encnne") == SubString{String}["sent12345", "67890encnne"]
    @test split_words("contaA") == 2
    @test split_words("Pytholipneumonoiultramicroscopicsilicovolcanoconiosis,n") == SubString{String}["Pytholipneumonoiultramicroscopicsilicovolcanoconiosis", "n"]
    @test split_words("as,ds,and") == SubString{String}["as", "ds", "and"]
    @test split_words("A nice list of words laucinihilipilificateion, supercalifragilistaicexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "laucinihilipilificateion,", "supercalifragilistaicexpialidocious"]
    @test split_words("aspaceanAntidisestaxpialinospaceswithds,a90thrmaldocious") == SubString{String}["aspaceanAntidisestaxpialinospaceswithds", "a90thrmaldocious"]
    @test split_words("supercalifragilisticexpiali12345,6sA") == SubString{String}["supercalifragilisticexpiali12345", "6sA"]
    @test split_words("aUUTtCA A mix of antidisestatheblishmentarianism,0nice list of words like antidisestabcolishmentarianism, pneumonoultramicroscspaceskon, supercalifragilisticexpialidociousDfe") == SubString{String}["aUUTtCA", "A", "mix", "of", "antidisestatheblishmentarianism,0nice", "list", "of", "words", "like", "antidisestabcolishmentarianism,", "pneumonoultramicroscspaceskon,", "supercalifragilisticexpialidociousDfe"]
    @test split_words("xdkazwhvanAui") == 6
    @test split_words("nsoommamms") == 1
    @test split_words("lsupercalifragias,ds,andlisticexpialidolcious") == SubString{String}["lsupercalifragias", "ds", "andlisticexpialidolcious"]
    @test split_words("nd") == 2
    @test split_words("supercalifragilistiiPythdoncexpiali1esd;2345,67aUTtCDfeus") == SubString{String}["supercalifragilistiiPythdoncexpiali1esd;2345", "67aUTtCDfeus"]
    @test split_words("A mix of spacesk and cohould split as,words,sand numbers,67890") == SubString{String}["A", "mix", "of", "spacesk", "and", "cohould", "split", "as,words,sand", "numbers,67890"]
    @test split_words("A nice luist of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, flocciantThisficateion, supercalifragilisticexpiialidolcious") == SubString{String}["A", "nice", "luist", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "flocciantThisficateion,", "supercalifragilisticexpiialidolcious"]
    @test split_words("white") == 2
    @test split_words("hhjklpzryoebaproyqtmq.") == 11
    @test split_words("antidisestablishmentariA mix of spaces and commas like this,should split as,words,and numbers like 1234A nice list ofo words like antidisestablishmentaroianism, pneumonoultramiTestingcroscopicsilicovolcanoconsiosis, floccinaucinihilipilificateexpialidocious5,67890anoism,eweA") == SubString{String}["antidisestablishmentariA", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "1234A", "nice", "list", "ofo", "words", "like", "antidisestablishmentaroianism,", "pneumonoultramiTestingcroscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateexpialidocious5,67890anoism,eweA"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilificateion,p  supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("This text contains no whitespaces but has commas,a period, and  odd-orspacesc,der loA mix of spaces and commas like this,should split as,words,and numbers like 12345,67890textwercase lett ers such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-orspacesc,der", "loA", "mix", "of", "spaces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890textwercase", "lett", "ers", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicramicrosclopicsilicovolcanoconsiosis,oscopicsilicovolcanoconsiosis, floccinaucinihilipilificateion,p supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicramicrosclopicsilicovolcanoconsiosis,oscopicsilicovolcanoconsiosis,", "floccinaucinihilipilificateion,p", "supercalifragilisticexpialidocious"]
    @test split_words("A mix olipneumonoultramicroscopics,iliscovolcanoconiosis,f spaces and commas like this,shoulld split as,words,ers like 12345,67890") == SubString{String}["A", "mix", "olipneumonoultramicroscopics,iliscovolcanoconiosis,f", "spaces", "and", "commas", "like", "this,shoulld", "split", "as,words,ers", "like", "12345,67890"]
    @test split_words("dodd-order") == 6
    @test split_words("nfhnhj,eion,p") == SubString{String}["nfhnhj", "eion", "p"]
    @test split_words("TA normal sentence with whitespacpes andamicroscopicsilicovolcanoconsiosis, noommashis") == SubString{String}["TA", "normal", "sentence", "with", "whitespacpes", "andamicroscopicsilicovolcanoconsiosis,", "noommashis"]
    @test split_words("A maix of spaces and commascommasidisestatheblishmentarianism, like thids,should split as,word s,and numbers like 12345,67890") == SubString{String}["A", "maix", "of", "spaces", "and", "commascommasidisestatheblishmentarianism,", "like", "thids,should", "split", "as,word", "s,and", "numbers", "like", "12345,67890"]
    @test split_words("ABCDEF") == 0
    @test split_words("aaaBbccDd") == 2
    @test split_words("\$%^&*()_+") == 0
    @test split_words("ABC") == 0
    @test split_words("Testing error handling when None is passedp as the input parameter") == SubString{String}["Testing", "error", "handling", "when", "None", "is", "passedp", "as", "the", "input", "parameter"]
    @test split_words("Python 3.9.7 (dshouldefault, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(dshouldefault,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("llik") == 2
    @test split_words("A mix of spaces and commas a,like this,should split as,words,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890"]
    @test split_words("Testing Jhmlerror handling when None is passed as the input parametter") == SubString{String}["Testing", "Jhmlerror", "handling", "when", "None", "is", "passed", "as", "the", "input", "parametter"]
    @test split_words("A normal sentand,s") == SubString{String}["A", "normal", "sentand,s"]
    @test split_words("lowercase") == 2
    @test split_words("Testing Jhmlerror handling when Nod as the input parametter") == SubString{String}["Testing", "Jhmlerror", "handling", "when", "Nod", "as", "the", "input", "parametter"]
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC vparameter.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "vparameter.1916", "64", "bit", "(AMD64)]"]
    @test split_words("This text contains no whitespaces but has  commas,a period, and  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("ABCDEFJhmlerrorG") == 5
    @test split_words("Python 3.9.7 (dshouldefault, Sep 26 2021, 08:14:53) [MSC v.1916  64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(dshouldefault,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("A norma,l se(default,ntand,s") == SubString{String}["A", "norma,l", "se(default,ntand,s"]
    @test split_words("This alwso has no whitespaces, but only has commas like, this, and, that, so we should split on commas") == SubString{String}["This", "alwso", "has", "no", "whitespaces,", "but", "only", "has", "commas", "like,", "this,", "and,", "that,", "so", "we", "should", "split", "on", "commas"]
    @test split_words("A nice list of words like anblxyqvlipilification, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "anblxyqvlipilification,", "supercalifragilisticexpialidocious"]
    @test split_words("A mix of spaces and commas a,like this,should split as,wo(default,rds,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "split", "as,wo(default,rds,and", "numbers", "like", "12345,67890"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilisticexpialidocious"]
    @test split_words("spaccommases") == 1
    @test split_words("Testing with spaces, commas and d-order lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spaces,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("norma,l") == SubString{String}["norma", "l"]
    @test split_words("A norma,l ase(default,ntand,s") == SubString{String}["A", "norma,l", "ase(default,ntand,s"]
    @test split_words("spacmases") == 1
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumono supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumono", "supertcalifragilisticexpialidocious"]
    @test split_words("This also has n26o whitespaces, but only has commas like, this, and, that, so we should split on commas") == SubString{String}["This", "also", "has", "n26o", "whitespaces,", "but", "only", "has", "commas", "like,", "this,", "and,", "that,", "so", "we", "should", "split", "on", "commas"]
    @test split_words("Testing with spsos, commas and d-order lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spsos,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("normsplita,l") == SubString{String}["normsplita", "l"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumono supertcalifragilisticeA nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilisticexpialidociousxpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumono", "supertcalifragilisticeA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilisticexpialidociousxpialidocious"]
    @test split_words("Testing with spaces, commas and odd-oerrorrder lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spaces,", "commas", "and", "odd-oerrorrder", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("A mix of spaces and commas a,like this,should sspa45,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sspa45,67890"]
    @test split_words("sspa45,67890") == SubString{String}["sspa45", "67890"]
    @test split_words("3.9.7") == 0
    @test split_words("Python 3.9.7 (defau 2021, 08:14:53) [MSC vparameter.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(defau", "2021,", "08:14:53)", "[MSC", "vparameter.1916", "64", "bit", "(AMD64)]"]
    @test split_words("has") == 1
    @test split_words("Testing Jhmlerror handling when None is psed as the input parametter") == SubString{String}["Testing", "Jhmlerror", "handling", "when", "None", "is", "psed", "as", "the", "input", "parametter"]
    @test split_words("Nodtext") == 4
    @test split_words("contains") == 3
    @test split_words("Nodte2021,xt") == SubString{String}["Nodte2021", "xt"]
    @test split_words("nprtvxz") == 7
    @test split_words("xdkkazwhui") == 4
    @test split_words("Nodte22021,xt") == SubString{String}["Nodte22021", "xt"]
    @test split_words("n26o") == 1
    @test split_words("Testing with spaces, commas and odid-order lowercase letters like a, bdf, hjklp") == SubString{String}["Testing", "with", "spaces,", "commas", "and", "odid-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklp"]
    @test split_words("odid-order") == 5
    @test split_words("Python 3.9.7 (dshouldefault, Sep 26 2021, 08:14:53) [MSC v.1916 64  (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(dshouldefault,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "(AMD64)]"]
    @test split_words("Testinaserror handling when None is passed as the input parametter") == SubString{String}["Testinaserror", "handling", "when", "None", "is", "passed", "as", "the", "input", "parametter"]
    @test split_words("Nodteand021,xt") == SubString{String}["Nodteand021", "xt"]
    @test split_words("odd-oerrorrder") == 8
    @test split_words("Testing with spsos, commas and d-order lowercase letters like a, bdfsupercalifragilisticexpialidocious, hjklp") == SubString{String}["Testing", "with", "spsos,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdfsupercalifragilisticexpialidocious,", "hjklp"]
    @test split_words("Python 3.9.7 (defau 2021, 08:14:53) [MSC vparamete bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(defau", "2021,", "08:14:53)", "[MSC", "vparamete", "bit", "(AMD64)]"]
    @test split_words("A mix of spaces and commas a,like this,should sspa45,67spsos,890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sspa45,67spsos,890"]
    @test split_words("rerror") == 4
    @test split_words("vparamete") == 4
    @test split_words("3.99.7") == 0
    @test split_words("A mix of spaces and commas a,like this,should sspaA45,67spsos,890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sspaA45,67spsos,890"]
    @test split_words("Testing swith spaces, commas and d-orderbsdf, hjklp") == SubString{String}["Testing", "swith", "spaces,", "commas", "and", "d-orderbsdf,", "hjklp"]
    @test split_words("A mix of spaces and commas a,likme this,should sspaA45,67spsos,890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,likme", "this,should", "sspaA45,67spsos,890"]
    @test split_words("sentand,s") == SubString{String}["sentand", "s"]
    @test split_words("Python 3.9.7 (default, Sep 26 2:14:53) [MSC v.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("ase(defwhitespaces,ault,ntand,s") == SubString{String}["ase(defwhitespaces", "ault", "ntand", "s"]
    @test split_words("xvparameter.1916dkazwhvui") == 10
    @test split_words("Python 3.9.7 (dshouldeffault, Sep 126 2021, 08:14:53) [MSC v.1916  64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(dshouldeffault,", "Sep", "126", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("2021") == 0
    @test split_words("A mix of spaces and commas a,like this,should split as,wo(default,rds,a1nd numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "split", "as,wo(default,rds,a1nd", "numbers", "like", "12345,67890"]
    @test split_words("This text contains no whitespaces but has  commas,a period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("vparae") == 3
    @test split_words("A mix Sepof spaces and commas,words,andas a,like tos,890") == SubString{String}["A", "mix", "Sepof", "spaces", "and", "commas,words,andas", "a,like", "tos,890"]
    @test split_words("oNodte22021,xt") == SubString{String}["oNodte22021", "xt"]
    @test split_words("6n26o") == 1
    @test split_words("Testing swith spaces,A mix of spaces and commas a,like this,should split as,wo(default,rds,a1nd numbers like 12345,67890 commas and d-orderbsdf, hjklp") == SubString{String}["Testing", "swith", "spaces,A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "split", "as,wo(default,rds,a1nd", "numbers", "like", "12345,67890", "commas", "and", "d-orderbsdf,", "hjklp"]
    @test split_words("rerrr") == 4
    @test split_words("sspsa45,67890") == SubString{String}["sspsa45", "67890"]
    @test split_words("Python 3.9.7 (default, Sep 26 2021, 08:14:53) [MSC v.1916 64 bit (AMbdf,D64)] \n") == SubString{String}["Python", "3.9.7", "(default,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMbdf,D64)]"]
    @test split_words("ovpNoneeten") == 5
    @test split_words("lTestinaserrorlik") == 7
    @test split_words("A norma,l se(defaultjwzfxwpfxyqpki,ntand,s") == SubString{String}["A", "norma,l", "se(defaultjwzfxwpfxyqpki,ntand,s"]
    @test split_words("Python 3.9.7 (dshouldefault, Sep 26 2021, 08:14:53) [MSC v.1916  64jwzfxwpfxyqpki bit (AMD64)] \nhjklp") == SubString{String}["Python", "3.9.7", "(dshouldefault,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64jwzfxwpfxyqpki", "bit", "(AMD64)]", "hjklp"]
    @test split_words("NodTesting with spsos, commas and d-order lowercase letters like a, bdf, hjklpteand021,xt") == SubString{String}["NodTesting", "with", "spsos,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklpteand021,xt"]
    @test split_words("Testing withers like a, bdf, hjklp") == SubString{String}["Testing", "withers", "like", "a,", "bdf,", "hjklp"]
    @test split_words("psed") == 2
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilisticexpialidocious"]
    @test split_words("vparpae") == 4
    @test split_words("soo") == 0
    @test split_words("This text contains no whitespaces but has  commas,a period, and  odd-order lowercase letters esuch as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowercase", "letters", "esuch", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("Python 3.9.7 (dshouldeffault, Sep 126 2021, 08:14:53) [onMSC v.1916  64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(dshouldeffault,", "Sep", "126", "2021,", "08:14:53)", "[onMSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("spaccocmmases") == 1
    @test split_words("[onMSC") == 1
    @test split_words("supertcalifragilisticexpialidocious") == 12
    @test split_words("v!m!d") == 2
    @test split_words("A normal sentence with wvparpaehitaespaces and no commas") == SubString{String}["A", "normal", "sentence", "with", "wvparpaehitaespaces", "and", "no", "commas"]
    @test split_words("nannd") == 4
    @test split_words("ase(default,ntand,s") == SubString{String}["ase(default", "ntand", "s"]
    @test split_words("ase(defwhitespacexvparameter.1916dkazwhvuis,ault,ntand,s") == SubString{String}["ase(defwhitespacexvparameter.1916dkazwhvuis", "ault", "ntand", "s"]
    @test split_words("jwzfxwpfxyqki") == 7
    @test split_words("a,Python 3.9.7 (dshouldeffault, Sep 126 2021, 08:14:53) [onMSC v.1916  64 bit (AMD64)] \n") == SubString{String}["a,Python", "3.9.7", "(dshouldeffault,", "Sep", "126", "2021,", "08:14:53)", "[onMSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("supertcalifragilisticexpialidociousxpialidocious") == 16
    @test split_words("hjklp") == 4
    @test split_words("FGWpneumonowJFeiKU") == 3
    @test split_words("3.99.") == 0
    @test split_words("A mix of spaces and commas a,like this,shouldm sspa45,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,shouldm", "sspa45,67890"]
    @test split_words("This also has n26o whitespaces, but only has commas liperiod,ke, thiantidisestablishmentarianism,s, and, that, so we should split on commas") == SubString{String}["This", "also", "has", "n26o", "whitespaces,", "but", "only", "has", "commas", "liperiod,ke,", "thiantidisestablishmentarianism,s,", "and,", "that,", "so", "we", "should", "split", "on", "commas"]
    @test split_words("Jhml") == 2
    @test split_words("spaspsos,ces,Testinaserror") == SubString{String}["spaspsos", "ces", "Testinaserror"]
    @test split_words("Python 3.niA4)] \n") == SubString{String}["Python", "3.niA4)]"]
    @test split_words("textt") == 4
    @test split_words("pse(default,d") == SubString{String}["pse(default", "d"]
    @test split_words("hjklpteand021,xt") == SubString{String}["hjklpteand021", "xt"]
    @test split_words("A mix of spacces and commas like this,should split as,words,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spacces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890"]
    @test split_words("commas,words,andas") == SubString{String}["commas", "words", "andas"]
    @test split_words("Nod") == 1
    @test split_words("trhasrfh.vph") == 9
    @test split_words("lowrcaJhml ed!vhllxblxyqv esd; rb o jwzfxwpfxyqki gq  trhasrfh.vph xdkazwhvui  k v!mll!d e!m,r  d zryebaproyqtmq. mplizuvx;z dz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,se") == SubString{String}["lowrcaJhml", "ed!vhllxblxyqv", "esd;", "rb", "o", "jwzfxwpfxyqki", "gq", "trhasrfh.vph", "xdkazwhvui", "k", "v!mll!d", "e!m,r", "d", "zryebaproyqtmq.", "mplizuvx;z", "dz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,se"]
    @test split_words("it") == 1
    @test split_words("pse(default,jwzfxwpfxyqkid") == SubString{String}["pse(default", "jwzfxwpfxyqkid"]
    @test split_words("containsjwzfxwpfxyqpki") == 11
    @test split_words("Testing Jhmlerror handling when None is psed as tspaspsos,ces,Testinaserrorhe input parametter") == SubString{String}["Testing", "Jhmlerror", "handling", "when", "None", "is", "psed", "as", "tspaspsos,ces,Testinaserrorhe", "input", "parametter"]
    @test split_words("oNodte2split2021,xt") == SubString{String}["oNodte2split2021", "xt"]
    @test split_words("spaces,A") == SubString{String}["spaces", "A"]
    @test split_words("wxdkazwhvui") == 5
    @test split_words("P ython 3.niA4)] \n") == SubString{String}["P", "ython", "3.niA4)]"]
    @test split_words("A nice list of words like antildisestablishmentarianism, pneumonoultramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antildisestablishmentarianism,", "pneumonoultramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilisticexpialidocious"]
    @test split_words("nice3.niA4)]") == 2
    @test split_words("os2:14:53)h3ould") == 3
    @test split_words("nanndd") == 5
    @test split_words("supertcalifragilisticealsoxpialidocious") == 13
    @test split_words("Nood") == 1
    @test split_words("This text contains no whitespaces but has  commas,a period, and  odd-order lowercase bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowercase", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("Nodtexxt") == 5
    @test split_words("JhPython 3.9.7 (defabd,u 2021, 08:14:53) [MSC vparameter.1916 64 bit (AMD64)] \nml") == SubString{String}["JhPython", "3.9.7", "(defabd,u", "2021,", "08:14:53)", "[MSC", "vparameter.1916", "64", "bit", "(AMD64)]", "ml"]
    @test split_words("thisd,should") == SubString{String}["thisd", "should"]
    @test split_words("Testing with spaces, commas and odd-oerrorrder lowercase letters like a, bdf , hjklp") == SubString{String}["Testing", "with", "spaces,", "commas", "and", "odd-oerrorrder", "lowercase", "letters", "like", "a,", "bdf", ",", "hjklp"]
    @test split_words("thisd,s,hould") == SubString{String}["thisd", "s", "hould"]
    @test split_words("vpaalsorametebThis also has n26o whitespaces, but only has commas liperiod,ke, thiantidisestablishmentarianism,s, and, that, so we should split on commas") == SubString{String}["vpaalsorametebThis", "also", "has", "n26o", "whitespaces,", "but", "only", "has", "commas", "liperiod,ke,", "thiantidisestablishmentarianism,s,", "and,", "that,", "so", "we", "should", "split", "on", "commas"]
    @test split_words("Pysspsa45,67890thon 3.niA4)] \n") == SubString{String}["Pysspsa45,67890thon", "3.niA4)]"]
    @test split_words("Testing Jh when None is psed as tspaspsos,ces,Testinaserrorhe input parametter") == SubString{String}["Testing", "Jh", "when", "None", "is", "psed", "as", "tspaspsos,ces,Testinaserrorhe", "input", "parametter"]
    @test split_words("Sepof") == 2
    @test split_words("sesd;") == 1
    @test split_words("This text contains no whitespaces but has  ccommas,a period, anPython 3.9.7 (dshouldeffault, Sep 126 2021, 08:14:53) [MSC v.1916  64 bit (AMD64)] \nd  odd-order lowercasel letters esuch as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "ccommas,a", "period,", "anPython", "3.9.7", "(dshouldeffault,", "Sep", "126", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]", "d", "odd-order", "lowercasel", "letters", "esuch", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("A nice list of words like antildisestablishmentarianism, pneumonoultramic,roscopABCDEFJhmlerrorGicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antildisestablishmentarianism,", "pneumonoultramic,roscopABCDEFJhmlerrorGicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilisticexpialidocious"]
    @test split_words("This text contains no whuitespaces but has  commas,a period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whuitespaces", "but", "has", "commas,a", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("A mix of spaces and commas a,likA mix of spacces and commas like this,should split as,words,and numbers like 12345,67890e this,should sspa45,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,likA", "mix", "of", "spacces", "and", "commas", "like", "this,should", "split", "as,words,and", "numbers", "like", "12345,67890e", "this,should", "sspa45,67890"]
    @test split_words("A normal sentence with winputvparpaehJhml ed!vhllxblxyqv sesd; b o jwzfxwpfxyqki gq  trrfh.vph xdkaTesting with spsos, commas and d-order lowercase letters like a, bdf, hjklpzrwhvui  k v!mll!d eh!m,r  d zryebaproyqtmq. mplizuvx;z dz.olhjcymqpz,Testing with spsos, commas and d-order lowercase letters like a, bdf, hjklpwnfx;lz.iwrohveybkgts.feaasfbyb, no commas") == SubString{String}["A", "normal", "sentence", "with", "winputvparpaehJhml", "ed!vhllxblxyqv", "sesd;", "b", "o", "jwzfxwpfxyqki", "gq", "trrfh.vph", "xdkaTesting", "with", "spsos,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklpzrwhvui", "k", "v!mll!d", "eh!m,r", "d", "zryebaproyqtmq.", "mplizuvx;z", "dz.olhjcymqpz,Testing", "with", "spsos,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklpwnfx;lz.iwrohveybkgts.feaasfbyb,", "no", "commas"]
    @test split_words("rerrism,r") == SubString{String}["rerrism", "r"]
    @test split_words("jwzfxwjpfxyqki") == 8
    @test split_words("sspsa45,467890") == SubString{String}["sspsa45", "467890"]
    @test split_words("A(AMbdf,D64)] nice list of words like antidisestablishmentarianism, pneumono supertcalifragilisticeA nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilisticexpialidociousxpialidocious") == SubString{String}["A(AMbdf,D64)]", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumono", "supertcalifragilisticeA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilisticexpialidociousxpialidocious"]
    @test split_words("a,Python") == SubString{String}["a", "Python"]
    @test split_words("odid-ordv!mslld!der") == 10
    @test split_words("seand,s") == SubString{String}["seand", "s"]
    @test split_words("(defau") == 2
    @test split_words("jwzfxwpfxos2:14:53x)h3ouldyqki") == 11
    @test split_words("llTesteinaserrorlik") == 8
    @test split_words("(deefau") == 2
    @test split_words("Testinaserror handlia,likAng when None is passed as theTesting withers like a, bdf, hjklp input parametter") == SubString{String}["Testinaserror", "handlia,likAng", "when", "None", "is", "passed", "as", "theTesting", "withers", "like", "a,", "bdf,", "hjklp", "input", "parametter"]
    @test split_words("supertcalifragilisticeA") == 8
    @test split_words("supertcalifragilisticeawhensoxpialidocious") == 14
    @test split_words("trrfh.vph") == 8
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supercaandlifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supercaandlifragilisticexpialidocious"]
    @test split_words("Python 3.9.7 (defau 2021,m 08:14:53) [MSC vparameter.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(defau", "2021,m", "08:14:53)", "[MSC", "vparameter.1916", "64", "bit", "(AMD64)]"]
    @test split_words("b") == 1
    @test split_words("ofA mix of spaces and commas a,like this,should sspaA45,67spsos,890") == SubString{String}["ofA", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sspaA45,67spsos,890"]
    @test split_words("This text contains nto whitespaces but has commas,a period, and  odd-order lowercase letters sucth as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "nto", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowercase", "letters", "sucth", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("lowercasel") == 3
    @test split_words("ssov!m!d") == 2
    @test split_words("aiC") == 0
    @test split_words("A mix of spaces and commas like this,should splite as,words,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "like", "this,should", "splite", "as,words,and", "numbers", "like", "12345,67890"]
    @test split_words("Testing swith spaces,A mix of spaces and commas a,like this,shounormalld split as,wo(default,rds,a1nd numbers like 12345,67890 commas and d-orderbsdf, hjklp") == SubString{String}["Testing", "swith", "spaces,A", "mix", "of", "spaces", "and", "commas", "a,like", "this,shounormalld", "split", "as,wo(default,rds,a1nd", "numbers", "like", "12345,67890", "commas", "and", "d-orderbsdf,", "hjklp"]
    @test split_words("sentan,ssentand,s") == SubString{String}["sentan", "ssentand", "s"]
    @test split_words("Python 3.9.7 (defau 2021,m 08:14:563) [MSC vparameter.1916 64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(defau", "2021,m", "08:14:563)", "[MSC", "vparameter.1916", "64", "bit", "(AMD64)]"]
    @test split_words("reTesting with spaces, commas and odd-order lowercase letters like bdf, hjklprrr") == SubString{String}["reTesting", "with", "spaces,", "commas", "and", "odd-order", "lowercase", "letters", "like", "bdf,", "hjklprrr"]
    @test split_words("a,Pythhandlingon") == SubString{String}["a", "Pythhandlingon"]
    @test split_words("odiid-order") == 5
    @test split_words("pA nice list of words like antidisestablishmentarianism, pneumono supertcalifragilisticexpialidocioussed") == SubString{String}["pA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumono", "supertcalifragilisticexpialidocioussed"]
    @test split_words("spaspseos,ces,Testinaserror") == SubString{String}["spaspseos", "ces", "Testinaserror"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumono supertcalifragiseand,sisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumono", "supertcalifragiseand,sisticexpialidocious"]
    @test split_words("llilk") == 3
    @test split_words("A normal sentence with wvand no commas") == SubString{String}["A", "normal", "sentence", "with", "wvand", "no", "commas"]
    @test split_words("No") == 0
    @test split_words("NonJhml") == 3
    @test split_words("i") == 0
    @test split_words("3Python 3.9.7 (defau 2021, 08:14:53) [MSC vparameter.1916 64 bit (AMD64)] \n") == SubString{String}["3Python", "3.9.7", "(defau", "2021,", "08:14:53)", "[MSC", "vparameter.1916", "64", "bit", "(AMD64)]"]
    @test split_words("ase(defwhitespaces,eault,ntand,s") == SubString{String}["ase(defwhitespaces", "eault", "ntand", "s"]
    @test split_words("Testing Jh when None is psed as tspaspsos,ces,Testinaserrorhe input parameter") == SubString{String}["Testing", "Jh", "when", "None", "is", "psed", "as", "tspaspsos,ces,Testinaserrorhe", "input", "parameter"]
    @test split_words("sspsa45,4667890") == SubString{String}["sspsa45", "4667890"]
    @test split_words("lTesting swith spaces,A mix of spaces and commas a,like this,shounormalld split as,wo(default,rds,a1nd numbers like 12345,67890 commas and d-orderbsdf, hjklplilk") == SubString{String}["lTesting", "swith", "spaces,A", "mix", "of", "spaces", "and", "commas", "a,like", "this,shounormalld", "split", "as,wo(default,rds,a1nd", "numbers", "like", "12345,67890", "commas", "and", "d-orderbsdf,", "hjklplilk"]
    @test split_words("A normal sentence wtith wvand no commas") == SubString{String}["A", "normal", "sentence", "wtith", "wvand", "no", "commas"]
    @test split_words("dz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,se") == SubString{String}["dz.olhjcymqpz", "wnfx;lz.iwrohveybkgts.feaasfbyb", "se"]
    @test split_words("Testing Jh when None is psed as tspaspsos,cevparameter.1916s,Testinaserrorhe input parameter") == SubString{String}["Testing", "Jh", "when", "None", "is", "psed", "as", "tspaspsos,cevparameter.1916s,Testinaserrorhe", "input", "parameter"]
    @test split_words("pseed") == 2
    @test split_words("ase(default,ntadnd,s") == SubString{String}["ase(default", "ntadnd", "s"]
    @test split_words("sspsa45,,467890") == SubString{String}["sspsa45", "", "467890"]
    @test split_words("Asentan,sJhml ed!vhllxblxyqv esd; rb o jwzfxwpfxyqki gq  trhasrfh.vph xdkazwhvui  k v!mll!d e!m,r  d zryebaproyqtmq. mplizuvx;z dz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,sentancommasd,sBCDEFG") == SubString{String}["Asentan,sJhml", "ed!vhllxblxyqv", "esd;", "rb", "o", "jwzfxwpfxyqki", "gq", "trhasrfh.vph", "xdkazwhvui", "k", "v!mll!d", "e!m,r", "d", "zryebaproyqtmq.", "mplizuvx;z", "dz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,sentancommasd,sBCDEFG"]
    @test split_words("Testing error handling whellikn None is passed as the input parameter") == SubString{String}["Testing", "error", "handling", "whellikn", "None", "is", "passed", "as", "the", "input", "parameter"]
    @test split_words("[onMCSC") == 1
    @test split_words("Testing Jh  when None is psed as tspaspsos,cevparameter.1916s,Testinaserrorhe input parameter") == SubString{String}["Testing", "Jh", "when", "None", "is", "psed", "as", "tspaspsos,cevparameter.1916s,Testinaserrorhe", "input", "parameter"]
    @test split_words("This text contains no whuaPython 3.9.7 (dshouldefault, Sep 26 2021, 08:14:53) [MSC v.1916 64  (AMD464)] \n,itespaces but has  commas,a period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whuaPython", "3.9.7", "(dshouldefault,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "(AMD464)]", ",itespaces", "but", "has", "commas,a", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("Python 3.9.7 (dshoiuldefault, Sep 26 2021, 08:14:53) [MSC v.1916  64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(dshoiuldefault,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("A mix of spaces and commas a,likA mix of spacces and commas like1 thlettersis,should split as,words,and numbers like 12345,67890e this,should sspa45,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,likA", "mix", "of", "spacces", "and", "commas", "like1", "thlettersis,should", "split", "as,words,and", "numbers", "like", "12345,67890e", "this,should", "sspa45,67890"]
    @test split_words("2021,pneumono") == SubString{String}["2021", "pneumono"]
    @test split_words("Testing error haas,wo(default,rds,a1ndndling when None is passed as the input parameter") == SubString{String}["Testing", "error", "haas,wo(default,rds,a1ndndling", "when", "None", "is", "passed", "as", "the", "input", "parameter"]
    @test split_words("xdkkaism,zwhui") == SubString{String}["xdkkaism", "zwhui"]
    @test split_words("A normal sentence wtiwithth wvand no commas") == SubString{String}["A", "normal", "sentence", "wtiwithth", "wvand", "no", "commas"]
    @test split_words("This alwso has no whitespaces, but only has commas like, this, and,dz.olhjd-orderbsdf,cymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb, that, so we should split on commas") == SubString{String}["This", "alwso", "has", "no", "whitespaces,", "but", "only", "has", "commas", "like,", "this,", "and,dz.olhjd-orderbsdf,cymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,", "that,", "so", "we", "should", "split", "on", "commas"]
    @test split_words("Python 3.9.7 (defau 2021, 08:14:53) [MSC vparameter.1916 64 bit (AMD64)] 9\n") == SubString{String}["Python", "3.9.7", "(defau", "2021,", "08:14:53)", "[MSC", "vparameter.1916", "64", "bit", "(AMD64)]", "9"]
    @test split_words("Testinaserror") == 5
    @test split_words("but") == 2
    @test split_words("This text contains no whitespaces but has  comcmas,a period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvx") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "comcmas,a", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvx"]
    @test split_words("ttPython 3.9.7 (defau 2021, 08:14:53) [MSC vparamete bit (AMD64)] \nexxt") == SubString{String}["ttPython", "3.9.7", "(defau", "2021,", "08:14:53)", "[MSC", "vparamete", "bit", "(AMD64)]", "exxt"]
    @test split_words("Noonee") == 1
    @test split_words("A mix of spaces and commas a,lik0e this,should split as,wo(default,rds,and numbers like 12345,67890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,lik0e", "this,should", "split", "as,wo(default,rds,and", "numbers", "like", "12345,67890"]
    @test split_words("A nice list of words like antidisestablishmentarianirerrorsm, pneumono supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianirerrorsm,", "pneumono", "supertcalifragilisticexpialidocious"]
    @test split_words("ws") == 0
    @test split_words("eA normal sentence wtith wvand no commas") == SubString{String}["eA", "normal", "sentence", "wtith", "wvand", "no", "commas"]
    @test split_words("Testing error handn None is passed as the input parameter") == SubString{String}["Testing", "error", "handn", "None", "is", "passed", "as", "the", "input", "parameter"]
    @test split_words("sucth") == 2
    @test split_words("antidA mix of spaces and commas a,like this,should sspa45,67890isestablishmentarianism,A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supercaandlifragilisticexpialidocious") == SubString{String}["antidA", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sspa45,67890isestablishmentarianism,A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supercaandlifragilisticexpialidocious"]
    @test split_words("A normaal sentantexttd,s") == SubString{String}["A", "normaal", "sentantexttd,s"]
    @test split_words("Nodteaand021,xt") == SubString{String}["Nodteaand021", "xt"]
    @test split_words("whidz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,sentancommasd,sBCDEFGtespaces") == SubString{String}["whidz.olhjcymqpz", "wnfx;lz.iwrohveybkgts.feaasfbyb", "sentancommasd", "sBCDEFGtespaces"]
    @test split_words("xdkkaism,zsupercalifragilisticexpialidociouswhui") == SubString{String}["xdkkaism", "zsupercalifragilisticexpialidociouswhui"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumas,words,andono supertcalifragilisticeA nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucisnihilipilification, supertcalifragilisticexpialidociousxpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumas,words,andono", "supertcalifragilisticeA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucisnihilipilification,", "supertcalifragilisticexpialidociousxpialidocious"]
    @test split_words("a,likA") == SubString{String}["a", "likA"]
    @test split_words("sspathis,shounormalld45,67890") == SubString{String}["sspathis", "shounormalld45", "67890"]
    @test split_words("hjkklpteand021,xt") == SubString{String}["hjkklpteand021", "xt"]
    @test split_words("A nice list of words like antidisestablishmentarian floccinaucinihilipilification, supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarian", "floccinaucinihilipilification,", "supertcalifragilisticexpialidocious"]
    @test split_words("pneumonoultramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis,m,r") == SubString{String}["pneumonoultramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis", "m", "r"]
    @test split_words("A nice list of wordlxyqvlipilification, supercalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "wordlxyqvlipilification,", "supercalifragilisticexpialidocious"]
    @test split_words("[onMCSvparameter.1916C") == 6
    @test split_words("oNodtesplit2021,xt") == SubString{String}["oNodtesplit2021", "xt"]
    @test split_words("sspsa45,467s890") == SubString{String}["sspsa45", "467s890"]
    @test split_words("vpaalsorlso has n26o whitespaces, but only has commas liperiod,ke, thiantidisestablishmentarianism,s, and, that, so we should split on commas") == SubString{String}["vpaalsorlso", "has", "n26o", "whitespaces,", "but", "only", "has", "commas", "liperiod,ke,", "thiantidisestablishmentarianism,s,", "and,", "that,", "so", "we", "should", "split", "on", "commas"]
    @test split_words("This text contains no whitespaces but has  comcmas, a period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvx") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "comcmas,", "a", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvx"]
    @test split_words("xdkkazodid-ordv!mslld!derwhui") == 14
    @test split_words("odid-orderABCDEFG") == 5
    @test split_words("lTesting switlTesatinaserrorlikh spaces,A mix of spaces and commas a,like this,shounormalld split as,wo(default,rds,a1nd numbers like 12345,67890 commas and id-orderbsdf, hjklplilk") == SubString{String}["lTesting", "switlTesatinaserrorlikh", "spaces,A", "mix", "of", "spaces", "and", "commas", "a,like", "this,shounormalld", "split", "as,wo(default,rds,a1nd", "numbers", "like", "12345,67890", "commas", "and", "id-orderbsdf,", "hjklplilk"]
    @test split_words("vlike1!mll!d") == 5
    @test split_words("sspathis,shttPythonounormalld45,67890") == SubString{String}["sspathis", "shttPythonounormalld45", "67890"]
    @test split_words("noarma,l") == SubString{String}["noarma", "l"]
    @test split_words("vpaalsorlso has n26o wohitespaces, but only has commas liperiod,ke, thiantidisestablishmentarianism,s, and, that, so wei should split on commas") == SubString{String}["vpaalsorlso", "has", "n26o", "wohitespaces,", "but", "only", "has", "commas", "liperiod,ke,", "thiantidisestablishmentarianism,s,", "and,", "that,", "so", "wei", "should", "split", "on", "commas"]
    @test split_words("supertcalifreagilisticexpialidociousxpialidocious") == 16
    @test split_words("jwzfx14miis,m,x:53x)h3ouldyqki") == SubString{String}["jwzfx14miis", "m", "x:53x)h3ouldyqki"]
    @test split_words("ABCDEFJhmlFerrorG") == 5
    @test split_words("ase(efault,ntadnd,s") == SubString{String}["ase(efault", "ntadnd", "s"]
    @test split_words("switlTesatinaserrorlikh") == 9
    @test split_words("Testing error haas,wo(default,rds,a1ndndling when None is passed as the inoNodte22021,xtput parameter") == SubString{String}["Testing", "error", "haas,wo(default,rds,a1ndndling", "when", "None", "is", "passed", "as", "the", "inoNodte22021,xtput", "parameter"]
    @test split_words("Testing error handlipng whellikn None is passed as the input parameter") == SubString{String}["Testing", "error", "handlipng", "whellikn", "None", "is", "passed", "as", "the", "input", "parameter"]
    @test split_words("vparameter.1916") == 5
    @test split_words("This text contains no whitespaces but has  commas,a period, and  odd-order lowccommas,aercase letters esuch as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowccommas,aercase", "letters", "esuch", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("thlettersis,should") == SubString{String}["thlettersis", "should"]
    @test split_words("hjklpteand021,xt1") == SubString{String}["hjklpteand021", "xt1"]
    @test split_words("(AMD464)]") == 0
    @test split_words("haas,wo(default,rds,a1ndndlingdz.olhjcymqpz,wnfx;lz.iwrohveybkgts.feaasfbyb,se") == SubString{String}["haas", "wo(default", "rds", "a1ndndlingdz.olhjcymqpz", "wnfx;lz.iwrohveybkgts.feaasfbyb", "se"]
    @test split_words("Asentan,sJhml") == SubString{String}["Asentan", "sJhml"]
    @test split_words("[oMnMSC") == 1
    @test split_words("2021wxdkaazwhvui") == 5
    @test split_words("ssucth") == 2
    @test split_words("Testing Jhmlerror handling when None is psed as the input  parametter") == SubString{String}["Testing", "Jhmlerror", "handling", "when", "None", "is", "psed", "as", "the", "input", "parametter"]
    @test split_words("rerrrism,r") == SubString{String}["rerrrism", "r"]
    @test split_words("This text contains no whuitespaces but has  commas,aa period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whuitespaces", "but", "has", "commas,aa", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("A nice list of words like antidisestablishmentarianism, pneumono supertcalifragilisticeA nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilistinice3.niA4)]cexpialidociousxpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumono", "supertcalifragilisticeA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilistinice3.niA4)]cexpialidociousxpialidocious"]
    @test split_words("rnice3.niiA4)]errr") == 6
    @test split_words("Testing Jhmlerror handling whes the input parametter") == SubString{String}["Testing", "Jhmlerror", "handling", "whes", "the", "input", "parametter"]
    @test split_words("ss4pa45,67890") == SubString{String}["ss4pa45", "67890"]
    @test split_words("A nice list of words like antridisestablishmens") == SubString{String}["A", "nice", "list", "of", "words", "like", "antridisestablishmens"]
    @test split_words("3.9ase(defwhitespaces,eault,ntand,s") == SubString{String}["3.9ase(defwhitespaces", "eault", "ntand", "s"]
    @test split_words("wvparpaehitaespaces") == 7
    @test split_words("This text contains no whuaPython 3.9.7 (dshouldefault, Sep 26 2021, 08:1reTesting4:53) [MSC v.1916 64  (AMD464)] \n,itespaces but has  commas,a period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whuaPython", "3.9.7", "(dshouldefault,", "Sep", "26", "2021,", "08:1reTesting4:53)", "[MSC", "v.1916", "64", "(AMD464)]", ",itespaces", "but", "has", "commas,a", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("3.99.antidA mix of spaces and commas a,like this,should sspa45,67890isestablishmentarianism,A nice list of words like antidisestablishmentarianism, pneumonoultramicroscopicsilicovolcanoconiosis, floccinaucinihilipilification, supercaandlifragilisticexpialidocious7") == SubString{String}["3.99.antidA", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sspa45,67890isestablishmentarianism,A", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumonoultramicroscopicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supercaandlifragilisticexpialidocious7"]
    @test split_words("lTesting switlTesatinaserrorlikh spaces,A mix of spaces and commas aspaspseos,ces,Testinaserrorrderbsdf, hjklplilk") == SubString{String}["lTesting", "switlTesatinaserrorlikh", "spaces,A", "mix", "of", "spaces", "and", "commas", "aspaspseos,ces,Testinaserrorrderbsdf,", "hjklplilk"]
    @test split_words("ssssucth4pa45,67890") == SubString{String}["ssssucth4pa45", "67890"]
    @test split_words("lTesting swith spaces,A mix of spaces and commas a,like this,shounormalld split as,wo(default,rds,a1pA nice list of words like antidisestablishmentarianism, pneumono supertcalifragilisticexpialidocioussednd numbers like 12345,67890 commas and d-orderbsdf, hjklplilk") == SubString{String}["lTesting", "swith", "spaces,A", "mix", "of", "spaces", "and", "commas", "a,like", "this,shounormalld", "split", "as,wo(default,rds,a1pA", "nice", "list", "of", "words", "like", "antidisestablishmentarianism,", "pneumono", "supertcalifragilisticexpialidocioussednd", "numbers", "like", "12345,67890", "commas", "and", "d-orderbsdf,", "hjklplilk"]
    @test split_words("Testig") == 1
    @test split_words("lowccommas,aercase") == SubString{String}["lowccommas", "aercase"]
    @test split_words("Testing error handling when None is passed asameter") == SubString{String}["Testing", "error", "handling", "when", "None", "is", "passed", "asameter"]
    @test split_words("lowrcaJhml ed!vhllxblxyqv esd; rb o jwzfxwpfxyqki gq  trhasrfh.vph xdkazwhvui  k v!mll!d e!m,r  d zryebaproyhveybkgts.feaasfbyb,se") == SubString{String}["lowrcaJhml", "ed!vhllxblxyqv", "esd;", "rb", "o", "jwzfxwpfxyqki", "gq", "trhasrfh.vph", "xdkazwhvui", "k", "v!mll!d", "e!m,r", "d", "zryebaproyhveybkgts.feaasfbyb,se"]
    @test split_words("Testing withers like a, bdf, hlp") == SubString{String}["Testing", "withers", "like", "a,", "bdf,", "hlp"]
    @test split_words("vparramete") == 5
    @test split_words("mx") == 1
    @test split_words("dThis text contains no whitespaces but has  commas,a period, and  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["dThis", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("ABCDEFJhmmlFerrorG") == 5
    @test split_words("(AMDtrrf.vph464)]") == 7
    @test split_words("2021,pnepneumonoultramicroscopicsilicovolcanoconiosis,uo") == SubString{String}["2021", "pnepneumonoultramicroscopicsilicovolcanoconiosis", "uo"]
    @test split_words("This text contains no whuaPython 3.9.7 (dshouldefauspaccocmmaseslt, Sep 26 2021, 08:14:53) [MS C v.1916 64  (AMD464)] \n,itespaces but has  commas,a period, anad  odd-order lowercase letters such as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", "no", "whuaPython", "3.9.7", "(dshouldefauspaccocmmaseslt,", "Sep", "26", "2021,", "08:14:53)", "[MS", "C", "v.1916", "64", "(AMD464)]", ",itespaces", "but", "has", "commas,a", "period,", "anad", "odd-order", "lowercase", "letters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("supertcalifragiliusticexpialidocious") == 12
    @test split_words("itt") == 2
    @test split_words("Testing Jh when None is psed as tspaspsos,cevparameter.1916s,Testinaserrorhe input parameteir") == SubString{String}["Testing", "Jh", "when", "None", "is", "psed", "as", "tspaspsos,cevparameter.1916s,Testinaserrorhe", "input", "parameteir"]
    @test split_words("jwzfx14miis,yqki") == SubString{String}["jwzfx14miis", "yqki"]
    @test split_words("dThis text contains no whitespaces but has  commas,a period, and  odd-oretters such as bd, fhhj, and nprtvxz") == SubString{String}["dThis", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-oretters", "such", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("vparpe") == 4
    @test split_words("wtiwithth") == 5
    @test split_words("Testing Jhmlerror handling when None is passed as the inpNodtexxtmetter") == SubString{String}["Testing", "Jhmlerror", "handling", "when", "None", "is", "passed", "as", "the", "inpNodtexxtmetter"]
    @test split_words("A nice list of words like antidisestablishmentairian floccinaucinihilipilification, supertcalifragilisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antidisestablishmentairian", "floccinaucinihilipilification,", "supertcalifragilisticexpialidocious"]
    @test split_words("Testihlpng Jh when None is psed as tspaspsos,ces,Testinaserrorhe input parameter") == SubString{String}["Testihlpng", "Jh", "when", "None", "is", "psed", "as", "tspaspsos,ces,Testinaserrorhe", "input", "parameter"]
    @test split_words("3..99.") == 0
    @test split_words("A nice list of words like antildisestablishmentarianism, pneumonoulNodteaand021,xttramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis, floccinaucinihilipilification, supertcalifragilsisticexpialidocious") == SubString{String}["A", "nice", "list", "of", "words", "like", "antildisestablishmentarianism,", "pneumonoulNodteaand021,xttramicroscopABCDEFJhmlerrorGicsilicovolcanoconiosis,", "floccinaucinihilipilification,", "supertcalifragilsisticexpialidocious"]
    @test split_words("ase(efault,ntadnA nice list of words like antidisestablishmentarian floccinaucinihilipilification, supertcalifragilisticexpialidociousd,s") == SubString{String}["ase(efault,ntadnA", "nice", "list", "of", "words", "like", "antidisestablishmentarian", "floccinaucinihilipilification,", "supertcalifragilisticexpialidociousd,s"]
    @test split_words("ssspsa45,467s890upertcalifragiliusticexpialidocious") == SubString{String}["ssspsa45", "467s890upertcalifragiliusticexpialidocious"]
    @test split_words("this,shouTesting with spsos, commas and d-order lowercase letters like a, bdf, hjklpd") == SubString{String}["this,shouTesting", "with", "spsos,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklpd"]
    @test split_words("Testing switth spaces, commas and d-orderbsdf, hjklp") == SubString{String}["Testing", "switth", "spaces,", "commas", "and", "d-orderbsdf,", "hjklp"]
    @test split_words("This text contains ,em,rno whitespaces but has  ccommas,a period, anPython 3.9.7 (dshouldeffault, Sep 126 2021, 08:14:53) [MSC v.1916  64 bit (AMD64)] \nd  odd-order lowercasel letters esuch as bd, fhhj, and nprtvxz") == SubString{String}["This", "text", "contains", ",em,rno", "whitespaces", "but", "has", "ccommas,a", "period,", "anPython", "3.9.7", "(dshouldeffault,", "Sep", "126", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]", "d", "odd-order", "lowercasel", "letters", "esuch", "as", "bd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("hjklplilk") == 6
    @test split_words("pneumonoultramicroswtiwiththcopABCDEFJhmlerrorGicsilicovolcanoconiosis,m,r") == SubString{String}["pneumonoultramicroswtiwiththcopABCDEFJhmlerrorGicsilicovolcanoconiosis", "m", "r"]
    @test split_words("nantidA mix of spaces and commas a,like this,should sspa45,67890isestablishmentarianism,26o") == SubString{String}["nantidA", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sspa45,67890isestablishmentarianism,26o"]
    @test split_words("like1") == 1
    @test split_words("dThis text contains no whitespaces but has  commas,a period, and  odd-oretters such as Testing error handling when None is passed asameterbd, fhhj, and nprtvxz") == SubString{String}["dThis", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-oretters", "such", "as", "Testing", "error", "handling", "when", "None", "is", "passed", "asameterbd,", "fhhj,", "and", "nprtvxz"]
    @test split_words("psTesting swith spaces, commas and d-orderbsdf, hjklpeed") == SubString{String}["psTesting", "swith", "spaces,", "commas", "and", "d-orderbsdf,", "hjklpeed"]
    @test split_words("ase(efault,ntadnA nice list of words like antidisestablishmentarian floccinaucinihilipilification, s(dshoiuldefault,upertcalifragilisticexpialidociousd,s") == SubString{String}["ase(efault,ntadnA", "nice", "list", "of", "words", "like", "antidisestablishmentarian", "floccinaucinihilipilification,", "s(dshoiuldefault,upertcalifragilisticexpialidociousd,s"]
    @test split_words("odd-oretters") == 6
    @test split_words("odid-ordv!moslld!dr") == 10
    @test split_words("ase(defwhitespacexvparams,ault,ntand,s") == SubString{String}["ase(defwhitespacexvparams", "ault", "ntand", "s"]
    @test split_words("Python 3.9.7 (dshouldefault, Sep 262 2021, 08:14:53) [MSC v.1916  64 bit (AMD64)] \n") == SubString{String}["Python", "3.9.7", "(dshouldefault,", "Sep", "262", "2021,", "08:14:53)", "[MSC", "v.1916", "64", "bit", "(AMD64)]"]
    @test split_words("A mix of spaces and commas a,like this,should sTesting Jhmlerror handling when Nod as the input parametterspa45,67spsos,890") == SubString{String}["A", "mix", "of", "spaces", "and", "commas", "a,like", "this,should", "sTesting", "Jhmlerror", "handling", "when", "Nod", "as", "the", "input", "parametterspa45,67spsos,890"]
    @test split_words("spaspseos,ces,Testinasthis,shouTesting with spsos, commas and d-order lowercase letters like a, bdf, hjklpderror") == SubString{String}["spaspseos,ces,Testinasthis,shouTesting", "with", "spsos,", "commas", "and", "d-order", "lowercase", "letters", "like", "a,", "bdf,", "hjklpderror"]
    @test split_words("Nodte2021,ase(defwhitespaces,eault,ntand,sxt") == SubString{String}["Nodte2021", "ase(defwhitespaces", "eault", "ntand", "sxt"]
    @test split_words("rerrrr") == 5
    @test split_words("[onM.1916C") == 1
    @test split_words("a,lilkA") == SubString{String}["a", "lilkA"]
    @test split_words("ssspsa45,467s8and90upertcalifragiliusticexpialidocious") == SubString{String}["ssspsa45", "467s8and90upertcalifragiliusticexpialidocious"]
    @test split_words("Testing swith spaces,A mix of spaces and co mmas a,like this,should split as,wo(default,rds,a1nd numbers like 12345,67890 commas and d-orderbsdf, hjklp") == SubString{String}["Testing", "swith", "spaces,A", "mix", "of", "spaces", "and", "co", "mmas", "a,like", "this,should", "split", "as,wo(default,rds,a1nd", "numbers", "like", "12345,67890", "commas", "and", "d-orderbsdf,", "hjklp"]
    @test split_words("NPython 3.9.7 (dshouldefault, Sep 26 2021, 08:14:53) [MSC v.1916  64jwzfxwpfxyqpki bit (AMD64)] \nhjklpoonee") == SubString{String}["NPython", "3.9.7", "(dshouldefault,", "Sep", "26", "2021,", "08:14:53)", "[MSC", "v.1916", "64jwzfxwpfxyqpki", "bit", "(AMD64)]", "hjklpoonee"]
    @test split_words("ase(efault,ntadnA nice list of words like antidisestablishmentarian floccinaucinihilipilification, supertcaliifragilisticexpialidociousd,s") == SubString{String}["ase(efault,ntadnA", "nice", "list", "of", "words", "like", "antidisestablishmentarian", "floccinaucinihilipilification,", "supertcaliifragilisticexpialidociousd,s"]
    @test split_words("dThis text contains no whitespaces but has  commas,a period, and  odd-oretters such as Testing error handling when None is passed asameterbd, fhhjrtvxz") == SubString{String}["dThis", "text", "contains", "no", "whitespaces", "but", "has", "commas,a", "period,", "and", "odd-oretters", "such", "as", "Testing", "error", "handling", "when", "None", "is", "passed", "asameterbd,", "fhhjrtvxz"]
end
