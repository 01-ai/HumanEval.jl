@testitem "054_same_chars_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "054_same_chars.jl"))
    @test same_chars("ab","cd") == false
    @test same_chars("abcd","cbad") == true
    @test same_chars("aaa","aaa") == true
    @test same_chars("abc","def") == false
    @test same_chars("aaabbbccc","abbabcbc") == true
    @test same_chars("abcdefg","gfedcba") == true
    @test same_chars("abbcccddddeeeee","abcde") == true
    @test same_chars("12345","54321") == true
    @test same_chars("hello","world") == false
    @test same_chars("","") == true
    @test same_chars("524321","5432") == false
    @test same_chars("cdcd","") == false
    @test same_chars("aaabbbccc","abbbabcbc") == true
    @test same_chars("abbabcbc","abc") == true
    @test same_chars("123445","54321") == true
    @test same_chars("hoelldefo","helldefo") == true
    @test same_chars("aaabbbccc","world") == false
    @test same_chars("adbbcccddddeeeeehelldefo","abcde") == false
    @test same_chars("abcde","abcde") == true
    @test same_chars("abecde","abecde") == true
    @test same_chars("5432cababecdead","cababecdead") == false
    @test same_chars("5432cababecdead","5432cababecdead") == true
    @test same_chars("5432caaaababecdead","5432cababecdead") == true
    @test same_chars("ab54321fg","gfedcba") == false
    @test same_chars("aaa1234a5bbbccc","aaa1234a5bbbccc") == true
    @test same_chars("123445","514321") == true
    @test same_chars("5432caaaabacababecdeadbecdead","5432cababecdead") == true
    @test same_chars("ab","cbad") == false
    @test same_chars("abcdegfedcba","abcdegfedcba") == true
    @test same_chars("5432","cdcd5432") == false
    @test same_chars("543543221","abcdeadbbcccddddeeeeehelldefogfedcba") == false
    @test same_chars("5432caaaabacaabcd","abcd") == false
    @test same_chars("abbcccddddeeeee","") == false
    @test same_chars("123445","5143241") == true
    @test same_chars("5432caaaabacaababbcccddddeeeeecd","abcd") == false
    @test same_chars("llo","helleo") == false
    @test same_chars("123445","") == false
    @test same_chars("abcdcb5143241a514321de","abcdcbadcbade") == false
    @test same_chars("abcd","aabcdbcd") == true
    @test same_chars("abcdegfedcba","aabcdegfedcba") == true
    @test same_chars("abcdeadbbcccddddeeeeehelldefogfedcba","54321") == false
    @test same_chars("abcdeadbbcccddddeeeeehelabdcba","54321") == false
    @test same_chars("cdcd","ccd5143241cd") == false
    @test same_chars("aab","cd") == false
    @test same_chars("aabcdefgb","12345") == false
    @test same_chars("abbbabcbc","1234545") == false
    @test same_chars("5432","abcdegfedcba") == false
    @test same_chars("aabcdefgb","aaa") == false
    @test same_chars("abcc","def") == false
    @test same_chars("54342","5432") == true
    @test same_chars("5432caaaabacababecdeadbecdead","5432cababecdaabcdefgbead") == false
    @test same_chars("llohelldefo","llo") == false
    @test same_chars("abcdcb5143241a514321db","cd") == false
    @test same_chars("5432caaaabacaababbcccddddeeeeecd","abcabcdcb5143241a514321db") == false
    @test same_chars("5432","cababecdead") == false
    @test same_chars("abbhelleoc","abbhelleoc") == true
    @test same_chars("cdcd","cdcd") == true
    @test same_chars("aab","123") == false
    @test same_chars("5432caaaabacaababbcccddddeeeeecd","cabcd") == false
    @test same_chars("abcdcbadcbade","aabcdefgb") == false
    @test same_chars("5432caaaababecdead","aabcdbcd") == false
    @test same_chars("aaa","aaaa") == true
    @test same_chars("abcdegfedcba","5432") == false
    @test same_chars("5432caaaabacaababbcccddddeeeeecd","abbabcbc") == false
    @test same_chars("abcdeadbbcccabcdeadbbcccddddeeeeehelabdcbaa","abcdeadbbcccddddeeeeehelldefogfedcba") == false
    @test same_chars("aabcdcbadcbade","aabcdefgb") == false
    @test same_chars("llaaa1234a5bbbccco","llo") == false
    @test same_chars("aaabbbccc","a5432caaaabacababecdeadbecdeadbabcbc") == false
    @test same_chars("abcdcb5143241a514321de","abcdeadbbcccddddeeeeehelabdcbabecde") == false
    @test same_chars("abde","abcde") == false
    @test same_chars("54321","helldefo") == false
    @test same_chars("5432caaaababecdead","5432c3ababecdead") == true
    @test same_chars("abcdcb5143241a514321de","54321") == false
    @test same_chars("123454","1234545") == true
    @test same_chars("cabbhelleoc","ableoc") == false
    @test same_chars("aabcdefgbcdeadbbcccabcdeadbbcccddddee5432caaaabacaabcdehelabdcbaa","abcdeadbbcccabcdeadbbcccddddeeeeehelabdcbaa") == false
    @test same_chars("abbbcabcbc","1234545") == false
    @test same_chars("abc","abc") == true
    @test same_chars("54321","abcdeadbbcccddddeeeeehefogfedcba") == false
    @test same_chars("5432caaaabacaabcd","cabcd") == false
    @test same_chars("cabeoc","cabbhelldefeoc") == false
    @test same_chars("5432caaaabacaababbcccddddeeeeecd","cabc") == false
    @test same_chars("abaabde","a5432caaaabacababecdeadbecdeadbabcbc") == false
    @test same_chars("hlello","hlello") == true
    @test same_chars("5432caaaabacababecdeaadbecdead","5432cababecdead") == true
    @test same_chars("abbbabcbc54321","abbbabcbc") == false
    @test same_chars("5432cabecdead","5432cababecdead") == true
    @test same_chars("123abde45","54321") == false
    @test same_chars("5c432cababecdea","5c4aabcdcbadcbade32cababecdead") == true
    @test same_chars("abcabcdcb514324aaa1a514321db","abcabcdcb5143241a514321db") == true
    @test same_chars("5432caaaabacaababhoelldefobcccddddeeeeecd","abbaabbbabcbcbcbc") == false
    @test same_chars("544cbaaaa1234a5bbbcccd32","544cbad32") == false
    @test same_chars("abcdcbadcbade","abbc") == false
    @test same_chars("aaabbbccdcd5432cc","abbabcbc") == false
    @test same_chars("aabcdbcd","hlello") == false
    @test same_chars("cd","abcd") == false
    @test same_chars("abbbabcbc","1234123445545") == false
    @test same_chars("abcdeadbbcccddddeeeeehelldefogfedcba","abbhelleoc") == false
    @test same_chars("babbabcbc","5432") == false
    @test same_chars("abcdeadbbcccaebcdeadbbcccddddeeeeehelabdcbaaa","aabcdefgbcdeadbbcccabcdeadbbcccddddee5432caaaabacaabcdehelabdcbaa") == false
    @test same_chars("aaaaaeeeiou","iaueoaiueiiaaa") == true
    @test same_chars("abcdefghijklmnopqrstuvwxyz","abcdefghijklmnopqrstuvwxyz") == true
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","bbbbbbbbaaaaaaaaaaaaaaaaaaaaa") == true
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("Hello, World!","lohedrWl!o ,") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("1234567890","0987654321") == true
    @test same_chars("tacocat","cattaco") == true
    @test same_chars("may the force be with you","The Force Is Strong With You") == false
    @test same_chars("abcdefghijklmnopqrstuvwxyz","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("gazelle!","The Force Is Strong With You") == false
    @test same_chars("beabcdefghijklmnopqrstuvwxyz","abcdefghijklmnopqrstuvwxyz") == true
    @test same_chars("tacocspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat","tacocspecterat") == false
    @test same_chars("gazelle!","The Force Is Sthrong With You") == false
    @test same_chars("Amaze","The hquick brown fox jumps over the lazy dog") == false
    @test same_chars("0987654321","0987654321") == true
    @test same_chars("you","cattaco") == false
    @test same_chars("1234567890","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("foStrongrce","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("may","0987654321") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","Tbrown fox jumps over the lazy dog") == false
    @test same_chars("gaz!elle!","gazelle!") == true
    @test same_chars("may","of") == false
    @test same_chars("Sthrong","0987654321") == false
    @test same_chars("12345lohedrWl!o ,67890","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("0987654321","foStrongrce") == false
    @test same_chars("God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("abcdefghijknopqrstuvwxyz","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("tacocat","cattlohedrWl!oco") == false
    @test same_chars("12345lohedrWl!o ,67890","12345lohedrWl!o ,67890") == true
    @test same_chars("12345lohedrWl!o","The Force Is Strong With You") == false
    @test same_chars("tacocspeGod!e","tacocspeGod!e") == true
    @test same_chars("specter","habcddogefghijklmnopqrstuvwxyz") == false
    @test same_chars("specterSthrong","0987654The quick brown fox jumps over the lazy dog21") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","cattaco") == false
    @test same_chars("you","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZWitheZeZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("wSthrongith","cat") == false
    @test same_chars("may the force be wiaueoaiueiiaaaith you","The Force Is Strong With You") == false
    @test same_chars("gaze!","gaze!") == true
    @test same_chars("The quick brown fox jumps over the lazy dog","Tbrown fox jumps ovenr the lazy dog") == false
    @test same_chars("gaze!","tacocspecteThe Force Is Sthrong With Yourat") == false
    @test same_chars("may the force be with","The Force Is Strong With You") == false
    @test same_chars("caattacco","caattaco") == true
    @test same_chars("mayy","jumps") == false
    @test same_chars("1234567890","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("tacocspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat","tacocspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat") == true
    @test same_chars("mayy","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("dazzling","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("0987654321","ovenr098765432gazelle!") == false
    @test same_chars("Amaze","Amaze") == true
    @test same_chars("with","bbbbbbbbaaaaaaaaaaaaaaaaaaaaa") == false
    @test same_chars("cattlohedrWl!gaze!oco","cattlohedrWl!oco") == false
    @test same_chars("abcdefghijknopqrstuv0987654321wxyz","abcgorgeous,defghijknopqrstuv0987654321wxyz") == false
    @test same_chars("abcdefghijklmnoprqrstuvwxyz","abcdefghijklmnopqrstuvwxyz") == true
    @test same_chars("12345678gorgeous,90","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("The Force Is Sttrong With You","The Force Is Strong With You") == true
    @test same_chars("1234567890","abcdefghijklmnopqrstuvyz") == false
    @test same_chars("1234567890","1234567890") == true
    @test same_chars("ovenr098765432gazelle!","ovenr098765432gazelle!") == true
    @test same_chars("09876543221","0987654321") == true
    @test same_chars("abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("tacocspecterat","tacocspecterat") == true
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeeZeZeZeZeZeZeZeZeZeZe","cattaco") == false
    @test same_chars("force","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("Amaze","0987654The quick brown fox jumps over the lazy dog21") == false
    @test same_chars("m","of") == false
    @test same_chars("foStrongrce","you") == false
    @test same_chars("Tbrown fox jumps ovenr the lazy dog","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("cattlohedrWl!gaze!oco","bbbbbbbbaaaaaaaaaaaaaaaaaaaaaa") == false
    @test same_chars("12345lohedrWl!o ,678090","12345lohedrWl!o ,67890") == true
    @test same_chars("abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","abcdefghijklmnopqrrstuvwxyz") == false
    @test same_chars("Hello,","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("abcdefghiGod! Amaze a sltunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","abcdefghiGod! Amaze a sltunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz") == true
    @test same_chars("abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","gaze!") == false
    @test same_chars("The Force Is Sttrong With You","The Force Is Sttrong With You") == true
    @test same_chars("mayy","jpumps") == false
    @test same_chars("12345lohedr!Wl!o ,678090","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("12345lohedrWl!o","The Force Is Strongabcdefghijknopqrstuvwxyz With You") == false
    @test same_chars("God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == true
    @test same_chars("abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz") == true
    @test same_chars("sltunning,","sltunning,") == true
    @test same_chars("ZYXWVUTSMRQPONMLKJIHGFEDCBA","abcdefghijknopqrstuvwxyz") == false
    @test same_chars("with","The Force Is Strongabcdefghijknopqrstuvwxyz With You") == false
    @test same_chars("sltunning,","sltnning,") == false
    @test same_chars("abcdefghuijknopqrstuvwxyz","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("aaaaaeeeiou","aaaaaeeeiou") == true
    @test same_chars("taocat","tacocat") == true
    @test same_chars("iaueoaiueiiaaa","The quick brown fox jumps ove the lazy dog") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!","God! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("122345678990","12345678990") == true
    @test same_chars("bewitching,","0987654321") == false
    @test same_chars("Tbrown fox jumps ovenr the lazy dog","dog21") == false
    @test same_chars("throng","0987654321") == false
    @test same_chars("catttaco","The Forceabcgorgeous,defghijknopqrstuv0987654321wxyz Is Strongabcdefghijknoxyz With You") == false
    @test same_chars("tacocat","tacocat") == true
    @test same_chars("12345cat678990","12345678990") == false
    @test same_chars("dog21","dog21") == true
    @test same_chars("catttaco","tacocspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat") == false
    @test same_chars("ZYXWVUTSMRQPONMLKJIGHGFEDCBA","ZYXWVUTSMRQPONMLKJIGHGFEDCBA") == true
    @test same_chars("caattaco","12345lostunning,hedrWl!o ,67890") == false
    @test same_chars("Tbrown fox jumps over the lazy dog","Tbrown fox jumps over the lazy dog") == true
    @test same_chars("dog","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("","the") == false
    @test same_chars("ZYXWVUTSMRQPONMLKJIHGFEDCBA","ZYXWVUTSMRQPONMLKJIHGFStrongabcdefghijknopqrstuvwxyzCBA") == false
    @test same_chars("12o345lohedrWl!o","The Force Is Strongabcdefghijknopqrstuvwxyz With You") == false
    @test same_chars("mayyy","jumps") == false
    @test same_chars("ttolohedrWl!oco","ttlohedrWl!oco") == true
    @test same_chars("taoocat","tacocat") == true
    @test same_chars("m","0987654The quick brown fox jumps over the lazy dog21") == false
    @test same_chars("abcdefghijklmnoprqrstuvwxyz","tacocspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat") == false
    @test same_chars("Sttrong","ZYXWVUTSMRQPONMLKJIGHGFEDCBA") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","Tbrown fox jumps over the lazyx dog") == false
    @test same_chars("sltnning,","sltunni") == false
    @test same_chars("foxdazzling","abcdefghijklmnouvwxyz") == false
    @test same_chars("tacocspecterat","tacocspeabcdefghiGod! Amaze a sltunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz") == false
    @test same_chars("gazelle!","gazellze!") == true
    @test same_chars("12345You678990","122345678990") == false
    @test same_chars("ZYXWVUTSRQPONMLKJIHGFEDCBA","ZYXWVUTSRQPONMLKJIHGFEDCBA") == true
    @test same_chars("cat","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("mayy","God! Amaze a stunning, g orgeous, bewitching, and dazzling specter of my gtdear gazelle!") == false
    @test same_chars("Tbrown fox jumgps over the lazy dogcattlohedrWl!oco","tacocat") == false
    @test same_chars("The hquick brown fox jumps over the lazy dog","The hquick brown fox jumps over the lazy dog") == true
    @test same_chars("12345lohedrWl!o ,67890","abcdefghijklmnuvwxyz") == false
    @test same_chars("forrce","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("God!","God!") == true
    @test same_chars("ZYXWVUTSMRQPONMLKJIHGFStrongabcdefghijknopqrstuvwxytacocatA","ZYXWVUTSMRQPONMLKJIHGFStrongabcdefghijknopqrstuvwxyzCBA") == false
    @test same_chars("cattlohedrWl!gaze!oco","Sttrong") == false
    @test same_chars("e quick brown fox jum0987654321azy dog","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("mayy","mayy") == true
    @test same_chars("tacocspecterat","The Force Is Strong With You") == false
    @test same_chars("The quick brown fox jumps ovve the lazy dog","The quick brown fox jumps ove the lazy dog") == true
    @test same_chars("may the force hbe with you","The Force Is Strong Wth You") == false
    @test same_chars("The Force Is Stronfoxg With You","The Force Is Strong With You") == false
    @test same_chars("foStrongrce","theyou") == false
    @test same_chars("of","The") == false
    @test same_chars("thrtong","abcdefghijklmnopqrrstuvwxyz") == false
    @test same_chars("dog121","dog21") == true
    @test same_chars("cattlohedrWl!gaze!oco","cattlohedrWl!oo") == false
    @test same_chars("abcdefghijknopqrstuv0987654321wxyz","dog121") == false
    @test same_chars("foStrGod! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!ongrce","theyou") == false
    @test same_chars("caattaco","123o45lostunning9,hedrWl!o ,67890") == false
    @test same_chars("1234r5Hello,lohedrWl!o ,678090","1234r5lohedrWl!o ,678090") == false
    @test same_chars("aaaaaeeeiou","Sthrong") == false
    @test same_chars("may","God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!") == false
    @test same_chars("The quick brown fox jumps ovve the lazy dog","The quick brown fox jumps ovve the lazy dog") == true
    @test same_chars("abcdefghiGod! Amaze a stunning, abcdefghijklmnoprqrstuvwxyzgorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz") == false
    @test same_chars("tacocspecteratabcdefghijklmnoprqrstuvwxyz4321","0987654321") == false
    @test same_chars("Ztacocspecteratabcdefghijklmnoprqrstuvwxyz4321YXWVUTSMRQPONMLKJIHGFStrongabcdefghijknopqrstuvwxyzCBA","God!") == false
    @test same_chars("foStron1234r5Hello,lohedrW12345lohedr!Wl!o ,678090l!ogrce","foStrongrce") == false
    @test same_chars("gorgeous,!","oStrongre") == false
    @test same_chars("orgeous,","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == true
    @test same_chars("09876543221","tacocspecterat") == false
    @test same_chars("0987654The quick brown fox jumps over the lazy dog21","of") == false
    @test same_chars("cat","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("gazelle!","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!","abcdefghiGod! Amaze a sltunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz") == false
    @test same_chars("mayyy","12o345lohedrWl!o") == false
    @test same_chars("abcdfefghiGod!","abcdfefghiGod!") == true
    @test same_chars("specter","force") == false
    @test same_chars("The hqudazThebStrongabcdefghijknoxyzrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do") == false
    @test same_chars("12345567890","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("cattlohedrWl!oco","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("The quick brown fox jumps ovve the lazy dog","cat") == false
    @test same_chars("habcddogefghijklmnopqrstuvwxyz","Hello, World!") == false
    @test same_chars("ZYXWVUTSMRQPONMLKjumpsCBA","ZYXWVUTSMRQPONMLKJIGHGFEDCBA") == false
    @test same_chars("The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("specterSthrong","Strongabcdefghijknopqrstuvwxyz") == false
    @test same_chars("ovenr","12345lohedrWl!o ,67890") == false
    @test same_chars("tacocspecteThe Force Is Sthrong With Yourat","tacocspecteThe Force Is Sthrong With Yourat") == true
    @test same_chars("123645567890","12345567890") == true
    @test same_chars("foxdazzling","The Force Is Strong With Yuou") == false
    @test same_chars("The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("taoocafoStron1234r5Hello,lohedrW12345lohedr!Wl!o ,678090l!ogrcet","tacocat") == false
    @test same_chars("abofcdefghijklmnopqrstuvwxyz","World!") == false
    @test same_chars("12345lohedr!Wl!forceo","The Force Is Strong With You") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZWitheZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("123456789","1234567890") == false
    @test same_chars("Sthrobewitching,ng","Sthrong") == false
    @test same_chars("God! Amaze a stunning, gorgeous, dbewitching, and dazzling ar gazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazzling ar gazelle!") == true
    @test same_chars("Sttrong","Sttrong") == true
    @test same_chars("12345lohedrWl!o ,678090","12345lohedrWl!o ,678090") == true
    @test same_chars("mm","of") == false
    @test same_chars("habcddogecfghijklmnopqrstuvwxyz","habcddogefghijklmnopqrstuvwxyz") == true
    @test same_chars("The hquick brown fox juer thelazy dog","The hquick brown fox jumps over the lazy dog") == false
    @test same_chars("12o345lohedrWl!o","The Force Is Strongabcdefvwxyz Wityh You") == false
    @test same_chars("ZYXWVUTSMRQPONMLKjumpsCStrongabcdefvwxyzBA","ZYXWVUTSMRQPONMLKJIGHGFEDCBA") == false
    @test same_chars("abcdefghijklmnopqrstuvwxyz","Sttrong") == false
    @test same_chars("12345lohedr3Wl!o","12345lohedrWl!o") == true
    @test same_chars("12345You678990","12345You678990") == true
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","of") == false
    @test same_chars("The hquick bro","The hquick brown foxdog") == false
    @test same_chars("may the force be wiaueoaiueiiaaaith you","e") == false
    @test same_chars("caattaco","caattaco") == true
    @test same_chars("Strongabcdefghijknoxyz","tacocspeabcdefghiGod!") == false
    @test same_chars("The Force Iofs Sttrong forrceWith You","The Force Is Sttrong With You") == false
    @test same_chars("you","you") == true
    @test same_chars("The","The Force Is Strong Wth You") == false
    @test same_chars("juer","Sttro") == false
    @test same_chars("afbcdefghijfklmnopqrstuvwxyz","dog") == false
    @test same_chars("the","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("God! Amaze a stunning, gorgeous, dbewitching, and dazzling ar Strongabcdefghijknoxyzgazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazzling ar gazelle!") == false
    @test same_chars("09876543221","09876543221") == true
    @test same_chars("gazel!le!","gazellze!") == true
    @test same_chars("may the force be with you","The Force Is Strong W ith You") == false
    @test same_chars("Yuou","taco122345678990cspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat") == false
    @test same_chars("mayy","God! Amaze a stunning, g orgeous, bewitchabcdefghijklmnopqrstuvyzing, and dazzling specter of myThe hquick brown fox jumps over the lazy dog gtdear gazelle!") == false
    @test same_chars("Tbrown fox jumgps over the lazy dogcattlohedrWl!oco","The quick brown fox jumps overStrongabcdefghijknoxyzgazelle!he lazy dog") == false
    @test same_chars("12o345loheWthdrWl!o","The Force Is Strongabcdefghijknopqrstsuvwxyz With You") == false
    @test same_chars("tacoforrceWithcspectet","tacocspectet") == false
    @test same_chars("The Force Is Strongabcdefvwxyz Wityh You","Tbrown fox jumps over the lazyx dog") == false
    @test same_chars("klmnopThe Force Is Sthrong With You","abcdefghijklmnopThe Force Is Sthrong With You") == false
    @test same_chars("dog21","mayy") == false
    @test same_chars("gazgcattaco","gazcattaco") == true
    @test same_chars("gggaze!","ggaze!") == true
    @test same_chars("gazelle!","juer") == false
    @test same_chars("Hello,","tacocspecteThe Force Is Sthrong With Yourat") == false
    @test same_chars("The Forceabcgorgeous,defghijknopqrstuv0987654321wxyz Is Strongabcdefghijknoxyz With You","The Forceabcgorgeous,defghijknopqrstuv0987654321wxyz Is Strongabcdefghijknoxyz With You") == true
    @test same_chars("The Force Is oStrong W ith You","The Force Is oStrong W ith You") == true
    @test same_chars("0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do1","098765423221") == false
    @test same_chars("Strongabcdefghijknoxyz","tacocspecteThe Force Is Sthrong With Yourat") == false
    @test same_chars("madbewitching,y","may") == false
    @test same_chars("Tbrown fox jumps over the lazy dog","mm") == false
    @test same_chars("ZYXWVMLKJIHGFEDCBA","abcdefghijknopqrstuvwxyz") == false
    @test same_chars("ZYXWVUTSMRQPONMLZYXWVMLKJIHGFEDCBA","tacocspecteThe Force Is Sthrong With Yourat") == false
    @test same_chars("caatbewitchabcdefghijklmnopqrstuvyzing,taco","123o45lostunning9,hedrWl!o ,67890") == false
    @test same_chars("speceter","specter") == true
    @test same_chars("122345678990","122345678990") == true
    @test same_chars("God! Amaze a stunning, gorgeous, bewi tching, and dazzling specter of my gdear gazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazStrongabcdefvwxyzer of my gdear gazelle!") == false
    @test same_chars("gazelle!","gazellae!") == true
    @test same_chars("abcdefghijklmnThe Force Is Strong Wth Youopqrstuvwxyz","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","tacoforrceWithcspectet") == false
    @test same_chars("0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter ofr my gdear gazelle!own fox jumps over the lazy do1","098765423221") == false
    @test same_chars("abcdefghijknopqrstuvwxyz","tacocspectet") == false
    @test same_chars("Sttro","Sttro") == true
    @test same_chars("aaaaiou","Sthrong") == false
    @test same_chars("may theThe Force Is Strong Wth You force be with you","Yourat") == false
    @test same_chars("foStron1234r5Hello,lohedrW12345lohedr!Wl!o ,678090l!ogrce","0987654The quick brown fox jumps 12345lohedrWl!oover the lazy dog21") == false
    @test same_chars("foStrGod! Amaze agazellae! stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!ongrce","theyou") == false
    @test same_chars("m","God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!") == false
    @test same_chars("gazbbbbbbbbaaaaaaaaaaaaaaaaaaaaaaelle!nopqrstuvwxyz","abcdefghuijknopqrstuvwxyz") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZWitheZeZeZeZeZeZeZeZeZeZeZe","klmnopThe Force Is Sthrong With You") == false
    @test same_chars("gazgcattaco","The qugazelle!ownickZYXWVUTSMRQPONMLKjumpsCStrongabcdefvwxyzBA brown fox jumps over the lazy dog") == false
    @test same_chars("e quick brown fox jum0987654321azy dog","abcdefghijklmnopqrstuvyz") == false
    @test same_chars("dog121","dog121") == true
    @test same_chars("throng","rthrong") == true
    @test same_chars("0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gmay the force hbe with youazelle!own fox jumps over the lazy do1","0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1") == true
    @test same_chars("0987654The quick brown fox jumps over the lazy dog21","0987654The quick brown fox jumps over the lazy dog21") == true
    @test same_chars("The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling speZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZWitheZeZeZeZeZeZeZeZeZeZeZecter of my gdear gazelle!own fox jumps over the lazy do","The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do") == false
    @test same_chars("0987654The quick brown fox jumps 182345lohedrWl!oover the lazy dog21","0987654The quick brown fox jumps 182345lohedrWl!oover the lazy dog21") == true
    @test same_chars("gazelle!","hqudazThebrGod!") == false
    @test same_chars("Sttorong","Sttrong") == true
    @test same_chars("The hquick browwn fox jumps over the lazy dog","The hquick brown fox jumps over the lazy dog") == true
    @test same_chars("abcdefghuijknopqrstuvwxyz","The quick brown fox jumps ovve the lazy dog") == false
    @test same_chars("God! Amaze a stunning, gorgeous, bewitching, and dazzling spttolohedrWl!ocoecter of my gdear gazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("lazyx","juer") == false
    @test same_chars("tacoovenrcspecterat","tacocspecterat") == false
    @test same_chars("of","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("123456789","123456790") == false
    @test same_chars("mayy","hbe") == false
    @test same_chars("tacocspectera1234r5Hello,lohedrWl!ot","gtdeThe Force Is Sthrong With Your") == false
    @test same_chars("of","of") == true
    @test same_chars("God! Amaze a stunn,678090l!ogrce","God! Amazar gazelle!") == false
    @test same_chars("tacocspecteroat","tacocspecterat") == true
    @test same_chars("mmay","madbewitching,y") == false
    @test same_chars("0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gmay the force hbe with youazelle!own fox jumps over the lazy do1","0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitchille!own fox jumps over the lazy do1") == true
    @test same_chars("mm","God!") == false
    @test same_chars("gzgaze!","Strongabcdefghijknoxyz") == false
    @test same_chars("StrongabcddeitThe  Force Is Strong Wth Youz","StrongabcdeitThe  Force Is Strong Wth Youz") == true
    @test same_chars("taoocafoStron1234r5Hello,lohrW12345lohedr!Wl!o","The quick brown fox jumps overStrongabcdefghijknoxyzgazelle!he lazy dog") == false
    @test same_chars("gmay","0987654The quick brown fox jumps over the lazy dog21") == false
    @test same_chars("gazcattaco","abcdefghuijknopqrstuvwxyz") == false
    @test same_chars("cattlohedrWl!gaze!oco","cattlohedrWl!gaze!oco") == true
    @test same_chars("1The Force Is Sttrong With You2345You6789960","122345678990") == false
    @test same_chars("Strongabcdefghijknopqrstuvwxyz","0987654322The hqudazThebrGod! Amaze a stunning,678090l!ogrce, gorgeous, bewitching, and  gdear gmay the force hbe with youazelle!own fox jumps over the lazy do1") == false
    @test same_chars("m","m") == true
    @test same_chars("foStrongrce","gazelle!own") == false
    @test same_chars("0987Yourat654321","0987Yourat654321") == true
    @test same_chars("cattlohedrWl!oco","gazelle!own") == false
    @test same_chars("The Force Is Strong With You","The Force Is Sttrong With You") == true
    @test same_chars("Sttoong","cat") == false
    @test same_chars("tacocspecteThe Fo With Yourat","tacocspecteratabcdefghijklmnoprqrstuvwxyz4321") == false
    @test same_chars("Tbrown fox jumps over the lazy dog","Tbrown fox abcdefghijklmnopThejumps over the lazy dog") == false
    @test same_chars("12o345lohmedrWl!o","Thcaattaccoe Force Is Strongabcdefghijknopqrstuvwxyz With You") == false
    @test same_chars("The hquick brown fox jumps over the lazy dog","The quick brown fox jumps ove the lazy dog") == true
    @test same_chars("The quick brown fox jumps over thle lazy dog","The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do") == false
    @test same_chars("0987Yourat654321","0912o345loheWthdrWl!o87Yourat654321") == false
    @test same_chars("gagazelle!cteratze!","gaze!") == false
    @test same_chars("Strongabcdefg12345lohedrWl!o ,67890hijknopqrstuvwxyz","forrceWith") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","ovenr") == false
    @test same_chars("dazzling","tacocspectergtdeart") == false
    @test same_chars("The quick brown fox jumps over the lThe hquick brown fox jumps over the lazy dog dog","Tbrown fox jumps ovenr the lazy dog") == false
    @test same_chars("orgoverStrongabcdefghijknoxyzgazelle!heeous,","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("catmayy","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("gazel!le!","cattaco") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZWitheZeZeZeZeZeZeZeZeZeZeZe","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("Sthrobewitching,ng","Sthrobewitching,ng") == true
    @test same_chars("lazyx","gazgcattaco") == false
    @test same_chars("The Force Is Strongabcdefvwxyz Wityh You","The Force Is Strongabcdefvwxyz Wityh You") == true
    @test same_chars("God! Amaze a stunning, gorgeous, bewi tching, and dazzling specter of my gdear gazelle!","gaze!") == false
    @test same_chars("may the force be with you","may the force be with you") == true
    @test same_chars("Sthrobewitching,ng","The Force Is Strong W ith You") == false
    @test same_chars("foStron1234r5Hello,lohedrW12345lohedr!Wl!o ,678090l!ogrce","foStrongrcThe hquick brown fox jumps over the lazy doge") == false
    @test same_chars("Tbrown fox jumps over the lazyx dog","Tbrown fox jumps over the lazyx dog") == true
    @test same_chars("beabcdefghijklmnopqrstuvwxyz","1234567890") == false
    @test same_chars("tacoabcdefghijklmnoprqrstuvwxyzcat","tacoabcdefghijklmnoprqrstuvwxyzcat") == true
    @test same_chars("God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazzlilng specter of my dear gazelle!") == true
    @test same_chars("Tbrown fox abcdefghijklmnopThejumps over the lazy dog","Tbrown fox jumps over the lazy dog") == false
    @test same_chars("f","f") == true
    @test same_chars("foxdog","mayyy") == false
    @test same_chars("tacocspectera1234r5Hello,lohedrWl!ot","tacocspecteThe Force Is Sthrong With Yourat") == false
    @test same_chars("habcddogefghijklmnopqrstuvwxyz","morgeous,ayy") == false
    @test same_chars("gzgaze!","12345You678990") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!","The Force Is Strong Wth You") == false
    @test same_chars("Sttoong","Sttoong") == true
    @test same_chars("StStro","Sttro") == true
    @test same_chars("abcgorgeous,defghijknopqrstuv0987654321wxyz","abcgorgeous,defghi0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1jknopqrstuv0987654321wxyz") == false
    @test same_chars("ezzzezezezezezezeeeezezezezezezezeeee","0987654321") == false
    @test same_chars("The quick brown fox jumps ovve the lazy dog","The quick brown  fox jumps ovve the lazy dog") == true
    @test same_chars("mamyy","mayy") == true
    @test same_chars("12345lohedr!Wl!o ,678090","12345lohedr!Wl!o ,678090") == true
    @test same_chars("12345lohedrWl!o","Hello, World!") == false
    @test same_chars("Hello, World!","gggaze!") == false
    @test same_chars("09876543221","Sthrong") == false
    @test same_chars("Iofs","cattlohedrWl!oco") == false
    @test same_chars("iaueoaiueiiaaa","iaueoaiueiiaaa") == true
    @test same_chars("y","you") == false
    @test same_chars("Yuou","Yuou") == true
    @test same_chars("The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","tacocspectet") == false
    @test same_chars("habcddogefghijklmnopqrstuvwxyz","The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do") == false
    @test same_chars("juer","juer") == true
    @test same_chars("12345lohedrWl!o","The Force IsYourat Strong With You") == false
    @test same_chars("theyou","theyou") == true
    @test same_chars("ZYXWVUTSMRQPONMLKJIGHGFEDTbrown fox jumps over the lazy dogCBA","ZYXWVUTSMRQPONMLKJIGHGFEDCBA") == false
    @test same_chars("0987654322The hqudazThebrGod! Amaze a stunning,678090l!ogrce, gorgeous, bewitching, and  gdear gmay the force hbe with youazelle!own fox jumps over the lazy do1","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("ZYXWVUTSMRQPONMLKjumpsCBA","ZYXWVUTSMRQPONMLKJI12345lohedr!Wl!forceoGHGFEDCBA") == false
    @test same_chars("Stabcdefghijklmnopqrrstuvwxyz","Sttro") == false
    @test same_chars("mmay","of") == false
    @test same_chars("wtith","habcddogecfghijklmnopqrstuvwxyz") == false
    @test same_chars("e quick brown fox jum0987654321azy dog","The hquick brown fox jumps over the lazy dog") == false
    @test same_chars("Tbrown fox jumps over the lazyx ddazTheog","Tbrown fox jumps over the laszyx dog") == true
    @test same_chars("ZYXWVVUTSRQPONMLKJIHGFEDCBA","ZYXWVUTSRQPONMLKJIHGFEDCBA") == true
    @test same_chars("abcdefghijklmnuvwxyz","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("yuou","yuou") == true
    @test same_chars("gazelle!own","Sthrobewitching,ng") == false
    @test same_chars("force","force") == true
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of ,678090l!ogrcemy gdear gazelle!","God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!") == false
    @test same_chars("SttrZYXWVVUTSRQPONMLKJIHGFEDCBAong","Sttrong") == false
    @test same_chars("abcdefghijklabcdefghijklmnouvwxyzmnopqrstuvyz","abcdefghijklmnopqrstuvyz") == false
    @test same_chars(",67890hijknopqrstuvwxyz","gaze!") == false
    @test same_chars("tacocspectera1234r5Hello,lohedrWl!ot","tacocspectera1234r5Hello,lohedrWl!ot") == true
    @test same_chars("abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","abcdghijklmnopqrstuvwxyz") == false
    @test same_chars("Tbrown fox jumps over the lastaoo","Tbrown fox jumps over the lastaoo") == true
    @test same_chars("Sttro","tacocspeGodof!e Amaze a stunning, gorgetacoabcdefghijklmnoprqrstuvwxyzcatous, bewitching, and dazzling specter of my dear gazelle!cterat") == false
    @test same_chars("madbewitching,,y","madbewitching,y") == true
    @test same_chars("tacocspecteThe Force Is Sthrong With Yourat","gggaze!") == false
    @test same_chars("The Force Is Strongabcdefghijknopqrstuvwxyz With You","iwith") == false
    @test same_chars("iwforrceith","juer") == false
    @test same_chars("God! Amaze a stunning, gorgeous, bewi tching, and dazzling specter of my gdear gazelle!","God! Amaze a stunning, gorgeous, bewi tching, and dazzling specter of my gdear gazelle!") == true
    @test same_chars("The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gadear gazelle!own fox jumps over the lazy do","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("Tbrown fox jumps over the lazyx dog","may theThe Force Is Strong Wth You force be with you") == false
    @test same_chars("1234abcdefghijklmnopqrrstuvwxyz0","12345lohedrWl!o,678090") == false
    @test same_chars("GoGd!","God!") == true
    @test same_chars(",6708090l!ogrcemy","forrce") == false
    @test same_chars("12345lohedrWl!o ,67890",",") == false
    @test same_chars("tacocspeGodof!e","Sttrng") == false
    @test same_chars("gagazelle!cteratze!","cattlohedrWl!oco") == false
    @test same_chars("The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling speZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZWitheZeZeZeZeZeZeZeZeZeZeZecter of my gdear gazelle!own fox jumps over the lazy do","cattaco") == false
    @test same_chars("sgazelle!tunning,","mayy") == false
    @test same_chars("ZYXWVMLKJIHGFEDCBA","the") == false
    @test same_chars("The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gadear gazelle!own fox jumps over the lazy do","maay") == false
    @test same_chars("12345cat678990catacoovenrcspecteratttaco","catacoovenrcspecteratttaco") == false
    @test same_chars("gazelle!","gllae!") == false
    @test same_chars("The Force Is Strongabcdefghijknopqrstsuvwxyz With You","12o345loheWthdrWl!o") == false
    @test same_chars("12345lostunning,hedrWl!o","iaueoaiueiiaaa") == false
    @test same_chars("StttrSo","Sttro") == true
    @test same_chars("f1The Force Is Sttrong With You2345You6789960","force") == false
    @test same_chars("dog","Tbrown fox abcdefghijklmnopThejumps over the lazy dog") == false
    @test same_chars("may the force be wiaueoaiueiiaaaith you","The quick brown fox jumps over the lThe hquick brown fox jumps over the lazy dog dog") == false
    @test same_chars("mm","bro") == false
    @test same_chars("ZYXWVUTSMRQPOsltunning,NMLKjumpsCBA","ZYXWVUTSMRQPOsltunning,NMLKjumpsCBA") == true
    @test same_chars("1234567890","f") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!","God! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!") == true
    @test same_chars("bro","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("specter","fforce") == false
    @test same_chars("StrongabcdefghijklohedrWl!onopqrstuvwxyz","0987654322The hqudazThebrGod! Amaze a stunning,678090l!ogrce, gorgeous, bewitching, and  gdear gmay the force hbe with youazelle!own fox ejumps over the lazy do1") == false
    @test same_chars("laszyx","iwith") == false
    @test same_chars("tacoabcdefghijklmnoprqrstuvwxyzcat","tacoabcdefghijklmn,67890oprqrstuvwxyzcat") == false
    @test same_chars("Tbrown fox jumps over the lazyx dog","Tbrown foxgggaze! jumps over the lazyx dog") == false
    @test same_chars("caattacco","God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!") == false
    @test same_chars("taco122345678990cspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat","lastaoo") == false
    @test same_chars("abcdefghiGod! Amaze a stunning, abcdefghijklmnoprqrstuvwxyzgorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","God! Amaze a stunning, gorgeous, bewitching, and dazzling ar gazelle!") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jtacocspecteTheumps over the lazy dog specter of my gdear gazelle!","The Force Is Strong Wth You") == false
    @test same_chars("abcdefgbrohijknopqrstuv0987654321wxyz","abcdefghijknopqrstuv0987654321wxyz") == true
    @test same_chars("e quick brownc fox jum0987654321azy dog","abcdefghijklmnopqrstuvyz") == false
    @test same_chars("ith","throng") == false
    @test same_chars("abcdefghijklmnuvwxyz","The") == false
    @test same_chars(",67890hijknopqrstuvwxyz","foStron1234r5Hello,lohedrW12345lohedr!Wl!o ,678090l!ogrce") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jtacocspecteTheumps over the lThe Force Is Strongabcdefghijknopqrstsuvwxyz With Youazy dog specter of my gdear gazelle!","The Force Is Strong Wth You") == false
    @test same_chars(",678090","12345lohedrWl!o ,67890") == false
    @test same_chars("foStrGod! Amaze agazellae! stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!ongrce","Thcaattaccoe Force Is Strongabcdefghijknopqrstuvwxyz With You") == false
    @test same_chars("abcgorgeous,defghi0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1jknopqrstuv09T87654321wxyz","abcgorgeous,defghi0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1jknopqrstuv0987654321wxyz") == true
    @test same_chars("theyou","gzaze!") == false
    @test same_chars("abcdefghiGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","forrceWith") == false
    @test same_chars("gaaze!","gaze!") == true
    @test same_chars("Strongabcdefghijknopqrstuvwxyz","0987654322The hqudazThebrGod! Amaze a stunning,678090l!ogrce, gorgeoustunn,678090l!ogrces, bewitching, and  gdear gmay the force hbe with youazelle!own fox jumps over the lazy do1") == false
    @test same_chars("maay","tacocat") == false
    @test same_chars("gazel!le!","12345You6") == false
    @test same_chars("The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","0987654The quick brown fox jumps 12345lohedrWl!oover the lazy dog21") == false
    @test same_chars("12345lohedrWl!o ,67890","iaueoaiueiiaaa") == false
    @test same_chars("tacoovenrcspecterat","caatbewitchabcdefghijklmnopqrstuvyzing,taco") == false
    @test same_chars("theyou","g182345lohedrWl!ooverzaze!") == false
    @test same_chars("0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gmay the force hbe with youazelle!own fox jumps over the lazy do1","0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gmay the force hbe with youazelle!own fox jumps over the lazy do1") == true
    @test same_chars("foStrGod! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!oengrce","foStrGod! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!ongrce") == true
    @test same_chars("12345lohedr!Wl!forceo","wSthrongith") == false
    @test same_chars("cattlohedrWl!oco","God! Amaze a stunning, gorgeous, beabcdefghuijknopqrstuvwxyzwitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("ZYXWVUTSRQPONMLKJIHGFEDCBA","12345lohedrWl!o,678090") == false
    @test same_chars("The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!own fox jumps over the lazy do","1234r5Hello,lohedrWl!o") == false
    @test same_chars("098765423221","The quick brown fox jumps ovve the lazy dog") == false
    @test same_chars("hbe","mayy") == false
    @test same_chars("bbbbbbbbaaaaaaaaaaaaaabcdefghijklmnThe Force Is Strong Wth Youopqrstuvwxyzaaaaaaaa","bbbbbbbbaaaaaaaaaaaaaabcdefghijklmnThe Force Is Strong Wth Youopqrstuvwxyzaaaaaaaa") == true
    @test same_chars("12345678gorgeous,90","God! nAmaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("The quick browlazyn fox jumr the lazy dog","The quick brown fox jumr the lazy dog") == true
    @test same_chars("jtacocspecteTheumps","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("abcgorgeous,defguhi0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1jknopqrstuv0987654321wxyz","abcgorgeous,defghi0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1jknopqrstuv0987654321wxyz") == true
    @test same_chars("12345cat678990catacoovenrcspecteratttaco","12345cat678990catacoovenrcspecteratttaco") == true
    @test same_chars("gazcattaco","gazcattaco") == true
    @test same_chars("lastaoto","lastaoto") == true
    @test same_chars("StrongabcdeitThe  Force Is Strong Wth YfoStrGod! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!oengrceouz","StrongabcdeitThe  Force Is Strong Wth Youz") == false
    @test same_chars("iwhith","iwith") == true
    @test same_chars("abcdefghijklmnopqrrstuvwxyz","abcdefghijklmnopqrrstuvwxyz") == true
    @test same_chars("gzaze!","gzaze!") == true
    @test same_chars("Tbrown jumps ovenr the lazy dog","Tbrown jumps ovenr the lazy dog") == true
    @test same_chars("of","0987h654The quick brown fox jumps over the lazy dog21") == false
    @test same_chars("oSthrong","Sthrong") == true
    @test same_chars("e quick brown Strongabcdefghijknoxyzgazelle!fox jum098765432y1azy dog","abcdefghijklmnopqrstuvyz") == false
    @test same_chars("God! nAmaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!","orgeous,") == false
    @test same_chars("over","oIofsver") == false
    @test same_chars("The Force Is Strongabcdefghijknopqrstuvwxyz With You","The Force Is Strongabcdefghijknopqrstuvwxyz With You") == true
    @test same_chars("The hquick brown foxdog","0987654321") == false
    @test same_chars("The Force Is Strongabcdefghijknopqrstsuvwxyz With You","The hquick brown fox jumps over the lazy dog") == false
    @test same_chars("God! Amaze a stunning, gorgeoyuouus,! bewitching, and dazThe hquick brown fox jumps over the lazy dog spoecter of my gdear gazelle!","God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!") == true
    @test same_chars("The hqudazThebrGod! Amaze a sgazelle!tunning, gorgeous, bewitching, and dazzling s peZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZWitheZeZeZeZeZeZeZeZeZeZeZecter of my gdear gazelle!own fox jumps over the lazy do","hquick") == false
    @test same_chars("lastaoto","lastathrongo") == false
    @test same_chars("Yourat","throng") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jtacocspecteTheumps over the lazy dog specter of my gdear gazelle!","mayyy") == false
    @test same_chars("12345lostunning,hedrWl!o","you") == false
    @test same_chars("Amaze","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("Strongabcdefghijknoxyz","Yuou") == false
    @test same_chars("GGd!","God!") == false
    @test same_chars("Tbrown fox jumps ovenr the lazy dog","abcdefghijklmnopqrstuvwxmorgeous,ayyyz") == false
    @test same_chars("The quick brown fox jumps ovve the lazy dcattacoog","cat") == false
    @test same_chars("foStron1234r5Hello,lohedrW12345lohedr!Wl!o","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!") == false
    @test same_chars("specterSthrng","StrongabcdeitThe") == false
    @test same_chars("dog2123o45lostunning9,hedrWl!o ,678901","dog21") == false
    @test same_chars("ZYXWVUTSMRQPONMLKJIHGFStrongabcdefghijknopqrstuvwxyzCBA","f1The") == false
    @test same_chars("foStrGod! Amaze a stunning, gorgeous,! bewitching, and dazzling specter of my gdear gazelle!ongrce","tu") == false
    @test same_chars("tacocat","tacoFocat") == false
    @test same_chars("Strongabcdefghijknoxyz","Yu") == false
    @test same_chars("9,6708090l!ogrcemy","forrce") == false
    @test same_chars("abcdefghiGod! Amaze a sltunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","12345lostunning,hedrWl!o") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == true
    @test same_chars("ZYXWVUTSMRQPONMLKJIHGFStrongabcdefghijknopqrstuvwxyzCBA","1234567890") == false
    @test same_chars("GGd!m","God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jumps over the lazy dog specter of my gdear gazelle!") == false
    @test same_chars("tacoabcdefghijklmnoprqrstugazcattacovwxyzcat","tacoabcdefghijklmnoprqrstuvwxyzcat") == true
    @test same_chars("ce","force") == false
    @test same_chars("God! Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jtacocspecteTheumps over the lazy dog spectlohedrWl!oer of my gdear gazelle!","God!o Amaze a stunning, gorgeous,! bewitching, and dazThe hquick brown fox jtacocspecteTheumps over the lazy dog spectlohedrWl!oer of my gdear gazelle!") == true
    @test same_chars("cattlohedrWl!gaze!oco","ZYXWVUTSMRQPONMLKJIGHGFEDCBA") == false
    @test same_chars("The Force Is Strongabcdefghijknopqrstsuvwxyz With You","12o345lohWl!o") == false
    @test same_chars("abcgorgeous,defguhi0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1jknopqrstuv0987654321wxyz","abcgorgeous,defguhi0987654322The hqudazThebrGod! Amaze a stunning, gorgeous, bewitching, and  gdear gazelle!own fox jumps over the lazy do1jknopqrstuv0987654321wxyz") == true
    @test same_chars("ZYXWVUTSMRQPONMLKjumpsCStrongabcdefvwxyzBA","ZYXWVUTSMRQPONMLKjumpsCStrmay the force be wiaueoaiueiiaaaith youongabcdefvwxyzBA") == false
    @test same_chars("With","0987654The quick brown fox jumps over the lazy dog21") == false
    @test same_chars("overStrongaabcdfefghiGod!bcdefghijknoxyzgazelle!he",",67890hijknopqrstuvwxyz") == false
    @test same_chars("gagazellel!cterate!","gaze!") == false
    @test same_chars("aStttrSoaaaaeeeiou","aaaaiou") == false
    @test same_chars("12345lohedr!Wl!o ,678090","iwith") == false
    @test same_chars("gtdeThe","Tbrown fox jumps over the laszyx dog") == false
    @test same_chars("lastathrongo","lastatthrongso") == true
    @test same_chars("wtith","SttrSong") == false
    @test same_chars("caattacco","rthrong") == false
    @test same_chars("gaz!elle!","12345lohedrWrl!o ,678090") == false
    @test same_chars("dog","odog") == true
    @test same_chars("abcdefghaijknopqrstuvwxyz","tacocspectet") == false
    @test same_chars("ezzzezezezezezezeeeezezezezezezezeeee","tacoabcdefghijklmnoprqrstuvwxyzcat") == false
    @test same_chars("Forceabcgorgeous,defghijknopqrstuv0987654321wxyz","Forceabcgorgeous,defghijknopqrstuv0987654321wxyz") == true
    @test same_chars("wittheTheh","bbbbbbbbaaaaaaaaaaaaaaaaaaaaa") == false
    @test same_chars("Amaze","0987654The quick brown fox jumps over the lazy dog2o1") == false
    @test same_chars("Sttrong","ZYXWVUTSMRQPONMLAmazarKJIGHGFEDCBA") == false
    @test same_chars("12345cat678990catacoovenrcspecteratttaco","Tbrown fox jumps over the lazy dog") == false
    @test same_chars("bbbbbbbbaaaaaaaaaaaaaaaaaaaaaaa","bbbbbbbbaaaaaaaaaaaaaaaaaaaaaaa") == true
    @test same_chars("God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!","abcgorgeous,defghijknopqrstuv0987654321wxyz") == false
    @test same_chars("127890","127890") == true
    @test same_chars("God! Amaze a stunning, gorgeous, bewitchTbrown fox jumps over the laszyx doging, and dazStrongabcdefvwxyzer of my gdear gazelle!","God! Amaze a stunning, gorgeous, bewitching, and dazStrongabcdefvwxyzer of my gdear gazelle!") == false
    @test same_chars("foSgtdeThe Force Is Sthrong With Yourtrongrce","foStrongrce") == false
    @test same_chars("abcdefghiGod! Amaze a stunning, abcdefghijklmnoprqrstuvwxyzgorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyz","taco122345678990cspeGod!e Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!cterat") == false
    @test same_chars(",678090",",678sltunning,90") == false
    @test same_chars("God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!","cattlohedrWl!oco") == false
    @test same_chars("mabcdefghijklmnopThe Force Is Sthrong With Youayy","God! Amaze a stunning, g orgeous, bewitching, and dazzling specter of my gtdear gazelle!") == false
    @test same_chars("speceter","speceter") == true
    @test same_chars("aaabbbbbbbbaaaaaaaaaaaaaabcdefghijklmnThe Force Is Strong Wth Youopqrstuvwxyzaaaaaaaaaaeeeiou","aaaaaeeeiou") == false
    @test same_chars("gazgcattaco","yuou") == false
    @test same_chars("abcdefghijklmnoprqrstuvwxyz","may the force be with") == false
    @test same_chars("0987Yourat654321","0912o345l1234r5lohedrWl!o ,678090urat654321") == false
    @test same_chars("12345locattlohedrWl!ocohedr3Wl!o","12345lohedr3Wl!o") == false
    @test same_chars("oagazellae!venr","oagazellae!venr") == true
    @test same_chars("12345cat678990catacoovenrtacocspeabcdefghiGod! Amaze a sltunning, gorgeous, bewitching, and dazzling specter of my gdear gazelle!nopqrstuvwxyzcspecteratttaco","12345cat678990catacoovenrcspecteratttaco") == false
    @test same_chars("","abcd") == false
    @test same_chars("abcd","") == false
    @test same_chars(" "," ") == true
    @test same_chars("abcdefghijklmnopqrstuvwxyz","") == false
    @test same_chars("","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("a","a") == true
    @test same_chars("\n\t","\n\t") == true
    @test same_chars("!\$%^&*","*&^%\$!") == true
    @test same_chars("aaeaaaeeedogiou","aaaaaeeedogiou") == true
    @test same_chars("abcdefghijklmnopqrstuvwxyz","may") == false
    @test same_chars("12345607890","0987654321") == true
    @test same_chars("aaeaaaeeedogiou","may") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","The quick brown fox jumps over the lazy dog") == true
    @test same_chars("may","09876541321") == false
    @test same_chars("aaaastunning,aaaaaaaaaaaaaaaaaaaaaaabbbb","bbbbbbbbaaaaaaaaaaaaaaaaaaaaa") == false
    @test same_chars("The quick brown fobrownx jumps over the lazy dog","The quick brown fox jumps over the lazy dog") == true
    @test same_chars("my","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("force","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("1234567890","may") == false
    @test same_chars("brown","brown") == true
    @test same_chars("abcdefghijklmnopqrstutvwxyz","abcdefghijklmnopqrstuvwxyz") == true
    @test same_chars("dear","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("abcdefghijklmnopqrhstuvwxyz","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("abcdefghijklmnopqrstmayuvwxyz","abcdefghijklmnopqrstmayuvwxyz") == true
    @test same_chars("12034567890","may") == false
    @test same_chars("a","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("The quicky brown fox jumps over the lazy dog","gazelle!") == false
    @test same_chars("maay","may the force be with you") == false
    @test same_chars("and","bbbbbbbbaaaaaaaaaaaaaaaaaaaaa") == false
    @test same_chars("may","stunning,") == false
    @test same_chars("JAut","JAut") == true
    @test same_chars("aaaaa","aaaaaeeeiou") == false
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("aaeaaaeeedogiou","aaaaaeeedHello,") == false
    @test same_chars("aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbdogiou","aaaaaeeedHello,") == false
    @test same_chars("With","lohedrWl!o ,") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","God! Amaze a stunning, gorggeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("you","aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == false
    @test same_chars("may the forcfe be with you","may the forcfe be with you") == true
    @test same_chars("JAuAt","JAut") == true
    @test same_chars("ezzzezezemay the forcfe be with youzezezezeeeezezezezezezezeeee","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("lohedrWl!o ,","Hello, World!") == false
    @test same_chars("nbrown","you") == false
    @test same_chars("may","may") == true
    @test same_chars("abcdefghijklmnopqrstutvwxyz","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("abcdefghijklmnopqrstutvwxyz","aaaaa") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeStrongZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("may the forcfe be with you","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("ezzmay the force be with youemay the foreee","ezzzezezemay the foreee") == false
    @test same_chars("dear","dear") == true
    @test same_chars("over","quick") == false
    @test same_chars("maay","aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou") == false
    @test same_chars("The quick brown fobHello, World!rownx jumps over the lazy dog","fobrownx") == false
    @test same_chars("youemay","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("brown","brandwn") == false
    @test same_chars("aaaastunning,aaaaaaaaaaaaaaaaaaaaaaaabbbb","bbbbbbbbaaaaaaaaaaaaaaaaaaaaa") == false
    @test same_chars("Hello, World!","aaaaa") == false
    @test same_chars("nbrown","my") == false
    @test same_chars("abcdefghijklmnopqrstutvwxyz","oabcdefghijklmnopqrstutvwxyz") == true
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","Amaze") == false
    @test same_chars("youzezezezeeeezezezezezezezeeee","aaaaaeeedHello,") == false
    @test same_chars("JATheuAt","JAut") == false
    @test same_chars("fox","abcdTheefghijklmnopqrstuvwxyz") == false
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","The quick brown fobrownx jumps over the lazy dog") == false
    @test same_chars("quick","aaaaaeeedogiou") == false
    @test same_chars("JAuAt","JuAut") == true
    @test same_chars("dWorld!rownxog","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("nbrown","JAut") == false
    @test same_chars("aaeeaaaee","aaeaaaeeedogiou") == false
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","aaaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("may the force be with you","e Is Strong With You") == false
    @test same_chars("may the forcfe be with you","may the forcfe be wit") == false
    @test same_chars("ezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze","ezzzezezemay the foreee") == false
    @test same_chars("the","aaaastunning,aaaaaaaaaaaaaa") == false
    @test same_chars("With","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars(",","aaaaaeeedogiou") == false
    @test same_chars("ezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze","The Force Is Strong With") == false
    @test same_chars("ezzmay the force be with youemay the foreee","aaaastunning,aaaaaaaaaaaaaa") == false
    @test same_chars("aaeaaaeeeGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!aaaaaaaaaaaaaaaaaabbbbdogiou","aaeaaaeeeGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!aaaaaaaaaaaaaaaaaabbbbdogiou") == true
    @test same_chars("may the forcfe be with you","may the forcfe be with yoThe quick brown fobrownx jumps over the lazy dogu") == false
    @test same_chars("abcdefghijklmnopqrtvwxyz","oabcdefghijklmnopqrstutvwxyz") == false
    @test same_chars("aaaaaeeeiou","iaueoaiquickyueiiaaa") == false
    @test same_chars("and","bbbbbbbbaaaaaaaaafobHello,aaaaaa") == false
    @test same_chars("abcdefghijklmnopqrstuvwxWorld!rownxyz","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("yobewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","forcfe") == false
    @test same_chars("abcdefghijklmnopqrtvwxyz","may the forcfe be with yoThe quick brown fobrownx jumps over the lazy dogu") == false
    @test same_chars("my","may") == false
    @test same_chars("bewitching,","may the forcfe be wit,") == false
    @test same_chars("bewitching,aaaaaaaaaaaaaaaaaaaaabbbb","bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("abcxdefghijklmnopqrtvwxyz","abcdefghijklmnopqrtvwxyz") == true
    @test same_chars("maay","aaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == false
    @test same_chars("tacocat","The quicky brown fox jumps over the lazy dog") == false
    @test same_chars("aaaastunning,aaaaaaaaaaaaaaaaaaaaaaaabbbb","aaaastunning,aaaaaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("bewitching,","God!") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZ,eZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("yoThe","ezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze") == false
    @test same_chars("ezzzezezThe Force Is Strong may the force be with youWithezezezezeeeezezezezezezezeeee","Strong") == false
    @test same_chars("The quicky brown fox jumps over  the lazy dog","brandwn") == false
    @test same_chars("brandwn","and") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeStrongZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("the","the") == true
    @test same_chars("aaaaaa","aaaaa") == true
    @test same_chars("iaueoaiueiabcxdefghijklmnopqrtvwxyziaaa","iaueoaiueiiaaa") == false
    @test same_chars("abcdefghijklmnopqrstutvwxyz","oabcdefghijklmnoThe Force Is Strong Witphpqrstutvwxyz") == false
    @test same_chars("aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou","abcdefghijklmnopqrtvwxyz") == false
    @test same_chars("gorgeous,","aaaaaeeedogiou") == false
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaiaueoaiueiabcxdefghijklmnopqrtvwxyziaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("ZYXWVUTSRQSPONMLKJIHGFEDCBA","ZYXWVUTSRQSPONMLKJIHGFEDCBA") == true
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZ,eZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","my") == false
    @test same_chars("JJAut","JJAut") == true
    @test same_chars("ezzzezezemay tehe foreoabcdefghijklWorld!rownxmnopqrstutvwxyze","ezzzezezemay tehe foreoabcdefghijklWorld!rownxmnopqrstutvqwxyze") == true
    @test same_chars("abcdefghijklmnopqrstuvwxWorld!rownxyz","abcdefghijklmnopqrstuvwxWorld!rownxyz") == true
    @test same_chars("nbn","JAut") == false
    @test same_chars("The Force Is Strong With You","abcdefghijklmnopqrstuvwxWorld!rownxyz") == false
    @test same_chars("bewitchcattacoing,","bewitchhing,") == false
    @test same_chars("","aaaquickaaeeedogiou") == false
    @test same_chars("JuAlohedrWl!out","bewitching,aaaaaaaaaaaaiaueoaiueiabcxdefghijklmnopqrtvwxyziaaaaaaaaaaaaaaaaaabbbb") == false
    @test same_chars("aaeeiou","aaaaaeeeiou") == true
    @test same_chars("aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("abcdefghijklmnopqrstuvwxWoprld!rownxyz","abcdefghijklmnopqrstuvwxWorld!rownxyz") == true
    @test same_chars("mygorgeous,","my") == false
    @test same_chars("ezzzezezezezezezeeeezezezezezezezeeee","dWorld!rownxog") == false
    @test same_chars("ezzmay the force be withh youemay the foreeee","aaaastuanning,aaaaaaaaaaaaaa") == false
    @test same_chars("aaaastunning,aaaaaaaaaaaaaa","aaaastunning,aaaaaaaaaaaaaa") == true
    @test same_chars("brown","1234567890") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZ,eZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","foreetheee") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZemay the forcfe be with youZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("dear","ayouemaybcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("my","ymay") == false
    @test same_chars("eIs","e") == false
    @test same_chars("gorgeous,","aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou") == false
    @test same_chars("aaeaaaee12345607890edogiou","aaaaaeeedHello,") == false
    @test same_chars("e Is Strong With You","the") == false
    @test same_chars("ezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze","yoThe") == false
    @test same_chars("abcdefghijklmnopqrhstuvwxyz","JAut") == false
    @test same_chars("abccdefghijklmnopqrstuvwxyz","abcdpefghijklyourstuvwxyz") == false
    @test same_chars("bewitbewitchcattacoing,ching,","God!") == false
    @test same_chars("aaeeiou","aeaaaaeeeiou") == true
    @test same_chars("abcd!rownxyz","abcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("youzezezezeeeezezezezezezezeeee","abcdefghijklmnopqrtvwxyz") == false
    @test same_chars("JuAut","JAut") == true
    @test same_chars("force","ZYXWVUTSRQPOUNMLKJIHGFEDCBA") == false
    @test same_chars("nand","bbbbbbbbaaaaaaaaafobHello,aaaaaa") == false
    @test same_chars("wiaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbh","with") == false
    @test same_chars("ezzzezezezezezezeeeezezezezezezezeeeZYXWVUTSRQSPONMLKJIHGFEDCBAe","may") == false
    @test same_chars("ezzzezezThe","may") == false
    @test same_chars("yoThe","yoThe") == true
    @test same_chars("ezzzezezemay the foreoabcdefgGod! Amaze a stunning, gorgeou s, bewitching, and dazzling specter of my dear gazelle!hijklmnopqrstutvwxyze","ezzzezezemay the foreoabcdefgGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!hijklmnopqrstutvwxyze") == true
    @test same_chars("aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou","abcdefghijklmnopqrtvwxyyz") == false
    @test same_chars("the","aaaastuandnning,aaaaaaaaaaaaaa") == false
    @test same_chars("The quicky brown fox jumps over the lazy do","The quicky brown fox jumps over the lazy do") == true
    @test same_chars("ezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze","ezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze") == true
    @test same_chars("abcdefghijklmnopqrstmayuvwxyz","abcdefghijklmnopzqrstmayuvwxyz") == true
    @test same_chars("JAuAt","brown") == false
    @test same_chars("ezzzezezemay the foreoabcdoefghijklmZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZenopqrstutvwxyze","specter") == false
    @test same_chars("my","y") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","Witphpqrstutvwxyz") == false
    @test same_chars("abcdefghijklmnopqrstuvwxWoprld!rownxyz","dogu") == false
    @test same_chars("With","you") == false
    @test same_chars("aaeaaaee12345607890edogiou","ezzezezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("abcdefghijklmnopqrstuvwxWorld!rownxyznfox","abcdefghijklmnopqrstuvwxWorld!rownxyzfox") == true
    @test same_chars("bewitchcattacoing,","iaueoaiueiiaaaaalohedrWl!oa") == false
    @test same_chars("youZeZeZeZe","youZeZeZeZe") == true
    @test same_chars("ezzmayabcdefghijklmnopqrstuvwxWorld!rownxyzfox the force be with youemay the foreee","ezzmay the force be with youemay the foreee") == false
    @test same_chars("Hello, Wodrld!","aThe Force Is Strong Withaaaa") == false
    @test same_chars("The quick brown fox jumpps over the lazy dog","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("ezzmay the force be withh youemay the foreeee","God! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("ZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZemay the forcfe be with youZeZeZeZe") == false
    @test same_chars("ezzmay the forc e be with youemay the foreee","ezzmay the force be with youemay the foreee") == true
    @test same_chars("abcxdefghijklmnopqrtvwxyz","abcxdefghijklmnopqrtvwxyz") == true
    @test same_chars("tacocat","brown") == false
    @test same_chars("withWithaaaa","with") == false
    @test same_chars("ezzzezezemay tehe foreoabcdefghijklWorld!rownxmnopqrstutvqwxyze","ezzzezezemay tehe foreoabcdefghijklWorld!rownxmnopqrstutvqwxyze") == true
    @test same_chars("aaeaaaee123ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bbewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee45607890edogiou","aaeaaaee12345607890edogiou") == false
    @test same_chars("JuAut","foreoabcdoefghijklmZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZenopqrstutvwxyze") == false
    @test same_chars("The Force Is Strong Withu","you") == false
    @test same_chars("stunniabcd!rownxyzng,","stunning,") == false
    @test same_chars("The Force Is Strong Withu","gazelle!ou") == false
    @test same_chars("ZYXWVUTSRQPOUNMLKJIHGFEDCBA","ZYXWVUTSRQPOUNMLKJIHGFEDCBA") == true
    @test same_chars("nbwithWithaaaan","nbn") == false
    @test same_chars("the","ZYXWVUTSRQSPONMLKJIHGFEDCBA") == false
    @test same_chars("JuAut","ezzzezezemay the foreee") == false
    @test same_chars("bewitching,","may the fwit,") == false
    @test same_chars("may the fwit,","12345678390") == false
    @test same_chars("may the fwit,","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("nbrown","aaeaaaeeoeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou") == false
    @test same_chars("dWorld!rownxog","ZYJuAutXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("and","and") == true
    @test same_chars("abcdefghijklmnopqrstuvwxyz","abcdefghijklmnopstuvwxyz") == false
    @test same_chars("yobewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","yobewitching,aaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("aaaaa","aaaaa") == true
    @test same_chars("stunning,","The quick brown fox jumps over the lazy dog") == false
    @test same_chars("ezzfwift,he foreeee","ezzfwift,he foreeee") == true
    @test same_chars("ezzzezezemay tehe foreoabcdefghijklWorvwxyze","ezzzezezemay tehe foreoabcdefghijklWorld!rownxmnopqrstutvqwxyze") == false
    @test same_chars("The quicky brown fox jumps over the lazy do","JuAut") == false
    @test same_chars("JAuAt","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("abhijklmnopqrtvwxyz",",") == false
    @test same_chars("may the forcfe be with you","may theZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZe forcfe be wit") == false
    @test same_chars("bewitchcattacwithhg,","bewitchhing,") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeiaueoaiquickyueiiaaaZZeZeZeZeZeZemay the forcfe be with youZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("fox","abcdTheefghijklmnopqrstuvwyxyz") == false
    @test same_chars("abchdTheefghijklmnopqrstuvwxyz","abcdTheefghijklmnopqrstuvwxyz") == true
    @test same_chars("abcdefghijklmnopqrhstuvwxyz","ZYXWVUTSRQPONMLwitKJIHGFEDCBA") == false
    @test same_chars("abcdTheefghijklmnopqrstuvwxyz","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("youzezezezeeeeezezezezezezezeeee","abcdefghijklmnopqrtvwxyz") == false
    @test same_chars("aaaastuforeoabcdefgGod!a","bewitchhing,") == false
    @test same_chars("12345607890","01") == false
    @test same_chars("aaaaaaeeeiou","aaaaaeeeiou") == true
    @test same_chars("ZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZe","ZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZe") == true
    @test same_chars("over","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","aaaaaeeeedHello,") == false
    @test same_chars("ayouemaybcdefghijklmnopqrsftuvwxyz","ayouemaybcdefghijklmnopqrstuvwxyz") == true
    @test same_chars("Force","ezzzezezemay the foreee") == false
    @test same_chars("aaaeaaaee12345607890edogiou","aaeaaaee12345607890eThe quicky brown fox jumps over the lazy dodogiou") == false
    @test same_chars("aaeaaaee123ezzzezezezezezezeeGod!","The Force Is Strong With") == false
    @test same_chars("angazelle!hijklmnopqrstutvwxyzed","and") == false
    @test same_chars("ayouemaybwithWithaaaacdefghijklmnopqrstuvwxyz","ayouemaybwithWithaaaacdefghijklmnopqrstuvwxyz") == true
    @test same_chars("aafobrownxaaaeeeiou","aafobrownxaaaeeeiou") == true
    @test same_chars("aaaaaeeeedHello,","aaaaaeeedHello,") == true
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeiaueoaiquickyueiiaaaZZeZeZeZeZeZemay","ZYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("Hello, World!","aaaastunning,aaaaaaaaaaaaaa") == false
    @test same_chars("wit,","wit,") == true
    @test same_chars("bewitching,aaaaaaaaaaaaaaaaaaaaabbbb","bewitching,aaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("stunniabncd!rownxyzng,","The Force Is Strong Withu") == false
    @test same_chars("maay","maay") == true
    @test same_chars("iaueoaiueiaiaaa","iaueoaiueiiaaa") == true
    @test same_chars("brandwn","brandwn") == true
    @test same_chars("abcdefghijklmnopqrstmayuabcdefghijklmnopqrstuvwxWorld!rownxyznfoxvwxyz","abcdefghijklmnopqrstmayuabcdefghijklmnopqrstuvwxWorld!rownxyznfoxvwxyz") == true
    @test same_chars("Jt","JWithaaaaAut") == false
    @test same_chars("gorgeous,","ezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze") == false
    @test same_chars("gorgeous,","JAuA") == false
    @test same_chars("Amaze","abcxdefghijklmnopqrtvwxyz") == false
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","foreee") == false
    @test same_chars("ZYXWVUTSRQPONMLwitKJIHGFEDCBA","0987654321") == false
    @test same_chars("may the forcfe be with yoThe quicvk brown fobrownx jumps over the lazy dogu","abcdefghijkwithhlmnopqrtvwxyz") == false
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","aaaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("ezzzezezezezezezeeeezezThe quick brown fox jumps over the lazy dogezezezezezeeee","ezzzezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("ezzzezezezezezezeeeezezezezezezezeeeZYXWVUTSRQSPONMLKJIHGFEDCBAe","mmay") == false
    @test same_chars("JuAut","JuAut") == true
    @test same_chars("abcdefghijklmnopqrstutvwxyz","ZeZeZeZeZeZeZeZeJAuAZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("oabcdefghijklmnoThe","ezzzezezemay the foreohabcdefghijklmnopqrstutvwxyze") == false
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaabb","you") == false
    @test same_chars("abcdetuvwxWoprld!rownxyz","abcdefghijklmnopqrstuvwxWorld!rownxyz") == false
    @test same_chars("ablcdefghijklmnopqrstuvwxWoprld!rownxyz","dogoabcdefghijklmnoTheu") == false
    @test same_chars("Witphpqrstutvwxyz","ZYXWVUTSRQSPONMLKJIHGFEDCBA") == false
    @test same_chars("nbwithWithaaan","nbn") == false
    @test same_chars("aaaeaaaee12345607890edogiou","aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou") == false
    @test same_chars("gorggeous,","iaueoaiueiiaaa") == false
    @test same_chars("Jt","wit,") == false
    @test same_chars("ZYXWVUTSRQPONMLKJIHGFEDCBA","mygorgeous,") == false
    @test same_chars("aaaeaaaee12345607890edogiou","oabcdefghijklmnopqrstutvwxyz") == false
    @test same_chars("eIs","ezzmay the force be with youemay the foreee") == false
    @test same_chars("aThe","1234567890") == false
    @test same_chars("Hello,","abcdefghijkwithhlmnGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!opqrtvwxyz") == false
    @test same_chars("lohedrWl!o ,","Amaze") == false
    @test same_chars("gazelle!eezezezezezezezeeee","aafobrownxaaaeeeiou") == false
    @test same_chars("youaaeaaaee12345607890eThe","annd") == false
    @test same_chars("iaiquickyueiiaaa","iaueoaiquickyueiiaaa") == false
    @test same_chars("Hello,","Helolo,") == true
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","with") == false
    @test same_chars("abcdefghijklmnopqrtvwxyz","abcdefghijklmnopqrtvwxyz") == true
    @test same_chars("ZYXWVUTSRQSPONMFEDCBA","ZYXWVUTSRQSPONMFEDCBA") == true
    @test same_chars("tacocat","iaueoaiueiabcxdefghijklmnopqrtvwxyziaaa") == false
    @test same_chars("over","bewitching,") == false
    @test same_chars("abcdefghijklmnopqrstmayuabcdefghijklmnopqrstuvwxWorld!rownxyzZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZenfoxvwxyz","abcdefghijklmnopqrstmayuabcdefghijklmnopqrstuvwxWorld!rownnxyznfoxvwxyz") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZe") == true
    @test same_chars("bewitching,aaaaaaaaaabewitching,aaaaaaaaaaabbbb","bewitching,aaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("ZYXWVUTSRQPONMLKJIHGFEDCBA","ZjumpsYXWVUTSRQPONMLKJIHGFEDCBA") == false
    @test same_chars("aaaee","aaeeaaaee") == true
    @test same_chars("You","abcdefghijklmnopqrstmayuvwxyz") == false
    @test same_chars("aaaaaeeeiou","aaaaaeeieiou") == true
    @test same_chars("aaeaaaeeeGod! Amazmay the forcfe be with yoThe quick brown fobrownx jumps over the lazy dogue a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!aaaaaaaaaaaaabaaaaabbbbdogiou","aaeaaaeeeGod! Amazmay the forcfe be with yoThe quick brown fobrownx jumps over the lazy dogue a stunning, gorgeous, bewitching, aand dazzling specter of my dear gazelle!aaaaaaaaaaaaabaaaaabbbbdogiou") == true
    @test same_chars("fox","aaaaaaeeeiou") == false
    @test same_chars("uJAut","JAut") == true
    @test same_chars("bewitching,","Godnand!") == false
    @test same_chars("may the force be with y","The Force Is Strong With You") == false
    @test same_chars("a","ado") == false
    @test same_chars("aaaquickaeeedogi","aaaquickaaeeedogi") == true
    @test same_chars("quiaaaastuandnning,aaaaaaaaaaaaaack","quick") == false
    @test same_chars("iaueoaiueiaiaaa","abcdefghijklmnopqrstmayuabcdefghijklmnopqrstuvwxWorld!rownnxyznfoxvwxyz") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeforeohabcdefghijklmnopqrstutvwxyzeeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeStrongZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("The quicky brown fox jumps over the lazy dog","quicky") == false
    @test same_chars("gorgeous,","JJAuA") == false
    @test same_chars("ezzfwift,he fore","ezzfwift,he foreeee") == true
    @test same_chars("gaaaaaaaaaaaaaaaaaaaaaaaaaaaabbzelle!eezezezezezezezeeee","aafobrownxaaaeeeiou") == false
    @test same_chars("The quick brown fox jumps over the lazy dog","bewitchcattacoing,") == false
    @test same_chars("gazelle!","abcdefghijklmnopqrstmayuabcdefghijklmnopqrstuvwxWorld!rownnxyznfoxvwxyz") == false
    @test same_chars("abccdefghijklmnopqrstuvwxyz","abcd!rownxyz") == false
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","aaaaaeeeedHell,") == false
    @test same_chars("aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou","aaaeaaaeea12345607890edogiou") == false
    @test same_chars("ZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZe","nbn") == false
    @test same_chars("aaaastunning,aaaaaaaaaaaaaaaaaaaaaaabbbb","oabcdefghijklmnopqrstutvwxyz") == false
    @test same_chars("The Force Is Strong Withu","aaaaaeeeedHello,") == false
    @test same_chars("JAuAt","0987654321") == false
    @test same_chars("stunning,","aaaquickaeeedogi") == false
    @test same_chars("quiaaaasuaWorld!ndnning,aaaaaaaaaaaaaack","quWithu,aaaaaaaaaaaaaack") == false
    @test same_chars("nbrownoabfcdefghijklmnoeIsThe","The Force Is Strong With You") == false
    @test same_chars("lohedrWl!o ,","lohedrWl!o ,") == true
    @test same_chars("gaaaaaaaaaaaaaaaaaaaaaaaaaaaabbzelle!eezezezezezezezymayeeee","JuAut") == false
    @test same_chars("ZeZeZeZeZeZeZeZeJAuAZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZequicvkZeZeZeZeZeZeZeZeZeZeZeZe","abcdefghijklmnopqrstutvwxyz") == false
    @test same_chars("ayouemaybcdefghijklmnopqrsftuvwxyz","with") == false
    @test same_chars("ayouemaybwithWithaaaacdefghijklmnopqrstuvwxyz","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("aaaeaaaee12345607890edogiou","JuAlohedrWl!out") == false
    @test same_chars("abcdetuvwxWoprld!rownxyz","abcdetuovwxWoprld!rownxyz") == true
    @test same_chars("aaaastunning,aaaaaaaaaaaaaa","the") == false
    @test same_chars("ZeZeZeZeZeZeZeZeZeZeZeZeZeZ,eZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZ,eZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == true
    @test same_chars("tezzzezezemay the foreoabcdefghijklmnopqrstutvwxyze","the") == false
    @test same_chars("bewitbewforehcattacoing,ching,","God!") == false
    @test same_chars("Jt","The Force Is Strong With You") == false
    @test same_chars("bewitching,","Amazmay") == false
    @test same_chars("ezzzezezemay the foreoabcdoefghijklmZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZenopqrstutvwxyze","ezzzezezemay the foreoabcdoefghijklmZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZenopqrstutvwxyze") == true
    @test same_chars("aaaastunning,aaaaaaaaaaaaaaaaaaaaaaabbbb","abcdetuvwxWoprld!rownxyz") == false
    @test same_chars("aaeaaaee12345607890edogiou","aaeaaaee12345607890edogiou") == true
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","aaaaaeeeiou") == false
    @test same_chars("ezzmayabcdefghijklmnopqrstuvwxWorld!rownxyzfox the force be with youemay the foreee","ezzmay the force be with youemay tthe foreee") == false
    @test same_chars("World!you","you") == false
    @test same_chars("Witphpqrstutvwxyz","ZYXWVUTSRQSPONMLKJIHGFEDCBBA") == false
    @test same_chars("nbrown","aaeaaaeeeaaaaaaaaaaaaaaaaaaaaaaaaaaabbbabdogiou") == false
    @test same_chars("fore","fore") == true
    @test same_chars("do","abcdefghijkwithhlmnGod!") == false
    @test same_chars("ZYXWVUTSRQPONMLKJIHGFEDCBA","ZeZeZeZeZeZeZeZeJAuAZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("stunniabcZYJuAutXWVUTSRQPONMLKJIHGFEDCBAd!rownxyzng,","stunniabcd!rownxyzng,") == false
    @test same_chars("tacocat","bewitbewitchcattacoing,ching,") == false
    @test same_chars("brarndwn","brandwn") == true
    @test same_chars("123456foreoabcdefgGod!890","1234567890") == false
    @test same_chars("aaaeaaaee12345607890edogiou","oabcdefghijeklmnopqrstutvwxyz") == false
    @test same_chars("fobrowyouZeZeZeZenx","bbbbbbbbaaaaaaaaaaaaaaaaaaaaa") == false
    @test same_chars("ZYXWVUTSRQPONMLKJIHGFEDCBA","brown") == false
    @test same_chars("aaeaaaee12345607890edogiou","aaeaaaee123ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bbewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee45607890edogiou") == false
    @test same_chars("fabcdefghijklmnopqrhstuvwxyzoreohabcdefghijklmnopqrstutvwxyze","aaaaaeeedogiou") == false
    @test same_chars("ablcdefghijklmnopqrstuvwxWoprld!rownxyz","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("ZYXWVUTSRQPONMLKJIHGFEDFCBA","yobewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == false
    @test same_chars("abcdetuovwxWoprld!rownxmyyz","abcdetuovwxWoprld!rownxyz") == false
    @test same_chars("ZYXWVUTSRQPOUForceNMLKJIHGFEDCBA","brandw") == false
    @test same_chars("aaaastunning,aaaaaaaaaaaaaa","aaaastuquicvknning,aaaaaaaaaaaaaa") == false
    @test same_chars("nbwithWithaaan","nabcdefghijklmnopqrstmayuvwxyzbn") == false
    @test same_chars("specter","specter") == true
    @test same_chars("witheZeZeZZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZeth","witheZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZeth") == true
    @test same_chars("nbrownoabfcdefghijklmnoeIsThe","yobewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == false
    @test same_chars("foreetheee","catctaco") == false
    @test same_chars("aaaastuforeoabcdefgGod!a","my") == false
    @test same_chars("bewitchingwitheZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZZeZeZeZZeZeZeZeZeZeZZeZeZeZeth,","bewitchezzfwift,heing,") == false
    @test same_chars("mmay the fwit,ay","stunning,") == false
    @test same_chars("eIsZYXWVUTSRQSPONMFEDCBA","ezzzezezemay tehe foreoabcdefghijklWorvwxyze") == false
    @test same_chars("withWThe quick brown fox jumps over the lazy dogithaa","ezzmay") == false
    @test same_chars("abcdefghigazelle!eezezezezezezezeeeejklmnopqrtvwxyz","abcdefghigazelle!eezezezezezezezeeeejklmnopqrtvwxyz") == true
    @test same_chars("aaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbb","aaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbb") == true
    @test same_chars("ee12345607890edogiou","aaaeaaaee12345") == false
    @test same_chars("The Force Is Strong Witrh","The Force Is Strong With") == true
    @test same_chars("youzezezezeeeeezezezezezezezeeee0987654321","God! Amaze a stunning, gorggeous, bewitching, and dazzling specter of my dear gazelle!") == false
    @test same_chars("ezzzezezemay the foreoabcdefgGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!hijklmnopqrstutvwxyze","e Is Strong With You") == false
    @test same_chars("ZeZeZeZeZeZeZeZeJAuAZeZeZeZeZZeZe","ZeZeZeZeZeZeZeZeJAuAZeZeZeZeZZeZe") == true
    @test same_chars("ZYXWVUTSRQSPONMLKJIHGFEDCBBA","ZYXWVUTSRQSPONMLKJIHGFEDCBBA") == true
    @test same_chars("12345607890","12345607890") == true
    @test same_chars("AmaJJAuAze","aaeaaaee123ezzzezezezezezezeeGod!") == false
    @test same_chars("abcdefghijkwithhlmnopqrtvwxyz","stunniabcd!rownxyzng,") == false
    @test same_chars("youZeZeZeZe","aaeaaaeeeGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!aaaaaaaaaaaaaaaaaabbbbdogiou") == false
    @test same_chars("lohedrWl!o","ezzzezezemay the foreoabcdefgGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!hijklmnopqrstutvwxyze") == false
    @test same_chars("iaiquickyueiiaaa","12345678390") == false
    @test same_chars("bewitcZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZe","lohedrWl!o ,") == false
    @test same_chars("dWorld!Forcerownxog","dWorld!rownxog") == false
    @test same_chars("stunniabcd!rownxyzng,","stunniabcd!rownxyzng,") == true
    @test same_chars("abcdefghijklmnopqrstuvwxWorld!rownxyz","abcdefghijjklmnopqrstuvwxyz") == false
    @test same_chars("ezzzezezemay the foreoabcdefgGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!hijklmnopqrstutvwxyze","ezzzezezemay the foreoabcdefgGod! Amaze a stunning, gorgeou s, bewitching, and dazzling specter of my dear gazelle!hijklmnopqrstutvwxyze") == true
    @test same_chars("bewidogezezezezezeeeehing,","Amazmay") == false
    @test same_chars("foxran","bran") == false
    @test same_chars("e Is Strong With You","e Is Strong With You") == true
    @test same_chars("abcdefghijklmnopqrstutvwx","aaaaa") == false
    @test same_chars("ezzzezezezezezezeeeezeezezezezezezeeee","ezzzeHello, Wodrld!zezezezezezeeewithhezezezezezezezeeee") == false
    @test same_chars("abcdefghijkwithhlmnGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!opqrtvwxyz","abcdefghijklmnotacocatpqrstmayuabcdefghijklmnopqrstuvwxWorld!rownxyznfoxvwxyz") == false
    @test same_chars("ZeZZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZemay the forcfe be with youZeZeZeZe","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZZeZeZeZZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("aaaaa","aaa") == true
    @test same_chars("ezzzezezemay tehe foreorvwxyze","ezzzezezemay tehe foreoabcdefghijklWorld!rownxmnopqrstutvqwxyze") == false
    @test same_chars("ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee","ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee") == true
    @test same_chars("He!","Hello, Wodrld!") == false
    @test same_chars("abcdefghijklmnopqrstutvwbxyz","abcdefghijklmnopqrstutvwbxyz") == true
    @test same_chars("aaeaaaee123ezzzezezezezezezeeGod! Amaze a sGtunning, gorgeous, bbewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee45607890edogiou","aaeaaaee123ezzzezezezezezezeeGod! Amaze a stunning, gorgeous, bbewitching,aaaaaaaaaaaaaaaaaaaaaaaaaaabbbb and dazzling specter of my dear gazelle!eezezezezezezezeeee45607890edogiou") == true
    @test same_chars("dWorld!rownxog","dWorld!rownxog") == true
    @test same_chars("iaueoaiueiiaaaaalohedrWl!oa","thhe") == false
    @test same_chars("abcxdefghijkklmnopqrtvwxyz","JJAuA") == false
    @test same_chars("aaeaaaeeeGod! Amaze a stunning, gorgeous, bewitching, andaaaaaaaaaaaaaaabbbbdogiou","aaeaaaeeeGod! Amaze a stunning, gorgeous, bewitching, and dazzling specter of my dear gazelle!aaaaaaaaaaaaaaaaaabbbbdogiou") == false
    @test same_chars("quickghijklyourstuvwxyz","abcdpefghijklyourstuvwxyz") == false
    @test same_chars("AmaabcdefghijklmnopqrstmayuabcdefgohijklmnopqrstuvwxWorld!rownnxyznfoxvwxyzze","ezzezezezezezezezeeeezezezezezezezeeee") == false
    @test same_chars("dear","ayouremaybcdefghijklmnopqrstuvwxyz") == false
    @test same_chars("Hello, World!","ZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeZeforeohabcdefghijklmnopqrstutvwxyzeZeZeZeZeZeZeZeZZeZeZeZeZeZeZeZeZeZeZeZeZe") == false
    @test same_chars("09876541321","aaaaaeeieJAuAtu") == false
    @test same_chars("ezzmay the force be with youemay the foreee","ezzzezezfemay the foreee") == false
    @test same_chars("eaaeeiou","may the forcfe bhe wit") == false
end
