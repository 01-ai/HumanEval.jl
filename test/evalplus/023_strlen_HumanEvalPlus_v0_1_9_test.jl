@testitem "023_strlen_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "023_strlen.jl"))
    @test strlen("Hello, World!") == 13
    @test strlen("12345") == 5
    @test strlen(" ") == 1
    @test strlen("This is a long string that has many characters in it") == 52
    @test strlen("abcdefghijklmnopqrstuvwxyz") == 26
    @test strlen("Testing testing 123") == 19
    @test strlen("The quick brown fox jumps over the lazy dog") == 43
    @test strlen("one\ntwo\nthree\nfour\nfive") == 23
    @test strlen("1234567890") == 10
    @test strlen("This string has a \n newline character") == 37
    @test strlen("one\ntwo\nthree\nf\nfoive") == 21
    @test strlen("The quick brown fox jumps overq the lazy dog") == 44
    @test strlen("abcdefgjklmnopqrstuvwxyz") == 24
    @test strlen("three\nfour\nfive") == 15
    @test strlen(" This striThis is a long string that has many characters in itng has a \n newline character") == 90
    @test strlen("") == 0
    @test strlen("The quick brown fox jumps over the lazy This striThis is a long string that has many characters in itng has a \n newline character dog") == 133
    @test strlen("1234 This striThis is a long string that has many characters in itng has a \n newline character5") == 95
    @test strlen("The quick brown fox jumps over the lazy This striThis is aaracter dog") == 69
    @test strlen("one\ntwot\nthree\nfour\nfive") == 24
    @test strlen("11234567890") == 11
    @test strlen("one\ntwot\nthrThis is a long string that has many characters in itee\nfour\nfive") == 76
    @test strlen("The quick brown f ox jumps over the lazy dog") == 44
    @test strlen("122345") == 6
    @test strlen("Testing testingone\ntwot\nthrThis is a long string that has many characters in itee\nfour\nfive 123") == 95
    @test strlen("one\ntwot\nthrThis is a long string thtat has many characters in itee\nfour\nfive") == 77
    @test strlen("123345") == 6
    @test strlen("The quick brown fox jumps over the lazy Thisthree\nfour\nfiveracter dog") == 69
    @test strlen("GNDKQyadEb") == 10
    @test strlen("Hello, Woorld!") == 14
    @test strlen("of\nfoive") == 8
    @test strlen("The quick brown fox jumps overq theHello, World! lazy dog") == 57
    @test strlen("M") == 1
    @test strlen("NEvG") == 4
    @test strlen("Hello, Woorlod!") == 15
    @test strlen("thrieeThe quick brown fox jumps overq the lazy dog\nfour\nfive") == 60
    @test strlen("one\ntwot\nthree\nfour\nfiv") == 23
    @test strlen("abcdefghijklmnopq1234 This striThis is a long string that has many characters in itng has a \n newline character5rstuvwxyz") == 121
    @test strlen("Hello, Woo12345rld!") == 19
    @test strlen("one\ntwot This striThis is a long streing that has many characters in itng has a \n newline character\nthree\nfour\nfive") == 115
    @test strlen(" This striThis is a long string that has many characters in itng has a \n neawline character") == 91
    @test strlen("1223545") == 7
    @test strlen("one\ntwota\nthrThis is a long string that has many characters in itee\nfour\nfive") == 77
    @test strlen("The quick brzown fox jumps over the leazy Thisis is aaracter dog") == 64
    @test strlen("1234 This sitriThis is a long string that has many characters in itng has a \n newline character5") == 96
    @test strlen("TestiTng testing 123") == 20
    @test strlen("GNDThis string has a \n newline characterdEb") == 43
    @test strlen("The quick brzown fox sjumps over the leazy Thisis is aaracter dog") == 65
    @test strlen("G1234 This sitriThis is a long string that has many characters in itng has a \n newline character5NDKQyadEb") == 106
    @test strlen("The quick brown fox jumps over theThe quick brown fox jumps overq the lazy dog lazy Thisthree\nfour\nfiveracter dog") == 113
    @test strlen("G1234 This sitriThis is a long string that has many characters in itng has a \n newline character5NDKThe quick brown fox jumps over theThe quick brown fox jumps overq the lazy dog lazy Thisthree\nfour\nfiveracter dogQyadEb") == 219
    @test strlen("oef\nffoive") == 10
    @test strlen("one\ntwot\nthrThis is a long string that has many characters in itee\nfoour\nfive") == 77
    @test strlen("of\nfoivfe") == 9
    @test strlen("Testing te stingone\ntwot\nthrThis is a long string that has many characters in itee\nfour\nfive 123") == 96
    @test strlen("Hello, WoG1234 This sitriThis is a long string that has many characters in itng has a \n newline character5NDKThe quick brown fox jumps over theThe quick brown fox jumps overq the lazy dog lazby Thisthree\nfour\nfiveracter dogQyadEborlod!") == 235
    @test strlen("Hello,The quick brown fox jumps over the lazy Thisthree\nfour\nfiveracter dog Woo12345rld!") == 88
    @test strlen("Hello, WoG1234 This sitriThis is a long string that has many characters in itng has a \n newline character5NDKThe quick brown fox jumps over theThe quick by Thisthree\nfour\nfiveracter dogQyadEborlod!") == 197
    @test strlen("off\nfoiivfe") == 11
    @test strlen("912345667890") == 12
    @test strlen("abcdefgjklmnopqrstuvwxyzive") == 27
    @test strlen("The quick brown fox jumps over the lazy This striThis is aaracter dogM") == 70
    @test strlen("Hello, WoG1234 This sitriThis is a long string that has many characters in itng h as a \n newline character5NDKThe quick brown fox jumps over theThe quick brown fox jumps overq the lazy dog lazby Thisthree\nfour\nfiveracter dogQyadEborlod!") == 236
    @test strlen("The quick brown f ox jumps over the lazyg") == 41
    @test strlen("one\ntwot\nthrThis is a long string that has  many characters in itee\nfour\nfive") == 77
    @test strlen("one\n\ntwot\nthrThis is a long string that has many characters in itee\nfoour\nfive") == 78
    @test strlen("thrieeThe quick brown f ox jumps over the lazy dogThe quick brown fox jumps overq the lazy dog\nfour\nfive") == 104
    @test strlen("G1The quick brown f ox jumps over the lazy dog234  has a \n newline character5NDKQyadEb") == 86
    @test strlen("TheHello,The quick brown fox jumps over the lazy Thisthree\nfour\nfiveracter dog Woo12345rld! quick broThis string Thas a \n newline characterwn fox jumps over the lazy Thisthree\nfour\nfiveracter dog") == 195
    @test strlen("off\nfoivife") == 11
    @test strlen("three\nefour\noff\nfoiivfe") == 23
    @test strlen("Test1iTng testing 123") == 21
    @test strlen("one\ntwota\nthrThis is a long string that has many chone\ntwot\nthrThis is a long string that has  many characters in itee\nfour\nfivearacters in itee\nfour\nfive") == 154
    @test strlen("TheHello,The quick brown fox jumps over the lazy Thisthree\nfour\nfiveracter dog Woo12345rld! quick broThis string Thas a \n newline characterwn fox jumps over theone\ntwota\nthrThis is a long string that has many characters in itee\nfour\nfive dog") == 241
    @test strlen("thrieeThe quick brown f ox jumps over the lazy dogThe quick brown fox jumps overq the lazy dog\nfour\nfive ") == 105
    @test strlen("oene") == 4
    @test strlen("off\nabcdefgjklmnopqrstuvwxyzfoivife") == 35
    @test strlen("The quick brown f ox jumps over the lazy") == 40
    @test strlen("abcdefghijklTest1iTng testing 123mnopq1234 This striThis is a long string that has many characters in itnghas a \n newline character5rstuvwxyz") == 141
    @test strlen("abcdeflghijklmnopqrstuvwxyz") == 27
    @test strlen("1o, Woorld!890") == 14
    @test strlen("12333345") == 8
    @test strlen("1122345") == 7
    @test strlen("one\ntwota\nthrThis is a long string that has many characters ien itee\nfour\nfive") == 78
    @test strlen("Hello, W123345orld!") == 19
    @test strlen("one\ntwo\nthrfoive") == 16
    @test strlen("one\ntwot\nthrThis is a long string that has  many characterns in itee\nfour\nfive") == 78
    @test strlen("one\ntwotaa\nthrThis is a long string that has many characters ien itee\n1234 This sitriThis is a long string that has many characters in itng has a \n newline character5four\nfive") == 175
    @test strlen("The quick brzown fox sjumps over the leazy Thisis is aaThe quick brown fox jumps overq theHello, World! lazy dogracter dog") == 122
    @test strlen("MThe quick brown fox jumps over the lazy This striThis is aaracter dogM") == 71
    @test strlen("The quick brzown fox jumps over the leazy Thisis is aaracter Hello, Woorld!dog") == 78
    @test strlen("1234 This sitriThis is a long string that has many character12345s in itng has a \n newline character5") == 101
    @test strlen("1234 This sitriThis is a long string that has many characters in itng has a \n neThe quick brown f ox jumps over the lazygwline character5") == 137
    @test strlen("912345667890The quick brown fox jumps over the lazy This striThis is aaracter dogM") == 82
    @test strlen("Hellone\ntwot\nthree\nfour\nfivo, WoG1234 This sitriThis is a long string that has many characters in itng has a \n newline character5NDKThe quirck brown fox jumps over theThe quick by Thisthree\nfour\nfiveracter dogQyadEborlod!") == 221
    @test strlen("The quick brown fox11234567890 jumps over the lazy This striThis is aaracter dog") == 80
    @test strlen("one\ntwota\nthrThis is a long string that has many characters iThe quick bis striThis is aaracter dogMen itee\nfour\nfive") == 117
    @test strlen("The quick brown fox jumps over theThe quick brown fox jxumps overq the lazy dog lazy Thisthree\nfour\nfiveracter dog") == 114
    @test strlen("one\ntwot\nthrThis is a long string that has many characters in itee\nfour\nfiveabcdefghijklmnopqrstuvwxyz") == 102
    @test strlen("Testing te stingone\ntwot\nthrThis is a long strinThe quick brown fox jumps over theThe quick brown fox jumps overq the lazy dog lazy Thisthree\nfour\nfiveracter dogg that has many characters in itee\nfour\nfive 123") == 209
    @test strlen("  ") == 2
    @test strlen("\t") == 1
    @test strlen("\n") == 1
    @test strlen("\r") == 1
    @test strlen("àèìòùáéíóúýâêîôûãñõäëïöüÿç") == 26
    @test strlen("This is a sample string to test the function") == 44
    @test strlen("The Quick Brown Fox Jumps Over The Lazy Dog") == 43
    @test strlen("Th!s 1s 4 str1ng w1th 5ymb0ls !n 1t") == 35
    @test strlen("          ") == 10
    @test strlen("   \n\n   ") == 8
    @test strlen("Quick") == 5
    @test strlen("   ") == 3
    @test strlen("           ") == 11
    @test strlen("           àèìòùáéíóúýâêîôûãñõäëïöüÿç") == 37
    @test strlen("      ") == 6
    @test strlen("w1th") == 4
    @test strlen("Th!") == 3
    @test strlen("   \n\n 1s  ") == 10
    @test strlen("Jumps") == 5
    @test strlen("Fox") == 3
    @test strlen("1t") == 2
    @test strlen("    This is a sample string to test the function          ") == 58
    @test strlen("Th!s 1s 4 str1ng wtest5ymb0ls !n 1t") == 35
    @test strlen("    This is a sampleto string to test the function          ") == 60
    @test strlen("Qukick") == 6
    @test strlen("    \t ") == 6
    @test strlen("            ") == 12
    @test strlen("   \n\n  string") == 13
    @test strlen("Tish!") == 5
    @test strlen("Th!s 1s 4 str1ng wtest5ymb0ls !n 1t\n") == 36
    @test strlen("ps") == 2
    @test strlen("a") == 1
    @test strlen("Dog") == 3
    @test strlen("Tish!           ") == 16
    @test strlen("4") == 1
    @test strlen("is") == 2
    @test strlen("Jummtops") == 8
    @test strlen("!n") == 2
    @test strlen("Tish!           4") == 17
    @test strlen("yLazy") == 5
    @test strlen(" ã          àèìòùáéíóúýâêîôûãñõäëïöüÿç") == 38
    @test strlen("LqNCZA") == 6
    @test strlen("Over") == 4
    @test strlen("hyNcJH") == 6
    @test strlen("QFoxukick") == 9
    @test strlen("Fo    This is a sampleto string to test the function  n        x") == 64
    @test strlen("!nn") == 3
    @test strlen("\t\t") == 2
    @test strlen("whyNcJH1th") == 10
    @test strlen("TheTe") == 5
    @test strlen("    This is a sampl           eto string to test the func tion          ") == 72
    @test strlen("     ã          àèìòùáéíóúýâêîôûãñõäëïöüÿç  ") == 44
    @test strlen("QFoQxukick") == 10
    @test strlen("tn") == 2
    @test strlen("Th!s 1s 4 str1ng wtest5ymb0ls !nsampleto 1t\n") == 44
    @test strlen("iw1th") == 5
    @test strlen("x      ") == 7
    @test strlen("Dàèìòù4áéíóúýâêîôûãñõäëïöüÿçgog") == 31
    @test strlen("    This is a sample    \n\n 1s  string to test the functoion          ") == 69
    @test strlen("isJumps") == 7
    @test strlen("function") == 8
    @test strlen("func") == 4
    @test strlen("Dëàèìòù4áéíóúýâêîôûãñõäëïÿçgog") == 30
    @test strlen("sampl") == 5
    @test strlen("funcc") == 5
    @test strlen("Lazy") == 4
    @test strlen("Th!s 1s 4 str1ng wtest5ymb40ls !n 1t\n") == 37
    @test strlen("n") == 1
    @test strlen("Doo") == 3
    @test strlen("aOver") == 5
    @test strlen("Th!s 1s 4 str1ng wtest5ymb0lse !n 1t\n") == 37
    @test strlen("Dëàèìòùõäëïÿçgog") == 16
    @test strlen("str1ng") == 6
    @test strlen("    This is a sampl            eto string to test the func Theon          ") == 74
    @test strlen("Tish!           4!n") == 19
    @test strlen("Th!s40ls !n 1t\n") == 15
    @test strlen("cQukick") == 7
    @test strlen("   \n\n     ") == 10
    @test strlen("QuaOverick") == 10
    @test strlen("Te") == 2
    @test strlen("QFoxuk") == 6
    @test strlen("Jum5ymb0lsmtops") == 15
    @test strlen("Th!s40ls") == 8
    @test strlen("   \n\n  1s  ") == 11
    @test strlen("funnc") == 5
    @test strlen("eto") == 3
    @test strlen("    This is a sample string to test the function  i        ") == 59
    @test strlen("sample") == 6
    @test strlen("        functoion   ") == 20
    @test strlen("     ã         ô àèìòùáéíóúýâêîôûãñõäëïöüÿç  ") == 45
    @test strlen("Tetn") == 4
    @test strlen("mThfGqorZJum5ymb0lsmtops") == 24
    @test strlen("   \n\nwtest5ymb40ls    ") == 22
    @test strlen("    This is a sample strinisg to test the function          ") == 60
    @test strlen("   \nhyNcJH\n  string") == 19
    @test strlen("str1ngsampl") == 11
    @test strlen("       ") == 7
    @test strlen("   \n\nwwtest5ymb40ls    ") == 23
    @test strlen("iwTish!1th") == 10
    @test strlen("test") == 4
    @test strlen("TTetn") == 5
    @test strlen("    ") == 4
    @test strlen("   \n\nwwtes            ls    ") == 28
    @test strlen("LaàèìòùáéíóúýâêîôûãñõäëïöüÿçQFoQxukyicky") == 40
    @test strlen("ver") == 3
    @test strlen("    4\n\n  1s  ") == 13
    @test strlen("    This is a sample TTetnstrinisg to test the function           ") == 66
    @test strlen("This is a sample string    This is a sampl            eto string to test the func Theon           to test the function") == 118
    @test strlen("tn ã          àèìòùáéíóúýâêîôûãñõäëïöüÿç") == 40
    @test strlen("Tish!          4") == 16
    @test strlen("strin") == 5
    @test strlen("àèìòùáéíóúýâêîèôûãñõäëïöüÿç") == 27
    @test strlen("   \nhy    This is a sample strinisg to test the fuunction          NcJH\n  string") == 80
    @test strlen("funthec") == 7
    @test strlen("  Tish!           4!n \n\n  1s  ") == 30
    @test strlen("funtThis is a sample string    This is a sampl            eto string to test the func Theon           to test the functionhec") == 125
    @test strlen("        ") == 8
    @test strlen("Th!s1s 1s 4 str1ng w1th 5ymb0ls !n 1t") == 37
    @test strlen("   \n\nBrown") == 10
    @test strlen("   \n\n wwtest5ymb40ls    ") == 24
    @test strlen("iis") == 3
    @test strlen("                ã           àèìòùáöüÿç   ") == 41
    @test strlen("astr1ngsampl") == 12
    @test strlen("QQFoxuk") == 7
    @test strlen("functoion") == 9
    @test strlen("   \nTetn\nBrown") == 14
    @test strlen("Th!s40ls !n 1t   \n\n wwtest5ymb40ls    \n") == 39
    @test strlen("nFo") == 3
    @test strlen("The QuiisJumpsck Brown Fox Jg") == 29
    @test strlen("Th!s 1s 4 stTheTer1ng wtest5ymb0lse !n 1t\n") == 42
    @test strlen("Jum5ymb0lsmfunction") == 19
    @test strlen("iiis") == 4
    @test strlen("        funthec    ") == 19
    @test strlen("hyNcJ") == 5
    @test strlen("TTh!s40lsh!s 1s 4 str1ng wtest5ymb0lse !n 1t\n") == 45
    @test strlen("    This is a sample string to tea  ") == 36
    @test strlen("fufncc") == 6
    @test strlen("p1ss") == 4
    @test strlen("wiw1th") == 6
    @test strlen("44") == 2
    @test strlen("eeTe") == 4
    @test strlen("           àèìòùáéíóúýâêîôiwTish!1thûãñõäëïöüÿç") == 47
    @test strlen("Lazyy") == 5
    @test strlen("This is a sample string    This is a sampl            eto string to test the func Theon       to test the function") == 114
    @test strlen("RLkion") == 6
    @test strlen("stricQukickn") == 12
    @test strlen("funtht") == 6
    @test strlen("TheyLazyTe") == 10
    @test strlen("   \nhy    This is a sample strinisg to test the fuunction          NcJH\n  string4") == 81
    @test strlen("i        s") == 10
    @test strlen("etoo") == 4
    @test strlen("Th!s 1s 4 str1ng wtest5ymb40ls s!n 1t\n") == 38
    @test strlen("FoFxuk") == 6
    @test strlen("The Quick Brown Fox Jumpe Lazy Dog") == 34
    @test strlen("4!n") == 3
    @test strlen("QuiisJumpsck") == 12
    @test strlen("This is a sample string    This is a sampl            eto string to LqNCZAtest the func Theon           to test the function") == 124
    @test strlen("         ") == 9
    @test strlen("!") == 1
    @test strlen("TT") == 2
    @test strlen("mThftGqorZJum5ymb0lsmtops") == 25
    @test strlen("wwtes") == 5
    @test strlen("Tis          ") == 13
    @test strlen("wtest5ymb40ls") == 13
    @test strlen("    This is a sample strintg to test the function          ") == 59
    @test strlen(" àèìòùáéíóúýâêîôiwTish!1thûãñõäëïöüÿç  \n\nwtest5ymb40ls    ") == 58
    @test strlen("QFoxukcick") == 10
    @test strlen("Tis") == 3
    @test strlen("fux      ncc") == 12
    @test strlen("fux") == 3
    @test strlen("YJvcL") == 5
    @test strlen("Qck") == 3
    @test strlen("TTh!s40lsh!s 1s 4 str1nb0lse !n 1t\n") == 35
    @test strlen(" Th!s  \n\n 1s  ") == 14
    @test strlen("    This is a sampl          tothe func tion          ") == 54
    @test strlen("nn") == 2
    @test strlen("sTh!s4strinisg05ymb0lsls") == 24
    @test strlen("  Th!s 1s 4 str1ng wtest5ymb0ls !nsampleto 1t\n") == 46
    @test strlen("whyNcJH1thfunnc") == 15
    @test strlen("why1NcJH1th") == 11
    @test strlen("iisTe") == 5
    @test strlen("Th!s40ls !n 1This is a sample string    This is a sampl            eto string to LqNCZAtest the func Theon           to test the functi           àèìòùáéíóúýâêîôûãñõäëïöüÿçnt\n") == 175
    @test strlen("stcricQukDogickn") == 16
    @test strlen("why1N    This is a sampleto string to test the function          cJH1th") == 71
    @test strlen("ssps") == 4
    @test strlen("Th    This is a sample TTetnstrinisg to test the function           !s40ls !n 1t\n") == 81
    @test strlen("    This irs a sample string to tea  ") == 37
    @test strlen("fuwhy1N    This is a sampleto string to test the function          cJH1th") == 73
    @test strlen("   \n\nwwtes            ls   Th!s 1s 4 str1ng wtest5ymb0ls !n 1t\n ") == 64
    @test strlen("hy") == 2
    @test strlen("strinisg") == 8
    @test strlen("           fux") == 14
    @test strlen("iiàèìòùáéíóúýâêîèôûãñõäëïöüÿç") == 29
    @test strlen("   \nhy    This is a sample strinisg to test the fuunction          NcJH\n  strin") == 79
    @test strlen("why1N") == 5
    @test strlen("Laàèìòùáéíóúùýâê   \n\n  1s  îôûãñõäëïöüÿçQFoQxukyicky") == 52
    @test strlen("   \nhy    This is a sample strinisg to test othe fuunction          NcJH\n  string4") == 82
    @test strlen("!s40ls") == 6
    @test strlen("This is a sample string    This is a sampl            eto string to test thLaàèìòùáéíóúùýâê   \n\n  1s  îôûãñõäëïöüÿçQFoQxukyickythe function") == 139
    @test strlen("Theon") == 5
    @test strlen("t1t") == 3
    @test strlen(" cJH1th1s 4         funthec    ls !nsampleto 1t\n") == 48
    @test strlen("Th!s 1s 4 stsr1ng wtest5ymb0ls !n 1t\n") == 37
    @test strlen("Laàèìòùáéíóúùýâê") == 16
    @test strlen("       This is a sample string to test the function          1s  ") == 65
    @test strlen("whyLaàèìòùáéíóúùýâê   \n\n  1s  îôûãñõäëïöüÿçQFoQxukyickytothe  \t H1th") == 68
    @test strlen("wwwtes") == 6
    @test strlen("îôûãñõäëïöüÿçQFoQxukyickythe") == 28
    @test strlen("   \n\nBro   \n\n 1s  n") == 19
    @test strlen("    This is a sample TTetnstrinisg tiiiso test the function           ") == 70
    @test strlen("\n\n") == 2
    @test strlen("Tishstrintg4") == 12
    @test strlen("why1N    This is a sampleto string to test e function          cJH1th") == 69
    @test strlen("sThe Quick Brown Fox Jumps Over The Lazy DogtcricQukDogickn") == 59
    @test strlen("    This is a sample sttotherintg to test the function          ") == 64
    @test strlen("to") == 2
    @test strlen("tt1t") == 4
    @test strlen("RL   \n\n  1s  kion") == 17
    @test strlen("LqNCZAtest") == 10
    @test strlen("ps1ss") == 5
    @test strlen("nF") == 2
    @test strlen("wwhyNcJH1thfunnchy1N") == 20
    @test strlen("àèìòùáöüÿç") == 10
    @test strlen("sJummtops") == 9
    @test strlen("   \n\nwwtens            ls   Th!s 1s 4 str1ng wtest5ymb0ls !n 1t\n ") == 65
    @test strlen("   ã \t ") == 7
    @test strlen("fuunction") == 9
    @test strlen("\n\nfunc") == 6
    @test strlen("wtest5ymb0lse") == 13
    @test strlen("QQFoTTxuk") == 9
    @test strlen("sQuiisJsumpsck") == 14
    @test strlen("Brown") == 5
    @test strlen("FMc") == 3
    @test strlen("p1sBrown") == 8
    @test strlen("TlTh!s40lsh!s") == 13
    @test strlen("This is a sample string    This is a sampl            eto string to test thLaàèìòùáéíóúùýâê   \n\n  Bro1s  îôûãñõäëïöüÿçQFoQxukyickythe function") == 142
    @test strlen("i        s   ") == 13
    @test strlen("    This is a sample sttotherintg to test the funcstricQukickntion          ") == 76
    @test strlen("  LqNCZAtest") == 12
    @test strlen("hyisJumpsJ") == 10
    @test strlen("   \nhyN cJH\n  string") == 20
    @test strlen("OvhyNcJer") == 9
    @test strlen("othe") == 4
    @test strlen("LaàèìòùáéQFoxukcky") == 18
    @test strlen("LaàèìòùáéíiisTeóúùýâê") == 21
    @test strlen("fuuni        sction") == 19
    @test strlen("fuon") == 4
    @test strlen("stgrsr1ng") == 9
    @test strlen("Ove    This is a sample    \n\n 1s  string to test the functoion          r") == 73
    @test strlen(" Tsh!s   \n\n 1s  ") == 16
    @test strlen("Jum5ymbops") == 10
    @test strlen("The") == 3
    @test strlen("whyLaàèìòùáéíóúùýâê   \n\n  1s  îôãñõäëïöüÿçQFoQxukyickytothe  \t H1th") == 67
    @test strlen("tiiiiso") == 7
    @test strlen("pFomThfGqorZJum5ymb0lsmtopss") == 28
    @test strlen("LqqNCZA") == 7
    @test strlen("ncc") == 3
    @test strlen("Tishstrintgi        s4") == 22
    @test strlen("!ncnncc") == 7
    @test strlen("string") == 6
    @test strlen("   \n   \n\nBrownrown") == 18
    @test strlen("4n") == 2
    @test strlen("B        functoion   rown") == 25
    @test strlen("vemThfGqorZJum5ymb0lsmtopsr") == 27
    @test strlen("Th!s40ls !n 1This is a sample string    This is a samplt1t            eto string to LqNCZAtest the func Theon           to test the functi           àèìòùáéíóúýâêîôûãñõäëïöüÿçnt\n") == 178
    @test strlen("àèìòùáéíóúýâêîôiwTish!1thûãñõäëïöüÿç") == 36
    @test strlen("Th    This is a sample TTetnstrinisg Jumpeto test the function           !s40ls !n 1t\n") == 86
    @test strlen("Ove") == 3
    @test strlen("FoF1Thisxuk") == 11
    @test strlen("   \n\nwwtes            ls    Th!s 1s 4 str1ng wtest5ymb0ls !n 1t\n ") == 65
    @test strlen("B") == 1
    @test strlen("\n\nfnunc") == 7
    @test strlen("sns") == 3
    @test strlen("wiw1thstricQukickn") == 18
    @test strlen("  ring to tea  ") == 15
    @test strlen("DogtcricQukDogickn") == 18
    @test strlen("Dàèìòù4áéíóúýp1ssâêîôcJH1thûãñõäëïöüÿçgog") == 41
    @test strlen(" Th!s   \n\n 1s  ") == 15
    @test strlen("  Th!s 1s 4 str1ng wtest5nymb0ls !nsampleto 1t\n") == 47
    @test strlen("Do") == 2
    @test strlen("   \n\n  striing") == 14
    @test strlen("Th!s 1s 4 stsr1ng wtest5ymb0TTh!s40lsh!sls !n 1t\n") == 49
    @test strlen("striing") == 7
    @test strlen("wteb40ls") == 8
    @test strlen("fJumpeuon") == 9
    @test strlen("hyNycJ") == 6
    @test strlen("mThfGeeTeqorZJum5ymb0lsmtops") == 28
    @test strlen("cJH1th") == 6
    @test strlen("TTh!s40lsh!s") == 12
    @test strlen("nfuntThis is a sample string    This is a sampl            eto string to test the func Theon           to test the functionheccc") == 128
    @test strlen("fnunnc") == 6
    @test strlen("                ã           ") == 28
    @test strlen("whyLaàèìòùáéíóúùýâê") == 19
    @test strlen("ô") == 1
    @test strlen("LaazLyy") == 7
    @test strlen("psx       ") == 10
    @test strlen("stgrsr1ngLqNCZAtest") == 19
    @test strlen("This is a sample string    This is a sampl            eto string to test thLaàèìòùáhéíóúùýâê   \n\n  Bro1s  îôûãñõäëïöüÿçQFoQxwtest5ymb0lseukyickythe function") == 156
    @test strlen("This is a sample string    This is a sampl            eto string to LqNCZAtmThfGeeTeqorZJum5ymb0lsmtopsest the func Theon           to test the function") == 152
    @test strlen("Foxx") == 4
    @test strlen("îôûãñõäëïöüÿçQFoQxukyicky") == 25
    @test strlen("The Quick Br owsttotherintgn Fox Jumpe Lazy og") == 46
    @test strlen("og") == 2
    @test strlen("str1ngsampaOverl") == 16
    @test strlen("Fo stgrsr1ng   This is aTh!s 1s 4 str1ng wtest5ymb0lse !n 1t\n sampleto string to test the function  n        x") == 110
    @test strlen(" ã          àèìòùáéíóúýâêîôûãñõäëïöàèìòùáéíóúýâêîôûãñõäëïöüÿçüÿç") == 64
    @test strlen("This") == 4
    @test strlen("    This is a sampl           eto string to test thes func tion          ") == 73
    @test strlen("funthstr1ng") == 11
    @test strlen("tet") == 3
    @test strlen("whyNcJH1c") == 9
    @test strlen("    This is a sample strinisg to test the functiostgrsr1ngLqNCZAtestn          ") == 79
    @test strlen("    This is a sample    \n\n 1s  string to te   ") == 46
    @test strlen("x  cJH1th1s 4         funthec    ls !nsampleto 1t\n     ") == 55
    @test strlen("hTheTe") == 6
    @test strlen("funaTh!s") == 8
    @test strlen("   \nhy    This is a sample strinisg to test the fuunction          NcJH\n  string4cJH1Jth") == 88
    @test strlen("BB") == 2
    @test strlen("why1N  p  This is a sampleto string to test the function          cJH1th") == 72
    @test strlen("mThftGqorZJum5ymb0lsmtstricQukicknops") == 37
    @test strlen(" àèìòùáéíóúýâêîôiwTish!!1thûãñõäëïöüÿç  \n\nwtest5ymb40ls    ") == 59
    @test strlen("   \n\nRL 1s  ") == 12
    @test strlen("Th!s 1s RL4 str1ng wtest5ymb0l !n 1t\n") == 37
    @test strlen("str1nb0lse") == 10
    @test strlen("   \nhy    This  is a sample strinisg to test the fuunction          NcJH\n  string4cJH1Jth") == 89
    @test strlen("nfuntThis") == 9
    @test strlen("samplt1t") == 8
    @test strlen("wiw1s1th") == 8
    @test strlen("  Th!s 1s 4 st1r1ng wtest5nymb0ls !nsampleto 1t\n") == 48
    @test strlen("nfuntThis        ") == 17
    @test strlen("Tish!  TTh!s40lsh!s 1s 4 str1ng wtest5ymb0lse !n 1t\n         ") == 61
    @test strlen("Tish!          This is a sample string    This is a sampl   unction4") == 68
    @test strlen("p") == 1
    @test strlen("Th!s 1s str1ng wtest5ymb0ls !n 1t\n") == 34
    @test strlen("FMcc") == 4
    @test strlen("BBo") == 3
    @test strlen("f\n\nfnunc") == 8
    @test strlen("îôûãñõäëïöüÿçQFoyQxukyickythe") == 29
    @test strlen("functionheccc") == 13
    @test strlen("Th!s40ls !n 1This is a sample string    This is a samplt1t            etto string to LqNCZAtest the func Theon           to test the functi           àèìòùáéíóúýâêîôûãñõäëïöüÿçnt\n") == 179
    @test strlen("Bro") == 3
    @test strlen("JTh!s 1s 4 str1ng wtest5ymb0ls !nsampleto 1t\num5ymb0lsmfunction") == 63
    @test strlen("sThe Quick Brown Fox Jumps Over The Lazy DogttcricQukDogickn") == 60
    @test strlen("sTh!s4strinisg05ymb0lslTs") == 25
    @test strlen("puobAuk") == 7
    @test strlen("Juom5ymbops") == 11
    @test strlen("LaàèìòùáéQFoxxukcky") == 19
    @test strlen("whyNcJH1funnc") == 13
    @test strlen("Th") == 2
    @test strlen("Jg") == 2
    @test strlen("thLaàèìòùáéíóúùýâê") == 18
    @test strlen("fuwhy1N") == 7
    @test strlen("fuuni") == 5
    @test strlen("Bro1s") == 5
    @test strlen("\r\r") == 2
    @test strlen("why1N  p  This is a samplefunction          cJH1th") == 50
    @test strlen("QQFoTfuuniTxuk") == 14
    @test strlen("     o test the function1s  ") == 28
    @test strlen("QFoxucick") == 9
    @test strlen("àèìòùáéíóúýâêîôiwTish!1thûãñõäëïñöüÿç") == 37
    @test strlen("fnuncc") == 6
    @test strlen("Th!s 1s 4 sTtTheTer1ng wtest5ymb0lse !n 1t\nJum5ymb0lsmfunction") == 62
    @test strlen("Ths !nîôûãñõäëïöüÿçQFoyQxukyickythe 1t\n") == 39
    @test strlen("p1s4Bnrown") == 10
    @test strlen("   \n\n  ") == 7
    @test strlen("k") == 1
    @test strlen("etfuntThisoo") == 12
    @test strlen("àèìòùáéíóúýâêîôûãñõäëïöàèìòùáéíóúýâêîôûãñõäëïöüÿçüÿç") == 52
    @test strlen("LaàèìòùáéíúýâêîôûãñõäëïöüÿçQFoQxukyickThs !nîôûãñõäëïöüÿçQFoyQxukyickythe 1t\ny") == 78
    @test strlen("hyàèìòùáéíóúýâêîôûãñõäëïöàèìòùáéíóúýâêîôûãñõäëïöüÿçüÿç") == 54
    @test strlen("Tish!whyNcJH1th          4") == 26
    @test strlen("Th    This iTh!s 1s RL4 str1ng wtest5ymb0l !n 1t\ns a sample TTetnstrinisg Jumpet   \n\nwtest5ymb40ls    t\n") == 104
    @test strlen("Tish!whyNcJH1whyLaàèìòùáéíóúùýâê   \n\n  1s  îôãñõäëïöüÿçQFoQxukyickytothe  \t H1th  4") == 83
    @test strlen("wDohycJHt") == 9
    @test strlen("TtTetn") == 6
    @test strlen("isJuis") == 6
    @test strlen("Th!s1s") == 6
    @test strlen("   s is a sample    \n\n 1s  string to te   ") == 42
    @test strlen("wiiw1th") == 7
    @test strlen("OvOe") == 4
    @test strlen("sJTh!s 1s 4 str1ng wtest5ymb0ls !nsampleto 1t\num5ymb0lsmfunctionJummtop    This is a sample sttotherintg to test the function      QuaOverick     s") == 147
    @test strlen("Laàaèìòù!nnáéíóúùýâê") == 20
    @test strlen("  Tish!     sThe Quick Brown Fox Jumps Over The Lazy DogttcricQukDogickn      4!n \n\n  1s  ") == 90
    @test strlen("!nirs") == 5
    @test strlen("sJTh!s 1s 4 str1ng wtest5ymb0ls !nsampleto 1t\num5ymb0lsmfunctionJummtop    This is a sample sttotherintg to test           àèìòùáéíóúýâêîôûãñõäëïöüÿçQuaOverick     s") == 165
    @test strlen("           àèìòùáéíóúýâêîôiwTstgrsr1ngïöüÿç") == 43
    @test strlen("Tsh!s") == 5
    @test strlen("àèìòùáéíóúýâêîôûãñõäëïöàèìòùáiséíóúýâêîôûãñõäëïöüÿçüÿç") == 54
    @test strlen("i       s   ") == 12
    @test strlen("  Tish!     sThe Quick Brown Fox Jumps Over The Lazy DogttcricQukickn      4!n \n\n  1s  ") == 87
    @test strlen("RL4") == 3
    @test strlen("st1r1ng") == 7
    @test strlen("sTtTheTer1stgrsr1ngLqNCZAtestng") == 31
    @test strlen("zPyWTI") == 6
    @test strlen("aTh!s") == 5
    @test strlen("Fow1thF1Thisxuk") == 15
    @test strlen("saTh!s40lsmplt1t") == 16
    @test strlen("     nFo   ") == 11
    @test strlen("t1") == 2
    @test strlen("    This is a sample sttotherintg tàèìòùáöüÿço test the funcstricQukickntion          ") == 86
    @test strlen("   \n\nwwtes        t    ls    Th!s 1s 4 str1ng wtest5ymb0ls !n 1t\n ") == 66
    @test strlen("string4cJH1Jth") == 14
    @test strlen("     This is a sampl          tothe func tion          ") == 55
    @test strlen("BBro") == 4
    @test strlen("nnnp1ss") == 7
    @test strlen("BBBo") == 4
    @test strlen("The QuiisJumpsck Brown Fox JgLaàaèìòù!nnáéíóúùýâê") == 49
    @test strlen("wtest5ymb0lscQukiwhyLaàèìòùáéíóúùýâê   \n\n  1s  îôûãñõäëïöüÿçQFoQxukyickytothe  \t H1thkn") == 87
    @test strlen("TBrownrown") == 10
    @test strlen("vemThfGqorZJum5ymb0lsmtstgrsr1ngLqNCZAtestpsr") == 45
    @test strlen("   \nhy    This is a sample strinisg to ttest the fuunction          NcJH\n  string") == 81
    @test strlen("wtest5nymb0ls") == 13
    @test strlen("whyNcJH1thFox") == 13
    @test strlen("1This") == 5
    @test strlen("x  cJH1th1s 4         funtthec    ls !nsampleto 1t\n     ") == 56
    @test strlen("eo") == 2
    @test strlen("  Th!s 1s 4 st1   \n\nwwtest5ymb40ls    r1ng wtest5nymb0ls !nsampleto 1t\n") == 71
    @test strlen("     ã          àèìòùáéíóúìýâêîôstgrsr1ngûãñõäëïöüÿç  ") == 54
    @test strlen("wtest5ymb0TîôãñõäëïöüÿçQFoQxukyickytothesh!sls") == 46
    @test strlen("This is a sample string    This is a sampl            eto string to test thLaàèìòùáhéíóúùýâê   \n\n  Bro1s  îôûãñõäëïöüÿçQFoQxwtest5ymb0lseukyickythe ction") == 153
    @test strlen("striing     This is a sampl          tothe func tion          ") == 62
    @test strlen("QQFoTkTxu") == 9
    @test strlen("thes") == 4
    @test strlen("Th!s40ls !n 1This is a sample string    This Dàèìòù4áéíóúýâêîôûãñõäëïöüÿçgogis a samplt1t            etto string to LqNCZAtest the func Theon           to test the functi           àèìòùáéíóúýâêîQckôûãñõäëïöüÿçnt\n") == 213
    @test strlen(" ã          àèòìòùáéíóúýâêîôûãñõäëïöàèìòùáéíóúýâêîôûãñõäëïöüÿçüÿç") == 65
    @test strlen("rBrown") == 6
    @test strlen("hy         functoio") == 19
    @test strlen("nnshthes") == 8
    @test strlen("wtest5ymb0l") == 11
    @test strlen(" àèìòùáéíóúýâêîôiwTish!!1th1ûãñõäëïöüÿç  \n\nwtest5ymb40ls    ") == 60
    @test strlen("This is a sample string Theonto test the function") == 49
    @test strlen("     ã          àèìòùáDogttcricQukDogicknéíóúìýâêîôstwhy1Ngrsr1ngûãñõäëïöüÿç  ") == 78
    @test strlen("sQuiisJsmpsck") == 13
    @test strlen("àèìòùáéíóúýâêîôiwTish!!1thûãñõäëïöüÿçtnwtest5ymb0lscQukiwhyLLaàèìòùáéíóúùýâê   \n\n  1s  îôûãñõäëïöüÿçQFoQxukyickytothe  \t H1thkn\nBrown") == 133
    @test strlen("   Jum5ymbops ã iëïöüÿç  ") == 25
    @test strlen("o") == 1
    @test strlen("why1N  p  This is a sampleto string to test the function          cJH1t1sh") == 74
    @test strlen("ywwtensLazy    This is a samQuaOverickple TTetnstrinisg to test the function           ") == 87
    @test strlen("OZn") == 3
    @test strlen("cJH1t1s") == 7
    @test strlen("stgrsr1ngLqNtCZAtest") == 20
    @test strlen("    This  is a sample TTetnstrinisg to test the function           ") == 67
    @test strlen("yyy") == 3
    @test strlen("Th!s 1s 4 str1n0g wtest5ymb0lse !n 1t\n") == 38
    @test strlen("kRLkion") == 7
    @test strlen("Juom5This is a sample string    This is a sampl            eto string to test the func Theon       to test the functionymbops") == 125
    @test strlen("   \n\nRL 1Ls  ") == 13
    @test strlen("Th!s 1s 4 sTtTheTer1ng wtest5ymb0lse !n 1t\nJum5ymb0lsmfunct ion") == 63
    @test strlen("        funthec  tothet ") == 24
    @test strlen("  Tish!     sThe Quick Brown Fox Jumps Over The Lazy DogttTcricQukickn      4!n \n\n  1s  ") == 88
    @test strlen("    This is a sample strinitsg to test  the functiostgrsr1ngLqNCZAtestn          ") == 81
    @test strlen("hyNJcJ") == 6
    @test strlen("    This is a sample TTetnstrinisg tiiiso test the function       n    ") == 71
    @test strlen("iwTish!1Fo") == 10
    @test strlen("Tish!          This is a sample string    This is a sampl   unction!n4") == 70
    @test strlen("whyNcJH11thîôûãñõäëïöüÿçQFoQxwtest5ymb0lseukyickythefunnc") == 57
    @test strlen("strinifunctitsg") == 15
    @test strlen("44n") == 3
    @test strlen(" cJH1th1s 4         funthec    lwiiw1ths !nsampleto 1t\n") == 55
    @test strlen("    This is a           ") == 24
    @test strlen("    \n\nwwtes            ls   Th!s 1s 4 str1ng wtest5ymb0ls !n 1t\n ") == 65
    @test strlen("st1r1n") == 6
    @test strlen("fuwiw1thstricQukicknnc") == 22
    @test strlen("cJH1t1sh") == 8
    @test strlen("mThfGeeTebqorZJum5ymb0lsmtops") == 29
    @test strlen("wtestm5nTheymb0ls") == 17
    @test strlen("iTh!s") == 5
    @test strlen("This is a sample string    Thits is a sampl            eto string to test the func Theon       to test the function") == 115
    @test strlen("tion") == 4
    @test strlen("funtThis is a sample string    This is a sampl            eto string to test the func Theon               àèìòùáéíóúýâêîôûãñõäëïöüÿç       to test the functionhec") == 162
    @test strlen("Th!stàèìòùáöüÿço40ls !n 1t\n") == 27
    @test strlen("DëàèìòùhyNJcJõäëïÿçg") == 20
    @test strlen(" zPyWTI        functoion   ") == 27
    @test strlen("aOwtest5nymb0lsver") == 18
    @test strlen("QQFoTfuuniTxusample") == 19
    @test strlen("rstn1r1n") == 8
    @test strlen(" àèìòh  ") == 8
    @test strlen("     ") == 5
    @test strlen("123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789") == 99
    @test strlen("MNhqmCdV") == 8
    @test strlen("      The    ") == 13
    @test strlen("    1t  The    ") == 15
    @test strlen("MNhqmCV") == 7
    @test strlen("MNhqThe Quick Brown Fox Jumps Over The BrownLazy DogmCV") == 55
    @test strlen("1s") == 2
    @test strlen("sampLazyle") == 10
    @test strlen("ttest") == 5
    @test strlen("Lazy  ") == 6
    @test strlen("ThTis") == 5
    @test strlen("MN!nhqmCCdV") == 11
    @test strlen("MNhqThe") == 7
    @test strlen("  \r \n   ") == 8
    @test strlen("MNhqThe CQuick Brown Fox Jumps Over The BrownLazy DogmCV") == 56
    @test strlen("  \r \n  ") == 7
    @test strlen("BrownLazy") == 9
    @test strlen("samplse") == 7
    @test strlen("Lazy z ") == 7
    @test strlen("  \r \n\r  ") == 8
    @test strlen("TTBrownis") == 9
    @test strlen("àèìòõùáéíóúýâêîôûãñõäëïöüÿç") == 27
    @test strlen("MNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCV") == 57
    @test strlen("ThTi") == 4
    @test strlen("MNhqThe CQuick Brown Fox oJumps Over The BrownLazy DogmCV") == 57
    @test strlen("MNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCV\n") == 58
    @test strlen("MNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCV") == 59
    @test strlen("BBrownLazyLazy  ") == 16
    @test strlen("BrownsampBrownleLazy") == 20
    @test strlen("MNMNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCV\nhqmCV") == 65
    @test strlen("This is a sample strOvering to test the function") == 48
    @test strlen("MNhqThe CQuicJumpsk Brown Fox Jumps Over The BrownLazy DogmCV") == 61
    @test strlen("MNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sample string to test the function The BrownLazy DogmCV") == 105
    @test strlen("   \n\n   z") == 9
    @test strlen("  \r \n    ") == 9
    @test strlen("CQuick") == 6
    @test strlen("This is a sample strintog to test the function") == 46
    @test strlen("TTBrownis   ") == 12
    @test strlen("    1t 1 The    ") == 16
    @test strlen("testt") == 5
    @test strlen("    \n\n   ") == 9
    @test strlen("aa") == 2
    @test strlen("   This is a sample string to test the function\n\n   z") == 53
    @test strlen("BrownLazys") == 10
    @test strlen("ThT    1t 1 The    i") == 20
    @test strlen("BBrownLazyLazy") == 14
    @test strlen("GThT    1t 1 The    ic") == 22
    @test strlen("Th!s 1s 4 str1str1ngng w1th 5ymb0ls !n 1t") == 41
    @test strlen("RGTk") == 4
    @test strlen("MNhqTMNMNhqThehe") == 16
    @test strlen("CQuicJumpsk\r") == 12
    @test strlen("DogmVCVBBrownLazyLazy  ") == 23
    @test strlen("MNhqThe Quick Brown FoxJumps Over The BrownLazy DogmCV") == 54
    @test strlen("àèìòõùáéíóúýâêîôûãñõäëïöüÿçç") == 28
    @test strlen("BBrownLaazyLazy  ") == 17
    @test strlen("This is a sample strintog ton test the function") == 47
    @test strlen("BrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCVnsampBrownleLazy") == 79
    @test strlen("Lazy zThTi ") == 11
    @test strlen("MNhqThe CQuick Brown Fox oJutesttmps Over The BrownLazy DogmCV") == 62
    @test strlen("w1This is a sample sstrintog ton test the functiont") == 51
    @test strlen("    \n\n function  ") == 17
    @test strlen("   \r\n \n   ") == 10
    @test strlen("MNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sample string to test thCV") == 76
    @test strlen("Th!s 1s 4 sstr1str1ngng w1th 5ymb0ls !n 1t") == 42
    @test strlen("OverThisBBrownLaazyLazy  ") == 25
    @test strlen("  \r  \n   ") == 9
    @test strlen("BrowMNhqThe CQuick Brown Fstrintogwox Jumpes Over The BrownLazey DogmCVnsampBrownleLazy") == 87
    @test strlen("CQuicJstrOveringumpsk") == 21
    @test strlen("thCV") == 4
    @test strlen("Jumpes") == 6
    @test strlen("      1t  The    ") == 17
    @test strlen(" MNhqm CdV ") == 11
    @test strlen("MNhqThe CQuicJumpsk Brown Fox Jumps  OverThis is a sample string to test thCV") == 77
    @test strlen("ThhT    1t 1 The    i") == 21
    @test strlen("ThTTi") == 5
    @test strlen("Foxa") == 4
    @test strlen("Th!s 1s 4 str1ng w1th 5ymb0ls !n 1t Over The TTBrownisgmCV") == 58
    @test strlen("     str1ng 1t  The    This is a sampleOvering to test the function") == 67
    @test strlen("Th!s 1s 4 str1str1ngng w1th 5ymb0ls !n 1tBrownLazys") == 51
    @test strlen("BrownL  \r  \n   azys") == 19
    @test strlen("àèìòõ\nç") == 7
    @test strlen("BBrownLaazyLazy") == 15
    @test strlen("MNhqmCdCQuicJumpsk\r") == 19
    @test strlen("      The      ") == 15
    @test strlen("BBrownLMNhqThe CQuick BrMNhqThe Quick Brown Fox Jumps Over The BrownLazy DogmCVown Fox Jumpes Over The BrownLazy DogmCVaazyLazy  ") == 129
    @test strlen("BrLownL  \r  \n   azys") == 20
    @test strlen("OverThis") == 8
    @test strlen("     str1ng 1t  The    This is a samp leOvering to test the function") == 68
    @test strlen("   This is a sample string to test th e function\n\n   z") == 54
    @test strlen("This nction") == 11
    @test strlen("zThTi ") == 6
    @test strlen("BBrownLMNhqThehTTi") == 18
    @test strlen("Th!s 1s 4 str1str1ngng w1th 5ymb0ls !n 1tBrow") == 45
    @test strlen("MNhqThe CQuick Brown hFox Jumps Over The BrownLazy DogmCV") == 57
    @test strlen("oJutesttmps") == 11
    @test strlen("functont") == 8
    @test strlen("MNMNhqThe CQuick Brown Fox Jumpes OvewnLazy DogmCV\nhqmCV") == 56
    @test strlen("Fstrintogwox") == 12
    @test strlen("MNhqThe CQuicJumpsk BrowMNhqmn Fox Jumps OverThis  to test t") == 60
    @test strlen("ic") == 2
    @test strlen("MNhqThe CQuick Brown Fox oJutesttmps Oqver The BrownLazy DogmCV") == 63
    @test strlen("This sample string to      The     test the function") == 52
    @test strlen("DogmCVown  GThT ") == 16
    @test strlen("Th!s 1s 4 str1str1ngnsg w1th 5ymb0ls !n 1t") == 42
    @test strlen("Do      The    g") == 16
    @test strlen("\t\t\t") == 3
    @test strlen("    \n\n func!ntion  ") == 19
    @test strlen("te      1t  The    stt") == 22
    @test strlen("ThT     testt1t 1 The    i") == 26
    @test strlen("bUmvrK") == 6
    @test strlen("Tihis sample string to      The     test the function") == 53
    @test strlen("Th!s 1s 4 str1ng w1thTTBrownis    5ymb0ls !n 1t") == 47
    @test strlen("ThT") == 3
    @test strlen("r1ng") == 4
    @test strlen("leOvering") == 9
    @test strlen("te      1t  sThe    s tt") == 24
    @test strlen("ttV") == 3
    @test strlen("   This is a sample stringunction\n\n   z") == 39
    @test strlen("The The Lazy Dog") == 16
    @test strlen("MNhqThe CQuick Brown hFox Jumps Over The BrownLazy DoMNhqmCdCQuicJumpsk\rgmCV") == 76
    @test strlen("TThTi") == 5
    @test strlen("MNhq1TMNMNhqThehe") == 17
    @test strlen("      T he    ") == 14
    @test strlen("MNhqmC      The      ") == 21
    @test strlen("aaa") == 3
    @test strlen("BrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCVnsampBrownleLazyhTiTh!s 1s 4 str1ng w1th 5ymb0ls !n 1ts") == 118
    @test strlen("TTBrownisgmCV") == 13
    @test strlen("MNhqThe CQuicJumpsk Brown Foxstr1str1ngng Jumps OverThis is a sample string to test thCV") == 88
    @test strlen("leOvMNhqThe CQuick Brown Fox oJumps Over The BrownLazy DogmCVering") == 66
    @test strlen("ThT OverThisBBrownLaazyLazy   t1t 1 The    i") == 44
    @test strlen("MNhqThe CQuDogmCVnsampBrownleLazyick Brown Fox oJutesttmps Oqver The BrownLazy DogmCV") == 85
    @test strlen("BzyLazy") == 7
    @test strlen("MNhqThe CQuicJumpsk Brown Fox Jumpsw1This is a sample sstrintog ton test the functiont OverThis is a sample string to test the function The BrownLazy DogmCV") == 156
    @test strlen("ThT     testt1t 1 The    iMNhq1TMNMNhqThehe") == 43
    @test strlen("ThT    1sampLazylet 1 The    i") == 30
    @test strlen("s") == 1
    @test strlen("ThT     i") == 9
    @test strlen("  CdV  ") == 7
    @test strlen("\t\t\t\t") == 4
    @test strlen("àèìòùáéíBrMNhqTheóúýâêîôûãñõäëïöüÿç") == 35
    @test strlen("    \n\n !func!ntion  ") == 20
    @test strlen("    1t 1   ") == 11
    @test strlen("    1tBrownsampBrownleLazy 1   ") == 31
    @test strlen("tVhCV") == 5
    @test strlen("BBrownLaayLazy  ") == 16
    @test strlen("MNhqThe CQuick Brown Fox Jumpes OveJr The BrownLazy DogmCV") == 58
    @test strlen("BrownL") == 6
    @test strlen("BwBrownLazyLazy  ") == 17
    @test strlen("BwownLazyLazy  ") == 15
    @test strlen("TTBris   ") == 9
    @test strlen("      1t   The    ") == 18
    @test strlen("MNhqThe CQuick Brown Fox Jumps Over The BrownLaz   \n\n   zy DomgmCV") == 66
    @test strlen("Th!s 1sr 4 str1str1ngnsg w1th 5ymb0ls !n 1t") == 43
    @test strlen("ttVàèìòùáéíóúýâêîôûãñõäëïöüÿç") == 29
    @test strlen("MNhqThe CQuticJumpsk Brown Fox Jumps OverThis is a sample string to test thCV") == 77
    @test strlen("MNhqmCdCQuicJumpsk\rhqmCV") == 24
    @test strlen("DogmCVering") == 11
    @test strlen("OverThisBBrownLaazyLazy  \t\t\t") == 28
    @test strlen("MNhqThe CQuicJumpsk BBrownLazyLazyBrown Fox Jumps  OverThis is a sample string to test thCV") == 91
    @test strlen("   This is a sample strg to test t function\n\n   z") == 49
    @test strlen("MNe CQuick Brown Fox oJumps Over The BrownLazy DogmCV") == 53
    @test strlen("DogmCVerinDog") == 13
    @test strlen("JumbUmvrKpes") == 12
    @test strlen("BrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCLazy") == 66
    @test strlen("    1t 1 Thestring    ") == 22
    @test strlen("rstr1ng") == 7
    @test strlen("to   This is a sample string to test the function\n\n   z") == 55
    @test strlen("MNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sample string to test th e functionCdV The BrownLazy DogmCV") == 109
    @test strlen("BwownisLazyLazy  ") == 17
    @test strlen("ThT Th!s 1s 4 sstr1str1ngng w1th 5ymb0ls !n 1t   1t 1 The    i") == 62
    @test strlen("CQuicJumpskg\r") == 13
    @test strlen("s    \n\n !func!ntion  e") == 22
    @test strlen("aLLa zy z aa") == 12
    @test strlen("ThTMNei") == 7
    @test strlen("g") == 1
    @test strlen("MNhqThe CQuicJumpsk Browno Fox Jumps Over The BrownLazy DogmCV") == 62
    @test strlen("BrownsampBrownlMNhqThe CQuicJumpsk BBrownLazyLazyBrown Fox Jumps  OverThis is a sample string to test thCVeLazy") == 111
    @test strlen("thCVeLBrownLazazy") == 17
    @test strlen("JuTTBrownismbUmvrKpes") == 21
    @test strlen("CQuDogmCVnsampBrownleLazyick") == 28
    @test strlen("Th1tBrownsampBrownleLazy!s 1s 4 str1str1ngng w1th 5ymb0ls !n 1tBrownLazys") == 73
    @test strlen("samp") == 4
    @test strlen("rrstr1ng") == 8
    @test strlen("Th!s 1s 4 str1ng w1th 5ymb0ls !n 1t Over The TrownisgmCV") == 56
    @test strlen("Th!s 1s 4 str1ng w1th 5ymb0ls !n 1testt1tt Over The TBrowMNhqmnrownisgmCV") == 73
    @test strlen("Brow") == 4
    @test strlen("àèìòõùáéíóúýâêîôûãñõäëïöüÿ") == 26
    @test strlen("MNhqThe CQuick Brown hFox Jumps OveMNhqThe CQuicJumpsk Brown Fox Jumps  OverThis is a sample string to test thCVr The BrownLazy DoMNhqmCdCQuicJumpsk\rgmCV") == 153
    @test strlen("bUmv") == 4
    @test strlen("  \rLazy \n\r  ") == 12
    @test strlen("stri     ntog") == 13
    @test strlen("Th!s 1s 4 str1ng w1thTTBrownis    55ymb0ls !n 1t") == 48
    @test strlen("teestt") == 6
    @test strlen("MNhqThBrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCLazyk BrowMNhqmn Fox Jumps OverThis  to test t") == 114
    @test strlen("tetest") == 6
    @test strlen("  t     ") == 8
    @test strlen("OverThisBBrownLaazLazy  ") == 24
    @test strlen("DogmCLazyk") == 10
    @test strlen("Thi") == 3
    @test strlen("MNhqThe CQuDogmCVnsampBrownleLazyick Brown Fox oJutesttmps OqveThT     testt1t 1 The    iMNhq1TMNMNhqTheher The BrownLazy DogmCV") == 128
    @test strlen("aaaaa") == 5
    @test strlen(" Th!s 1s 4 str1ng w1th 5ymb0ls !n 1t Over The TTBrownisgmCV") == 59
    @test strlen("Th!s 1s 4 str1ng w1th 5ymb0ls !n 1testt1tt Over The TBrowMNhqmnrownisgmCVstrC1ng") == 80
    @test strlen("    1tBrownsampBrownleLazy 1   \t") == 32
    @test strlen("Tntoghis") == 8
    @test strlen("functontMNhqThe CQuDogmCVnsampBrownleLazyick Brown Fox oJutesttmps OqveThT     testt1t 1 The    iMNhq1TMNMNhqTheher The BrownLazy DogmCV") == 136
    @test strlen("1CQuicJstrOveringumpskt") == 23
    @test strlen("JumJp") == 5
    @test strlen("  \rLazy \n\r Th!s 1s 4 str1ng w1th 5ymb0ls !n 1testt1tt Over The TBrowMNhqmnrownisgmCVstrC1ng 1s") == 94
    @test strlen("BBroownLazyLazy") == 15
    @test strlen("s    \n\n !fu55ymb0lsnc!ntion  e") == 30
    @test strlen("tVtV") == 4
    @test strlen("MNhqmCdCV") == 9
    @test strlen("oMNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sample string to test thCV") == 77
    @test strlen("MNhqThe CuQuicJumpsk Brown Foxstr1str1ngng Jumps OverThis is a sample string to test thCV") == 89
    @test strlen("RDogmCLazyGGTk") == 14
    @test strlen("Th!s 1s 4 str1ng w1th 5ymb0ls !n 1testMNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCVt1tt Over The TBrowMNhqmnrownisgmCV") == 130
    @test strlen("MNhqThe CQu\t\t\tick Brown func!ntionFox oJutesttmps Over The BrownLazy DogmCV") == 75
    @test strlen("This is ao sample starintog ton test the function") == 49
    @test strlen("MNhqThe\t\t") == 9
    @test strlen("to   Thihs is a sa\nmple string to test the function\n\n   z") == 57
    @test strlen("FstrintoBrLownLgwox") == 19
    @test strlen("ttVàèìòùáéíóúýâêîôûãñõäëïìöüÿç") == 30
    @test strlen("BwownLazyLazy") == 13
    @test strlen("BrowwnL") == 7
    @test strlen("Th!s") == 4
    @test strlen("MNhqThe CQuick Brown hFox Jumps Over The BrownLazy DoMNhThis is a sample strintog to test the function\rgmCV") == 107
    @test strlen("MNMNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCV\nhCV") == 63
    @test strlen("MNhqThBrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCLazyk BrowMNhqmn Fox Jumps OverThis  to tehst t") == 115
    @test strlen("MNMNhqThe CQuick Brown Fox JumpBrownL  \r  \n   azyses Over The BrownLazy DogmCV\nhCV") == 82
    @test strlen("MNhqThe CQuick Brown Fox Jumpes OveJr The BrownLazy DogmBrownCV") == 63
    @test strlen("r1g") == 3
    @test strlen("UcBwownisLazyLazy  ") == 19
    @test strlen("UcBwDomgmCVownisLazyLazy  ") == 26
    @test strlen("MNhqThe C Quick Brown Fox Jumps Over The BrownLazy DogmCV") == 57
    @test strlen("BrownL  tt\r  \n   azys") == 21
    @test strlen("stCQuicJstrOveringumpskt") == 24
    @test strlen("LaOverThisBBrownLaazyLazy  \t\t\tzy  ") == 34
    @test strlen("TTBr ownis   ") == 13
    @test strlen("aLLa zy z a") == 11
    @test strlen("This is ao sample starintog ton test the n") == 42
    @test strlen("      1t  T") == 11
    @test strlen("     str1ng 1t  The    This is a samThT    1sampLazylet 1 The    ipleOvering to test the function") == 97
    @test strlen("TTBrownnnis   ") == 14
    @test strlen("    1tBrownsampBrownleLazy B1   \t") == 33
    @test strlen("functBwownisLazyLazy  ion") == 25
    @test strlen("MNhqThe C Quick Brown Fox zy DogmCV") == 35
    @test strlen("ickk") == 4
    @test strlen("BrozwnLazys") == 11
    @test strlen("This i s a sample strintog to test the hfuncti on") == 49
    @test strlen("1tBrownLazys") == 12
    @test strlen("z") == 1
    @test strlen("Lazyy z ") == 8
    @test strlen("BBrownLLazyLazy  ") == 17
    @test strlen("stCQuicMNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCVstrOveringumpskt") == 80
    @test strlen("i") == 1
    @test strlen("CQuDogmCVnsampBrownfunctBwownisLazyLazy") == 39
    @test strlen("aLLaa zz aa") == 11
    @test strlen("UcBwDomgmCVownisLazyLazy") == 24
    @test strlen("DogmCLazy") == 9
    @test strlen("BrownLazMNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sample string to test th e functionCdV The BrownLazy DogmCVys") == 119
    @test strlen("1testt1tt") == 9
    @test strlen("sThe") == 4
    @test strlen("MNhqThe C Quic   k Brown FTh!s 1s 4 str1ng w1th 5ymb0ls !n 1testMNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCVt1tt Over The TBrowMNhqmnrownisgmCVox Jumps Over TheC BrownLazy DogmCV") == 191
    @test strlen("Jumpsw1This") == 11
    @test strlen("QGLWea") == 6
    @test strlen("1testt1t") == 8
    @test strlen("CCQuicJumpsk") == 12
    @test strlen("MNhqmThTis  ") == 12
    @test strlen("This is a sample strintog to tesMNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sample string to test the function The BrownLazy DogmCVt the function") == 151
    @test strlen("   This is a sampleT stringunction\n\n   z") == 40
    @test strlen("aLLa zyz z a") == 12
    @test strlen("nction") == 6
    @test strlen("TBrowMNhqmnrownisgmCV") == 21
    @test strlen("DogmC    \n\n func!ntion  Lazyk") == 29
    @test strlen("BryownLazys") == 11
    @test strlen("ThTiTi") == 6
    @test strlen("TMNhqmCVhis is ao sample starintog ton test the n") == 49
    @test strlen("     str1ng 1t  The    This is a samThT    1sampLazylet 1 The  MNhqThe CuQuicJumpsk Brown Fo    \n\n   xstr1str1ngng Jumps OverThis is a sample string to test thCVt the function") == 175
    @test strlen("ntog") == 4
    @test strlen("hCV") == 3
    @test strlen("Th!s 1s 4Cr1ngng w1th 5ymb0ls !n 1t") == 35
    @test strlen("ThT OverThisBBrownLaazyLazy   t1DomgmCV  i") == 42
    @test strlen("  \r  \n   àèì t   1t  The    òõùáéíóúýâêîôûãñõäëïöüÿ") == 51
    @test strlen("samplsme") == 8
    @test strlen("on") == 2
    @test strlen("ThT     ttestt1t 1 TBrownLazyhe    i") == 36
    @test strlen("sasmplsme") == 9
    @test strlen("\n\n\n") == 3
    @test strlen("CQuticJumpsk") == 12
    @test strlen("OqvveThT") == 8
    @test strlen("functontMNhqThLe CQuDogmCVnsampBrownleLazyick Brown Fox oJutesttmps OqveThT     testt1t 1 The    iMNhq1TMNMNhqTheher The BrownLazy DàèìòùáéíBrMNhqTheóúýâêîôûãñõäëïöüÿçogmCV") == 172
    @test strlen("C") == 1
    @test strlen("sTe") == 3
    @test strlen("w1thTTBrownis") == 13
    @test strlen("    samThT ") == 11
    @test strlen("CQuicJumpskg") == 12
    @test strlen("CQuicJumpskg\r\r") == 14
    @test strlen("!func!ontion") == 12
    @test strlen("MNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sample string to test thhe function The BrownLazy DogmCV") == 106
    @test strlen("Jumpsw1Tntoghiss") == 16
    @test strlen("BBrownLaayLazy") == 14
    @test strlen("saasmplsme") == 10
    @test strlen("MNhqThe Quick Brown Fox Jumps Over The BrownLazy DogmCrV") == 56
    @test strlen("1seampLazyleat") == 14
    @test strlen("ThhT") == 4
    @test strlen("    1t 1 The    aaaaa") == 21
    @test strlen("BrownLazMNhqThe CQuicJumpsk Brown Fox Jumps OverThis is a sastr1str1ngnsgmple string to test th e functionCdV The BrownLazy DogmCVys") == 132
    @test strlen("MNhqThe CQuick Brown hFox Jumps Over The BrownLazy DoMNhThis is a sample strintoTh!s 1s 4 str1ng w1th 5ymb0ls !n 1testMNhqThe CQuick Brown Fox Jumpes Over The BrownLazy DogmCVt1tt Over The TBrowMNhqmnrownisgmCVg to test the function\rgmCV") == 237
    @test strlen("GThT    1t 1 The CuQuicJumpsk   ic") == 34
    @test strlen("      The     ") == 14
    @test strlen("BBrownLaayLazystringunction") == 27
    @test strlen("UcBwDnomgmCVownisLazyLazy") == 25
    @test strlen("BBrownLaayLazystrizngunction") == 28
    @test strlen("BrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCVnsampBrownleLaLazy z zyhTiTh!s 1s 4 str1ng w1th 5ymb0ls !n 1ts") == 125
    @test strlen("zz") == 2
    @test strlen("w  CdV  1This is a sample sstrintogt ton test the functiont") == 59
    @test strlen("qygh") == 4
    @test strlen("BrowMNhqThe CQuick Brown Fstrintogwox Jumpes Over The BrownLazuey DogmCVnsampBrownleLazy") == 88
    @test strlen("TheC") == 4
    @test strlen("    1t 1  The    ") == 17
    @test strlen("  te      1t  sThe    s tt\r \n\r Foxstr1str1ngng") == 46
    @test strlen("DogmCV") == 6
    @test strlen("OverTh") == 6
    @test strlen("   ThiBrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCLazys is a sample string to test th e function\n\n   z") == 120
    @test strlen("     str1ng 1t  The    This is a samThT    1sampLazylet i1 The  MNhqThe CuQuicJumpBsk Brown Fo    \n\n   xstr1str1ngng Jumps OverThis is a sample string to test thCVt the function") == 177
    @test strlen("Th!s 1s 4 str1str1 1t") == 21
    @test strlen("nctoion") == 7
    @test strlen("TTBrown") == 7
    @test strlen("BBroownLaaLLa zy z aazyLazy") == 27
    @test strlen("str1g") == 5
    @test strlen("MNhqThBrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCLazyk BrowMNhqmn Fox Jumps OverThis  to ytehst t") == 116
    @test strlen("BrowMNhqThe CQuick Brown Fstrintogwox Jumpes Over zy") == 52
    @test strlen("    1t  Theion    ") == 18
    @test strlen("TTBrownis    ") == 13
    @test strlen("MNhqm") == 5
    @test strlen("   ThiBrowMNhqThe CQuick FoxJumpsBrown Fwox Jumpes Over The BrownLazey DogmCLazys is a sample string to test th e function\n\n   z") == 128
    @test strlen("Th!s 1s 4 str1ng w1th 5ymb0ls !nw 1testt1tt Over The TBrowMNhqmnrownisgmCV") == 74
    @test strlen("JumbstringunctionUmvrKpes") == 25
    @test strlen("Lazy ") == 5
    @test strlen("BwownLazyaLa zy  ") == 17
    @test strlen("CCQuicJumt1DomgmCVpsk") == 21
    @test strlen("Jumpsw1TntoghiTTBrisss") == 22
    @test strlen("BrownL  tt\r  \n   aCQuDogmCVnsampBrownleLazyickzys") == 49
    @test strlen("UrK") == 3
    @test strlen("BBrownLaayLazystringunctionn") == 28
    @test strlen("VhCV") == 4
    @test strlen("CQuicJstrOveJringumpsk") == 22
    @test strlen("MNhqThe CQuick Brown hFox Jumps OcveMNhqThe CQuicJumpsk Brown Fox Jumps  OverThis is a sample string to test thCVr The BrownLazy DoMNhqmCdCQuicJumpsk\rgmCV") == 154
    @test strlen("BrowMNhqThe CQuick Brown Fwox Jumpes Over The BrownLazey DogmCVnsampBrownleLaLazy z zyhTiTh!s 1s 4 str1ng w1th 5ymb0ls !n 1tsrrstr1ng") == 133
    @test strlen("OverThisBBrownLaazyLazy") == 23
    @test strlen("aCQuDogmCVnsampBrownleLazyickzys") == 32
    @test strlen("UcBwownisLazzyz ") == 16
    @test strlen("iii") == 3
    @test strlen("s    \n\n !func!ntio    \n\n func!ntion  n  e") == 41
    @test strlen("Th!s 1s 4 str1sMNhqmtr1 1t") == 26
    @test strlen("testVhCVtt") == 10
    @test strlen("DogmCVBrownsampBrownlMNhqThensampBrownleLazy") == 44
    @test strlen("  te      1t  sThe    s tt\r \n1\r Foxstr1str1ngng") == 47
    @test strlen("MNhqThe Quick BrowTBrowMNhqmnrownisgmCVgn FoxJumpws Over The BrownLazy DogmCV") == 77
    @test strlen("Th!s 1s 4 str1str1ngng w1th 5ymb0lDogmVCVBBrownLazyLazy  s !n 1tBrow") == 68
    @test strlen("Ju   This is a sampleT stringunction\n\n   zTTBrownismbUmvrKpes") == 61
    @test strlen("ç") == 1
    @test strlen("TBrowMNhqmnrownisgmCVstrC1ng") == 28
    @test strlen("   This is a sample strinazysgunction\n\n   z") == 43
    @test strlen("aLLa") == 4
    @test strlen("Th!s 1s 4s str1str1ngng w1th 5ymb0ls !n 1tBrow") == 46
    @test strlen("BrownLazuey") == 11
    @test strlen("MNhqThe CQugicJumpsk Brown Foxstr1str1ngng Jumps OverThis is a sample string to test thCV") == 89
    @test strlen("\nzTTBrownismbUmvrKpesBrMNhqThe\nTh!s 1s 4 str1str1ngng w1th 5ymb0lDogmVCVBBrownLazyLazy  s !n 1tBrow\n") == 100
    @test strlen("LaOverThissBBrownLaazyLazy  \t\t\tzy  ") == 35
    @test strlen("stCQuicJstrOveringumpsktoJutesttmps") == 35
    @test strlen("tstr1g") == 6
    @test strlen("Th!s 1s !4 str1str1ngnsg w1th 5ymb0ls !n 1t") == 43
    @test strlen("leOvMNhqThe CQuick Brown Fox oJumps Ovepr The BrownLazy DogmCVering") == 67
    @test strlen("CQuck") == 5
    @test strlen("aLaLBrowTBrowMNhqmnrownisgmCVgna") == 32
    @test strlen("thThT OaverThisBBrownLaazyLazye   t1t 1 The    iCVeLBrownLazazy") == 63
    @test strlen("BBrownLLazyLazy") == 15
    @test strlen("Th!s 1s w1This is a sample sstrintog ton test the functiont4 str1str1ngng w1th 5ymb0ls !n 1t") == 92
    @test strlen(" Th!s 1s 4 str1ng w1thn 5ymb0ls !n 1t Over The TTBrownisgmCV") == 60
    @test strlen("testtt") == 6
    @test strlen("aLLaa zz aaick") == 14
    @test strlen("DogmCrV") == 7
    @test strlen("hThT     testt1t 1 The    iMNhq1TMNMNhqThehe") == 44
    @test strlen("         The     ") == 17
end
