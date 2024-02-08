@testitem "016_count_distinct_characters_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "016_count_distinct_characters.jl"))
    @test count_distinct_characters("AbCdEfG") == 7
    @test count_distinct_characters("banana") == 3
    @test count_distinct_characters("1234567890") == 10
    @test count_distinct_characters("hello123") == 7
    @test count_distinct_characters("The quick brown fox jumps over the lazy dog") == 27
    @test count_distinct_characters("THISISALONGSTRINGWITHNOSPACES") == 14
    @test count_distinct_characters("aaaabbbbccccddddeeeeffffgggghhhhiiii") == 9
    @test count_distinct_characters("AaBbCcDdEeFfGgHhIi") == 9
    @test count_distinct_characters("hello world") == 8
    @test count_distinct_characters("1,2,3... go!") == 9
    @test count_distinct_characters("The quick brown fox jumps over the lazy doAbCdEfGg") == 27
    @test count_distinct_characters("hellold") == 5
    @test count_distinct_characters("1,2,3... gog!") == 9
    @test count_distinct_characters("lhello wworld") == 8
    @test count_distinct_characters("1,2,3... go123hello12345The quick brown fox jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfGg67890g!") == 40
    @test count_distinct_characters("AaBbCcThe quick brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIi") == 27
    @test count_distinct_characters("AaBbCcThe quichelloldk brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIi") == 27
    @test count_distinct_characters("1,2,3.hellold.. gog!") == 13
    @test count_distinct_characters("hello wThe quick brown fox jumps over the lazy doAbCdEfGgorld") == 27
    @test count_distinct_characters("hell1,2,3... go!o world") == 15
    @test count_distinct_characters("AbCdE") == 5
    @test count_distinct_characters("hellAbCdE world") == 11
    @test count_distinct_characters("1,2,3.AaBbCcThe quick brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIi.. go!") == 33
    @test count_distinct_characters("hello wThe quick brown fox jumps over e lazy doAbCdEfGgorld") == 27
    @test count_distinct_characters("1,2,3... go123hello12345The quick bbrown fox jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfSGg67890g!") == 40
    @test count_distinct_characters("THISISALONGSTSRINGWITHNOSPPACES") == 14
    @test count_distinct_characters("1,2,3hellold.hel,lold.. 2gog!") == 13
    @test count_distinct_characters("AEbCdE") == 5
    @test count_distinct_characters("The quick brcown fox jumps over the lazy doAbCdEfGg") == 27
    @test count_distinct_characters("CdE") == 3
    @test count_distinct_characters("1,2,3hellhelhelloldloldold.hel,lold.. 2gog!") == 13
    @test count_distinct_characters("1,2,3... go123hello12345The quick bbrown foxhellAbCdE world jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfSGg67890g!") == 40
    @test count_distinct_characters("The oquick brown fox jumps overg") == 22
    @test count_distinct_characters("AaBbCcThe qldGgHhIi") == 12
    @test count_distinct_characters("The quick brown fox jumps over t1,2,3... go123hello12345The quick bbrown foxhellAbCdE world jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfSGg67890g!he lazy doAbCdEfGg") == 40
    @test count_distinct_characters("hello wThe quick brrown fox jumps over e lazy doAbCdEfGgorld") == 27
    @test count_distinct_characters("Cd1,2,3hellhelhellol.dloldold.hel,lold.. 2gog!E") == 14
    @test count_distinct_characters("helllold") == 5
    @test count_distinct_characters("hellr1,2,3... go!o world") == 15
    @test count_distinct_characters("THISISALONNGSTRINGWITHNOSPACES") == 14
    @test count_distinct_characters("AahelloldBbCcThe quick brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIi") == 27
    @test count_distinct_characters("bananCd1,2,3ellhelhellol.dloldold.hel,lold.. 2gog!E") == 17
    @test count_distinct_characters("1,2,3..Cd1,2,3hellhelhellol.dloldold.hel,lold.. 2gog!E. go!") == 14
    @test count_distinct_characters("lhello wTHISISALONGSTRINGWITHNOSPACES") == 15
    @test count_distinct_characters("hello wo1,2,3... gog!rld") == 15
    @test count_distinct_characters("The quick brrown fox jumps over tehe lazy dog") == 27
    @test count_distinct_characters("hello wo1,2,3 gog!rld") == 14
    @test count_distinct_characters("The quick brcown cfox jumps over the lazy doAbCdEfGg") == 27
    @test count_distinct_characters("AaBbCcThe quichelloldk brown fox jumhelloldps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIi") == 27
    @test count_distinct_characters("hellAbCdE worhld") == 11
    @test count_distinct_characters("AaBbCcThe quichelloldk brown fox jumhelloldps over thello wThe quick brown fox jumps over e lazy doAbCdEfGgorldhe lazy doAbCdEfGgDdEeFfhello worldGgHhIi") == 27
    @test count_distinct_characters("THISISALONGSTRINGWITHNOSPACESThe quick brown fox jumps over the lazy doAbCdEfGg") == 27
    @test count_distinct_characters("1,2,3hellhelhelloldloldol1234567890d.hel,lold.. 2gog!") == 20
    @test count_distinct_characters("AaBbCcThe quichelloldk brown fox jumpsAaBbCcDdEeFfGgHhIiver the lazy doAbCdEfGgDdEeFfhello worldGgHhIi") == 27
    @test count_distinct_characters("123456789aaaabbbbccccddddeeeeffffgggghhhhiiii0") == 19
    @test count_distinct_characters("1,2,3.AaBbCcThe quick brown fox jumps over thhello worlde lazy doAbCdEfGgDdEeFfhello worldGgHhIi.. go!") == 33
    @test count_distinct_characters("The quick brcowen fox jumps over the lazy doAbCdEfGg") == 27
    @test count_distinct_characters("123456078980") == 10
    @test count_distinct_characters("12The quick brown fox jumps over t1,2,3... go123hello12345The quick bbrown foxhellAbCdE world jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfSGg67890g!he lazy doAbCdEfGg3456789aaaabbbbccccddddeeeeffffgggghhhhiiii0") == 40
    @test count_distinct_characters("THISISALONGSTSRIGWITHNOSPPACES") == 14
    @test count_distinct_characters("1,2,3.hellohello wo1,2,3 gog!rldld.. gog!") == 15
    @test count_distinct_characters("1,2,3hellhelhelloldloldol12345671,2,3... go123hello12345The quick bbrown foxhellAbCdE world jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfSGg67890g!890d.hel,lold.. 2gog!") == 40
    @test count_distinct_characters("1,2,3hellhelhelloldloldTHISISALONNGSTRINGWITHNOSPACESol1234567890d.hel,lold.. 2gog!") == 29
    @test count_distinct_characters("ACbCdEfG") == 7
    @test count_distinct_characters("The quick brown fox bCdEfGg") == 18
    @test count_distinct_characters("aaaabbbbccccddddeeeeffffggggAbCdEfGhhhhiiii") == 9
    @test count_distinct_characters("AahelloldBbCcThe quick brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldAGgHhIi") == 27
    @test count_distinct_characters("aaaabbbbccccddddeeeeffffggCdEgghhhhiiii") == 9
    @test count_distinct_characters("1,2,3.AaBbCcThe quick brown  fox jumps over thhello worlde lazy dofAbCdEfGgDdEeFfhello worldGgHhIi.. go!") == 33
    @test count_distinct_characters("AbCdEAahelloldBbCcThe quick brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIifG") == 27
    @test count_distinct_characters("AbCdEAahelloldBbCcThe quick browAaBbCcThe quichelloldk brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIin fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIifG") == 27
    @test count_distinct_characters("1,2,3hellhelhelloldloldol12345671,2,3... go123hello12345The quick bbrown foxhellAbCdE world jumpsl ovTHISISALONGSTRINGWITHNOSPACESer the liazy doAbCdEfSGg67890g!890d.hel,lold.. 2gog!") == 40
    @test count_distinct_characters("THISISALONGSTAaBbCcThe qldGgHhIiSRINGWITHNOSPPACES") == 18
    @test count_distinct_characters("THISISALONNGSTRINIGWITHNOSPACES") == 14
    @test count_distinct_characters("helAahelloldBbCcThe quick brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldAGgHhIilo123") == 30
    @test count_distinct_characters("AbCAaBbCcThe quichelloldk brown fox jumhelloldps over thello wThe quick brown fox jumps over e lazy doAbCdEfGgorldhe lazy doAbCdEfGgDdEeFfhello worldGgHhIidEfG") == 27
    @test count_distinct_characters("BKktjaBaaaabbbbccccddddeeeeffffgggghhhhiiiiKkh") == 12
    @test count_distinct_characters("The quick broTHISISALONGSTAaBbCcThe qldGgHhIiSRINGWITHNOSPPACESwn fox jumps over the lazy dog") == 27
    @test count_distinct_characters("1,2,3.hellold.. ghello wo1,2,3 gog!rldog!") == 15
    @test count_distinct_characters("The oquick brown fox jumps ove rg") == 22
    @test count_distinct_characters("The quick brown fox jumps over t1,2,3... go123hello12345The quick bbrown foxhellAbCdE world jumps ovTHISSISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfSGg67890g!he lazy doAbCdEfGg") == 40
    @test count_distinct_characters("CTHISISALONGSTSRIGWITHNOSPPACESdE") == 15
    @test count_distinct_characters("AbCdEAahelloldBbCcThe qCTHISISALONGSTSRIGWITHNOSPPACESdEuick brown fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIifG") == 27
    @test count_distinct_characters("1,2,3hellhelhelloldloldol12345671,2,3... go123hello12345The quick bbrown foxhellAbCdE world jumpsl ovTHISISALONGSTRINGWITHNOSPACESer the liazy doAbCdEfSGg67890g!890d.hel,lold.. 2gWog!") == 40
    @test count_distinct_characters("hellAbCdE wor1,2,3.hellohello wo1,2,l3 gog!rldld.. gog!hld") == 18
    @test count_distinct_characters("AbCdEAahelloldBbCcThe quick brown fox jumps over the lazy doAbCdEfGgDdEe Ffhello worldGgHhIifG") == 27
    @test count_distinct_characters("CTHISISALONGSTSRIGWITHNOSPPAdE") == 15
    @test count_distinct_characters("AbCdEAahelloldBbCcThe qCTHISISALONGSTSRIGWITHNOSPPACESdEuick brown fox jumps over tThe oquick brown fox jumps overghe lazy doAbCdEfGgDdEeFfhello worldGgHhIifG") == 27
    @test count_distinct_characters("AbCdEAahelloldBbCcThe quick browAaBbCcThe quichelloldk brown fox jumps over othe lazy doAbCdEfGgDdEeFfhello worldGgHhIin fox jumps over the lazy doAbCdEfGgDdEeFfhello worldGgHhIifG") == 27
    @test count_distinct_characters("BKktjaBaaaabbbbccccddddeeeeffffAaBbCcDdEeFfGgHhIigggghhhhiiiiKkh") == 12
    @test count_distinct_characters("The quick brown fox jumpsg over tThe quick brown foxl jumps over the lazy doAbCdEfGgazy doAbCdEfGg") == 27
    @test count_distinct_characters("The quick brown fox jumpsg over tThe quick brown foxl jumps over the lazy doAbCdEfGdEfGg") == 27
    @test count_distinct_characters("hello wThe quick brown fox jump1,2,3... go123hello12345The quick brown fox jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfGg67890g!s over the lazy doAbCdEfGgorld") == 40
    @test count_distinct_characters("The quick brown fox jumpsg over tThe quick brown foxl jumps oCver the lazy doAbCdEfGdEfGg") == 27
    @test count_distinct_characters("1,2,3.hellold.. The quick broTHISISALONGSTAaBbCcThe qldGgHhIiSRINGWITHNOSPPACESwn fox jumps over the lazy doggog!") == 33
    @test count_distinct_characters("1,2,3.hellohello wo1,2,3 go g!rldld.. gog!") == 15
    @test count_distinct_characters("AaBbCcThe quichelloldk brown fox jumps over the lazy doAbCdEfGgDdEeFfhello HworldGgHhIi") == 27
    @test count_distinct_characters("1,2,3... go123hello12345The quick bbrPown fox jumps oTRINGWITHNOSPACESer the lazy doAbCdEfSGg67890g!") == 39
    @test count_distinct_characters("1,2,3... g,o123hello12345The quick brown fox jumps ovTHISISALONGSTRINGWITHNOSPACESer the lazy doAbCdEfGg67890g!") == 40
    @test count_distinct_characters("THISISALONNGSTRINGITHNOSPACES") == 13
    @test count_distinct_characters("pneumonoultramicroscopicsilicovolcanoconiosis") == 14
    @test count_distinct_characters("\"I am a complex sentence, with lots of punctuation!\" said the fox.") == 22
    @test count_distinct_characters("1234\$%?!@") == 9
    @test count_distinct_characters("The quick brown fox jumps over the lazy dog. 1234567890") == 38
    @test count_distinct_characters("!\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`") == 30
    @test count_distinct_characters("This is a sentence with repeating characters, such as \"s\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("This is another sentence with repeating characters, such as \"t\", \"h\", and \"i\". The two sentences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("This sentence contains a mix of uppercase and lowercase letters, but all characters should be treated as distinct.") == 22
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the lazy dog.") == 30
    @test count_distinct_characters("22") == 1
    @test count_distinct_characters("distinct.") == 7
    @test count_distinct_characters("\"I am a complThe quick brown fox jumps over the lazy dogex sentence, with lots of punctuation!\" said the fox.") == 31
    @test count_distinct_characters("Then quick bro1234\$%?!@wn fox jumps over the lazy dog") == 36
    @test count_distinct_characters("\"h\",") == 3
    @test count_distinct_characters("am") == 2
    @test count_distinct_characters("222") == 1
    @test count_distinct_characters("complex") == 7
    @test count_distinct_characters("The quick brown fox jumptreateds ovebro1234\$%?!@wn the lazy dog. 1234567890") == 43
    @test count_distinct_characters("such") == 4
    @test count_distinct_characters("return") == 5
    @test count_distinct_characters("\"n\".") == 3
    @test count_distinct_characters("This is another sentenlazycters.") == 15
    @test count_distinct_characters("repeating") == 8
    @test count_distinct_characters("fox.lowercase") == 11
    @test count_distinct_characters("repcombinedeating") == 13
    @test count_distinct_characters("This is anoth\"i\".") == 10
    @test count_distinct_characters("vD22ZtLSjt") == 8
    @test count_distinct_characters("fox") == 3
    @test count_distinct_characters("repeaing") == 7
    @test count_distinct_characters("ureturn") == 5
    @test count_distinct_characters("repcombinedeaticontainsng") == 14
    @test count_distinct_characters("\"i\".") == 3
    @test count_distinct_characters("repting") == 7
    @test count_distinct_characters("of") == 2
    @test count_distinct_characters("aam") == 2
    @test count_distinct_characters("26of") == 4
    @test count_distinct_characters("fsox.Thenlowercase") == 14
    @test count_distinct_characters("distinThe quick brown fox jumps over the lazy dog. 1234567890ct.") == 38
    @test count_distinct_characters("ovebro1234\$%?!@wn") == 16
    @test count_distinct_characters("treated") == 5
    @test count_distinct_characters("\"i\"i.") == 3
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown foxasg.") == 24
    @test count_distinct_characters("vD22ZtLsenatencedistinTheSjt") == 14
    @test count_distinct_characters("quick") == 5
    @test count_distinct_characters("lazy") == 4
    @test count_distinct_characters("This sentence has repeating chasentenceracters such as \"t\", \"h\", and \"s\". The quick brown foxasg.") == 24
    @test count_distinct_characters("a") == 1
    @test count_distinct_characters("\"e\",") == 3
    @test count_distinct_characters("commplex") == 7
    @test count_distinct_characters("This is a sentence with repeating characters, such arepeatings \"s\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("\"s\",") == 3
    @test count_distinct_characters("comcomplexplex") == 7
    @test count_distinct_characters("reepeating") == 8
    @test count_distinct_characters("\"e\"e,") == 3
    @test count_distinct_characters("This sentence has repea ting characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the lazy dog.") == 30
    @test count_distinct_characters("The quick brown fox jumps ovy dog") == 24
    @test count_distinct_characters("dogex222") == 6
    @test count_distinct_characters("comcomplanoth\"i\".explex") == 14
    @test count_distinct_characters("The quick brown fox jumptreateds ovebro1anotherg. 1234567890") == 35
    @test count_distinct_characters("lletters,") == 6
    @test count_distinct_characters("bro1234\$%?!@wn") == 14
    @test count_distinct_characters("laazy") == 4
    @test count_distinct_characters("lots") == 4
    @test count_distinct_characters("distinct") == 6
    @test count_distinct_characters("repting222") == 8
    @test count_distinct_characters("as") == 2
    @test count_distinct_characters("characters,") == 8
    @test count_distinct_characters("ofis") == 4
    @test count_distinct_characters("characterrs,") == 8
    @test count_distinct_characters("commpplex") == 7
    @test count_distinct_characters("re\"h\",pting222") == 11
    @test count_distinct_characters("fox.") == 4
    @test count_distinct_characters("The quick brown fox jumps orepcombinedeaticontainsngazy dog. 1234567890") == 36
    @test count_distinct_characters("comcomplanotx") == 9
    @test count_distinct_characters("bro123\$4\$%?@!@wn") == 14
    @test count_distinct_characters("123?4\$\"e\",%?!@") == 12
    @test count_distinct_characters("quic") == 4
    @test count_distinct_characters("uch") == 3
    @test count_distinct_characters("This is  a sentence with repeating characters, such as \"s\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("commbrownpplex") == 11
    @test count_distinct_characters("uuch") == 3
    @test count_distinct_characters("This sentence has repea ting characters such as \"t\", \"h\", and \"s\". The quick bruown fox jumps over the lazy dog.fox.lowercase") == 30
    @test count_distinct_characters("ovebro1234\$%?!@@wn") == 16
    @test count_distinct_characters("comtwombrownpplex") == 12
    @test count_distinct_characters("222distinct") == 7
    @test count_distinct_characters("bro1234\$%?!123?4\$\"e\",%?!@@wn") == 17
    @test count_distinct_characters("dWesgo") == 6
    @test count_distinct_characters("uppercase") == 7
    @test count_distinct_characters("dogex") == 5
    @test count_distinct_characters("x") == 1
    @test count_distinct_characters("pting") == 5
    @test count_distinct_characters("colex") == 5
    @test count_distinct_characters("combined") == 8
    @test count_distinct_characters("edog.fox.lowerdogcase26of") == 15
    @test count_distinct_characters("all") == 2
    @test count_distinct_characters("dogegx") == 5
    @test count_distinct_characters("comcomplcommplexanotx") == 10
    @test count_distinct_characters("uchh") == 3
    @test count_distinct_characters("comtworownpplex") == 11
    @test count_distinct_characters("This is  a sentence with repeating cdWesgosuch as \"s\", \"e\", and \"n\".") == 19
    @test count_distinct_characters("comcomplanoth\"i\"explex") == 13
    @test count_distinct_characters("chasentenceracters") == 8
    @test count_distinct_characters("\"t\",") == 3
    @test count_distinct_characters("comtwo1234\$%?!@mbrownpplex") == 21
    @test count_distinct_characters("ofpneumonoultramicroscopicsilicovolcanoconiosis") == 15
    @test count_distinct_characters("chsalowercaseracters,") == 11
    @test count_distinct_characters("uThis is  a sentence with repeating cdWesgosuch as \"s\", \"e\", and \"n\".ch") == 19
    @test count_distinct_characters("This is another senthenlazycters.") == 15
    @test count_distinct_characters("sentence") == 5
    @test count_distinct_characters("\",") == 2
    @test count_distinct_characters("llettuppercaseers,") == 10
    @test count_distinct_characters("comcomplcommpl\"I am a complex sentence, with lots of punctuation!\" said the fox.exanotx") == 22
    @test count_distinct_characters("re\"h\",pting2\"22") == 11
    @test count_distinct_characters("fo\"e\"e,x") == 6
    @test count_distinct_characters("rQXXxau") == 5
    @test count_distinct_characters("bruown") == 6
    @test count_distinct_characters("comcompmlcommplexanotx") == 10
    @test count_distinct_characters("bro1n234\$%?!!@wn") == 14
    @test count_distinct_characters("This is another sentence with repeating characters, such as \"t\", \"h\", combinedand \"i\". The two sentences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("charas,") == 6
    @test count_distinct_characters("26oof") == 4
    @test count_distinct_characters("comcomplexplexting") == 11
    @test count_distinct_characters("\"I am a complex sentence, with lots of punctuation!\" said  the fox.") == 22
    @test count_distinct_characters("characterrcs,") == 8
    @test count_distinct_characters("comtwo1234\$%?!@mbrownre\"h\",pting222pplex") == 26
    @test count_distinct_characters("characters.") == 8
    @test count_distinct_characters("ovcomtwo1234\$%?!@mbrownre\"h\",pting222pplexebro1234\$%?!@@@wn") == 27
    @test count_distinct_characters("uquic") == 4
    @test count_distinct_characters("disitinct") == 6
    @test count_distinct_characters("This is a sentence with repeating characters, such as \"s\", foxasg.\"e\", and \"n\".") == 21
    @test count_distinct_characters("\"I") == 2
    @test count_distinct_characters("22re\"h\",pting2222") == 11
    @test count_distinct_characters("combinedand") == 9
    @test count_distinct_characters("comcomplcexplexting") == 11
    @test count_distinct_characters("\"i\"i1234567890.") == 13
    @test count_distinct_characters("bro1234\$%?This sentence contains a mix of uppercase and lowercase letters, but all characters should be treated as distinct.!@wn") == 31
    @test count_distinct_characters("combineThedand") == 11
    @test count_distinct_characters("This is  a sentence with repeating cdWesgosuch as \"s\", \"ee\", and \"n\".") == 19
    @test count_distinct_characters("dogo.") == 4
    @test count_distinct_characters("Thith repeabro1234\$%?This sentence contains a mix of uppercase and lowercase letters, but all characters should be treated as distinct.!@wnting charactarepea, such as \"s\", \"e\", and \"n\".") == 33
    @test count_distinct_characters("lowercase") == 8
    @test count_distinct_characters("ubro1234\$%?!123?4\$\"e\",%?!@@wnuch") == 20
    @test count_distinct_characters("Then quick bro1234\$%?z?!@wn fox jumps over the lazy dog") == 36
    @test count_distinct_characters("quiqc") == 4
    @test count_distinct_characters("repeainbeg") == 8
    @test count_distinct_characters("and") == 3
    @test count_distinct_characters("This sentence has repea ting characters such as \"t\", \"h\", and \"s\". The quick bruozy dog.fox.lowercase") == 27
    @test count_distinct_characters("fox.lowercasThith repeabro1234\$%?This sentence contains a mix of uppercase and lowercase letters, but all characters should be treated as distinct.!@wnting charactarepea, such as \"s\", \"e\", and \"n\".e") == 33
    @test count_distinct_characters("This sentence has repea ting characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the ldazy dog.") == 30
    @test count_distinct_characters("uppercasee") == 7
    @test count_distinct_characters("Thisall") == 6
    @test count_distinct_characters("aall") == 2
    @test count_distinct_characters("do2gex222") == 6
    @test count_distinct_characters("ofpunctuation!\"") == 11
    @test count_distinct_characters("!\"£\$charas,%^&*()_+-={}[]|\\:;\"<>,.?/~`") == 35
    @test count_distinct_characters("distinct.!@wnting") == 11
    @test count_distinct_characters("Thisallchasentenceracters") == 10
    @test count_distinct_characters("!\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/^~`") == 30
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown uuchfoxasg.") == 24
    @test count_distinct_characters("comcomplcommpl\"I am a complex senh lots of punctuation!\" said the fox.exanotx") == 20
    @test count_distinct_characters("vAhhv") == 3
    @test count_distinct_characters("\"I am a complThe quick brown fox jumps over the lazy dogex sentence, with lots of pion!\" said the fox.") == 31
    @test count_distinct_characters("repeabroThis is another sentenlazycters.s") == 17
    @test count_distinct_characters("ubro1234\$%?!123commpplex?4\$\"e\",%?!bro1234\$%?!123?4\$\"e\",%?!@@wn@@wnuch") == 24
    @test count_distinct_characters("amm") == 2
    @test count_distinct_characters("qCrF") == 4
    @test count_distinct_characters("brruown") == 6
    @test count_distinct_characters("The quick brown fox jumorepcombinedeaticontainsngazyptreateds ovebro1anotherg. 1234567890") == 37
    @test count_distinct_characters("This") == 4
    @test count_distinct_characters("Thith") == 3
    @test count_distinct_characters("\"I am a complThex quick brown fox jumps over the lazy dogex sentence, with lots of punctuation!\" said the fox.") == 31
    @test count_distinct_characters("\"Iubro1234\$%?!123commpplex?4\$\"e\",%?!bro1234\$%?!123?4\$\"e\",%?!@@wn@@wnuch") == 25
    @test count_distinct_characters("ubro1234\$%?!123commpplex?4\$\"e\",%?!bro123@wn@@wnuch") == 24
    @test count_distinct_characters("brrun") == 4
    @test count_distinct_characters("ZaojBy") == 6
    @test count_distinct_characters("chsalowercaseracters") == 10
    @test count_distinct_characters("dogegThis sentence has repea ting characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the lazy dog.") == 30
    @test count_distinct_characters("repeeainbeg") == 8
    @test count_distinct_characters("characterrcsr,") == 8
    @test count_distinct_characters("222distidnsct") == 7
    @test count_distinct_characters("comcomplcexple\"i\"i.xting") == 13
    @test count_distinct_characters("2t") == 2
    @test count_distinct_characters("combineThecomtworownpplex") == 14
    @test count_distinct_characters("fox.lowercasThith repeabro1234\$%?This sentence contains a mix of uppercase and lowercase letters, but all characters should be treated as anoth\"i\".distinct.!@wnting charactarepea, such as \"s\", \"e\", and \"n\".e") == 33
    @test count_distinct_characters("chaxsentenceracters") == 9
    @test count_distinct_characters("This is a sentence wtheith repeating characters, suchcomcomplcexplexting\".") == 21
    @test count_distinct_characters("brno1234\$%?!@wn") == 14
    @test count_distinct_characters("is") == 2
    @test count_distinct_characters("said") == 4
    @test count_distinct_characters("jumptreateds") == 10
    @test count_distinct_characters("pion!\"") == 6
    @test count_distinct_characters("The quick brown fox jumps over the lazy dog. 123456789") == 37
    @test count_distinct_characters("\"I am a comcharacterrs,plex sentence, with lots of punctuation!\" said the fox.") == 23
    @test count_distinct_characters("iss") == 2
    @test count_distinct_characters("\"I am a complThex quick brown fox jumps over the lazy dogex sentence, with lots nof punctuatiotn!\" said the fox.") == 31
    @test count_distinct_characters("comtworowncomcompmlcommplexanotxlex") == 12
    @test count_distinct_characters("fox.exanotx") == 8
    @test count_distinct_characters("\"h\"vD22ZtLsenatencedistinTheSjt,") == 16
    @test count_distinct_characters("comcomplcommplexanotxofis") == 13
    @test count_distinct_characters("26o") == 3
    @test count_distinct_characters("pirepeainbegon!\"") == 11
    @test count_distinct_characters("\"IdogegThis") == 9
    @test count_distinct_characters("This sentences has repeating characters such as \"t\", \"h\", and \"s\". The quick brown uuchfoxasg.") == 24
    @test count_distinct_characters("ddogex222") == 6
    @test count_distinct_characters("JdmjOJcRx") == 7
    @test count_distinct_characters("\"s\"\",") == 3
    @test count_distinct_characters("repeabroshould1234\$%?This") == 20
    @test count_distinct_characters("chasentenceeracters") == 8
    @test count_distinct_characters("ofpunbrrunctuuation!\"") == 13
    @test count_distinct_characters("\"I am a complThe quick brown fox jumps over the lazy dogex sentence, with lots of pion!\" said the foxh.") == 31
    @test count_distinct_characters("2tt") == 2
    @test count_distinct_characters("combibned") == 8
    @test count_distinct_characters("kEjzTF") == 6
    @test count_distinct_characters("22re\"hsenh\",pting2222") == 12
    @test count_distinct_characters("aallsescomcharacterrs,plexhouldntenlazycters.") == 19
    @test count_distinct_characters("suchcomcomplcexplexting\".") == 16
    @test count_distinct_characters("uppercae") == 6
    @test count_distinct_characters("comcompl1234567890explex") == 17
    @test count_distinct_characters("bro1234\$%?z?!@wn") == 15
    @test count_distinct_characters("repeabroThis") == 10
    @test count_distinct_characters("comcompmlcoThis is anoth\"i\".mmplexanotx") == 16
    @test count_distinct_characters("cdWesgosuch") == 9
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown uuchfoxrepeainbegasg.") == 24
    @test count_distinct_characters("jumps") == 5
    @test count_distinct_characters("@mbrownpplex") == 11
    @test count_distinct_characters("\"Iubro1234\$%?!123commpplex?w4\$\"e\",%?!bro1234\$%?!123?4\$\"e\",%?!@@wn@@wnuch") == 25
    @test count_distinct_characters("ammchasentenceracters") == 9
    @test count_distinct_characters("\"comcomplexplexi\".") == 10
    @test count_distinct_characters("\"I am a complex sentence, with lots of punct26ofuation!\" said the fox.") == 24
    @test count_distinct_characters("characterrss,") == 8
    @test count_distinct_characters("\"I am a complThe quick brown fox jumps over the lazy dogex sentence, wdistinThe quick brown fox jumps over the lazy dog. 1234567890ct.ith 26.") == 40
    @test count_distinct_characters("containins") == 7
    @test count_distinct_characters("rQXXQxau") == 5
    @test count_distinct_characters("26anoth\"i\".mmplexanotxf") == 16
    @test count_distinct_characters("jumpps") == 5
    @test count_distinct_characters("fox.lowercasThith") == 14
    @test count_distinct_characters("fsox.Thennlowercase") == 14
    @test count_distinct_characters("tureturn") == 5
    @test count_distinct_characters("Thitcharacters,h") == 9
    @test count_distinct_characters("This sentence has repeating chasentencer acters suc\"s\".and \"s\". The quick brown foxasg.") == 23
    @test count_distinct_characters("Then quick bro1234\$%?!@wn fox jumps over the dog.lazy dog") == 37
    @test count_distinct_characters("laaazy") == 4
    @test count_distinct_characters("\"i\"i.fox") == 6
    @test count_distinct_characters("This sentence has repea ting characters such as \"et\", \"h\", and \"s\". The quick brown fox jumps over the ldazy dog.") == 30
    @test count_distinct_characters("This is a a sentence with repeating characters, such as \"s\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("comccharacterrcs,omplcexple\"i\"i.xting") == 18
    @test count_distinct_characters("cmplex") == 6
    @test count_distinct_characters("ereepeating") == 8
    @test count_distinct_characters("ng\".") == 4
    @test count_distinct_characters("repea") == 4
    @test count_distinct_characters("repeabro1234\$%?This") == 17
    @test count_distinct_characters("cormtworownppubro1234\$%?!123commpplex?4\$\"e\",%?!bro123@wn@@wnuchlex") == 25
    @test count_distinct_characters("OTAcPh") == 6
    @test count_distinct_characters("bro1234\$%?!123?4\$\"e\"i\"i1234567890.\",%?!@@wn") == 25
    @test count_distinct_characters("dog") == 3
    @test count_distinct_characters("camharacterrcs,") == 9
    @test count_distinct_characters("jumpsdWesgo") == 10
    @test count_distinct_characters("This sentences has repeating charhacters such as \"t\", \"h\", and \"s\". The quick brown uuchfoxasg.") == 24
    @test count_distinct_characters("1234567890ct.ith") == 15
    @test count_distinct_characters(".\"i\"..") == 3
    @test count_distinct_characters("chsaloweraamcaseracters,") == 12
    @test count_distinct_characters("\"Iubro1234\$%?!123commpplex?4\$\"e\",%?!bro1234\$%?!123?4\$bro1234\$%?Thisn@@wnuch") == 27
    @test count_distinct_characters("comtworownpplereepeatingex") == 14
    @test count_distinct_characters("The quick brown fox jumps orepcombinedeaticonta2insngazy dog. 1234567890") == 36
    @test count_distinct_characters("lSJrRmZld") == 7
    @test count_distinct_characters("characters") == 7
    @test count_distinct_characters("aallsescomcharacter,rs,plexhouldntenlazycters.") == 19
    @test count_distinct_characters("osuchcomcomplcexplexting\".vebro1234\$%?!@@wn") == 29
    @test count_distinct_characters("characterrcstreated,") == 9
    @test count_distinct_characters("t enlazycters.") == 12
    @test count_distinct_characters("123456789") == 9
    @test count_distinct_characters("foxh.") == 5
    @test count_distinct_characters("gureptingquic") == 10
    @test count_distinct_characters("\"hThe quick brown fox jumptreateds ovebro1234\$%?!@wn the lazy dog. 1234567890\",") == 45
    @test count_distinct_characters("chraracterrss,") == 8
    @test count_distinct_characters("iissss") == 2
    @test count_distinct_characters("aaam") == 2
    @test count_distinct_characters("This sentence has repea ting characters such as \"tam\", \"h\", and \"s\". The quick bruozy dog.faamox.lowercase") == 28
    @test count_distinct_characters("Thitchareacters,h") == 9
    @test count_distinct_characters("iis") == 2
    @test count_distinct_characters("1234567890ct.") == 13
    @test count_distinct_characters("ovebro1234\$%?!@@!wn") == 16
    @test count_distinct_characters("dog.lazy") == 8
    @test count_distinct_characters("comabineThedlowercaseand") == 15
    @test count_distinct_characters("distinct.!@wn") == 10
    @test count_distinct_characters("Thitcharactersh,h") == 9
    @test count_distinct_characters("ddoge22") == 5
    @test count_distinct_characters("anoth\"i\".") == 8
    @test count_distinct_characters("JdmjOJcRdx") == 7
    @test count_distinct_characters("comcomplanoth\"i\".aexplex") == 14
    @test count_distinct_characters("sentence\"h\",") == 8
    @test count_distinct_characters("er@mbrownpplexeepeating") == 15
    @test count_distinct_characters("iidog.lazyssss") == 10
    @test count_distinct_characters("comcomplelxplexting") == 11
    @test count_distinct_characters("r\"ee\",eepeating") == 10
    @test count_distinct_characters("comtmbrownpplex") == 12
    @test count_distinct_characters("characcterrcs,") == 8
    @test count_distinct_characters("This sentence has rcepeating characters such as \"t\", \"h\", and \"s\". The quick brown foxasg.") == 24
    @test count_distinct_characters("\"hThe quick brown fox jumptreateds ovebro1234\$%?!@wn t\"Ihe lazy dog. 123456780\",") == 44
    @test count_distinct_characters("!.\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/^~`") == 30
    @test count_distinct_characters("distincnt.") == 7
    @test count_distinct_characters("comcomplanoth\"i\".expex") == 14
    @test count_distinct_characters("cowmtworownpplex") == 11
    @test count_distinct_characters("ovy") == 3
    @test count_distinct_characters("dcharaccterrcs,o2gex222") == 13
    @test count_distinct_characters("Then quick bro1234\$%?!@wn fox jumps over the dog.lazy bro1n234\$%?!!@wndog") == 37
    @test count_distinct_characters("fsox.Thenlowercasxe") == 14
    @test count_distinct_characters("comcompletreatedlxplelxting") == 14
    @test count_distinct_characters("bro1234\$%kEjzTF?!123?4\$\"e\",%?!@@wn") == 22
    @test count_distinct_characters("fsox.Thennedog.fox.lowerdogcase26ofowercase") == 18
    @test count_distinct_characters("ddog.oglletters,o.") == 10
    @test count_distinct_characters("dogeuchhx") == 8
    @test count_distinct_characters("osuchcomcomplcexplexting\".vebrThisallchasentenceracters%?!@@wn") == 25
    @test count_distinct_characters("distinct.!commbrownpplex@wnting") == 19
    @test count_distinct_characters("comtwo1234\$%?!@mb?rownre\"1234567890ct.h\",pting222pplex") == 33
    @test count_distinct_characters("\",,h\",,") == 3
    @test count_distinct_characters("osuchcomcodogegThis sentence has repea ting characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the lazy dog.mplcexplexting\".vebro1234\$%?!@@wn") == 39
    @test count_distinct_characters("fox.lowerandcasThith") == 16
    @test count_distinct_characters("ovcomtwo1234\$%?!@mcomtwo1234\$%?!@mbrownre\"h\",pting222pplexbrownre\"h\",pting222pplexebro1234\$%?!@@@wn") == 27
    @test count_distinct_characters("rereepeatingea") == 8
    @test count_distinct_characters("o4veb34\$%?!@wn") == 13
    @test count_distinct_characters("This is a sentence with repeating characters, such arepeatings \"s\" \"n\".") == 17
    @test count_distinct_characters("ovebro1comcompletreatedlxplelxting234\$%?!@wn") == 26
    @test count_distinct_characters("Then") == 4
    @test count_distinct_characters("sbro1234\$%kEjzTF?!123?4\$\"ew\",%foxasg.?!@@wn") == 27
    @test count_distinct_characters("comcomplexpcharacters,lextin") == 15
    @test count_distinct_characters("comccharacterrcs,omplcexple\"i\"ixting") == 17
    @test count_distinct_characters("suc") == 3
    @test count_distinct_characters("comcomplanoth\"i\"") == 11
    @test count_distinct_characters("disitinict") == 6
    @test count_distinct_characters(",\",") == 2
    @test count_distinct_characters("This sentence has rcepeating characters such acommplexs \"t\", \"h\", and \"s\". The quick brown foxasg.") == 26
    @test count_distinct_characters("anoth\"i\".distinct.!@wnticngTsentence\"h\",") == 17
    @test count_distinct_characters("ng\"\".") == 4
    @test count_distinct_characters("ano\"nh\",") == 6
    @test count_distinct_characters("\"t\",combineThedand") == 13
    @test count_distinct_characters("comcompmlcommplexanotxcomtwo1234\$%?!@mbrownre\"h\",pting222pplex") == 27
    @test count_distinct_characters("aaldisitinct") == 8
    @test count_distinct_characters("\"i\"i1234567890.This sentence has repea ting characters such as \"et\", \"h\", and \"s\". The quick brown fox jumps over the ldazy dog.") == 40
    @test count_distinct_characters("2characcterrcs,6o") == 11
    @test count_distinct_characters("This is another senthenlazycters.gureptingquic") == 19
    @test count_distinct_characters("complThex") == 9
    @test count_distinct_characters("!.\"£\$%^rQXXQxau&*()_+-={}[1234567890\",]|\\:;\"<>,.?/^~`") == 45
    @test count_distinct_characters("ofpunbrruncjuemptreatedswithtuuation!\"") == 20
    @test count_distinct_characters("rRrToH") == 4
    @test count_distinct_characters("nX") == 2
    @test count_distinct_characters("asbro1234\$%kEjzTF?!123?4\$\"ew\",%foxasg.?!@@w2nm") == 28
    @test count_distinct_characters("reepeeating") == 8
    @test count_distinct_characters("rQXXaQxau") == 5
    @test count_distinct_characters("Thitcharacte,h") == 8
    @test count_distinct_characters("\"hThe quick brown fox jumptreateds ovebro1234\$%?!@wn t\"Ihe lazy dog. \"123456780\",") == 44
    @test count_distinct_characters("rQXaaamXQxau") == 6
    @test count_distinct_characters("fox.lowaercasThith") == 14
    @test count_distinct_characters("This is  a sentence with repea ting characters, such as \"s\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("o222repcombinedeaticontainsngazy") == 17
    @test count_distinct_characters("focomplThexxh.") == 11
    @test count_distinct_characters("This is  a sentenece with repeating characters, such as \"s\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("JdmjOJcfoxasg.Rdx") == 12
    @test count_distinct_characters("ovebofpunbrruncjuemptreatedswithtuuation!\"ro1234\$%?!@@!wn") == 29
    @test count_distinct_characters("acomcomplanotx") == 9
    @test count_distinct_characters("This is a sentence with repeatieng characters, such asrepeatings \"s\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("comcharacterrs,plex") == 13
    @test count_distinct_characters("The quick brown fox lazy dog. 1234567890") == 33
    @test count_distinct_characters("enlazyrs.") == 9
    @test count_distinct_characters("\"\".") == 2
    @test count_distinct_characters("pirepeainbegoncomtwo1234\$%?!@mbrownre\"h\",pting222pplex\"") == 27
    @test count_distinct_characters("comcomplanooth\"i\".expex") == 14
    @test count_distinct_characters("foxasg.") == 7
    @test count_distinct_characters("\"Iubro1234\$%?!123commppchasentencerlex?4\$\"e\",%?!bro1234\$%?!123?4\$bro1234\$%?Thisn@@wnuch") == 28
    @test count_distinct_characters("123456789This is anoth\"i\".0ct.ith") == 21
    @test count_distinct_characters("\"comcomplexplexei\".") == 10
    @test count_distinct_characters("uccommbrownpplex") == 12
    @test count_distinct_characters("bronwn") == 5
    @test count_distinct_characters("ani\".") == 5
    @test count_distinct_characters("nof") == 3
    @test count_distinct_characters("renbeg") == 5
    @test count_distinct_characters("ibruowns") == 8
    @test count_distinct_characters("This is a sentence with repeatieng characters, such asrepThis is a sentence wtheith repeating characters, suchcomcomplcexplexting\".eatings \"s\", \"e\", and \"n\".") == 22
    @test count_distinct_characters("\"i\"i1234567890.This sentencefoxh. has repea ting characters such ast \"et\", \"h\", and \"s\". The quick brown fox jumps over the ldazy dog.") == 40
    @test count_distinct_characters("reptingereepeating") == 8
    @test count_distinct_characters("bro1234\$%?4This") == 14
    @test count_distinct_characters("22re\"hsenh\",pting2JdThe quick brown fox lazy dog. 1234567890mjOJcfoxasg.Rdx222") == 39
    @test count_distinct_characters("comcomplanorepeabroThistx") == 15
    @test count_distinct_characters("asbro11234\$%kEjzTF?!123?4\$\"ew\",%foxasg.?!@@w2nm") == 28
    @test count_distinct_characters("ovebro1anotherg.") == 12
    @test count_distinct_characters("fox.lower@mbrownpplexandcasThith") == 20
    @test count_distinct_characters("anoth\"i\".distinct.!@wnticngT\",") == 16
    @test count_distinct_characters("re\"h\",pti222") == 9
    @test count_distinct_characters("This is a sentence with repeatieng characters, such asrepThis is a sencexplexting\".eatings \"s\", \"e\", and \"n\".") == 20
    @test count_distinct_characters("\"Iubro1234\$%?!123commibruownspplex?4\$\"e\",%?!bro1234\$%?!123?4\$\"e\",%?!@@wn@@wnuch") == 26
    @test count_distinct_characters("@mbrolex") == 8
    @test count_distinct_characters(",222distidnsct\",") == 9
    @test count_distinct_characters("combineTcharacterrcstreated,hecomtworownpplexdogo.") == 20
    @test count_distinct_characters("comabiaseand") == 10
    @test count_distinct_characters("ng\"\".umps") == 8
    @test count_distinct_characters("ofpunbmptreatedswithtuuation!\"") == 18
    @test count_distinct_characters("ldazy") == 5
    @test count_distinct_characters("g\"f punctuation!\" said the fox.ureptingquic") == 21
    @test count_distinct_characters("\"s\"\",,") == 3
    @test count_distinct_characters("JdmjOfoxasg.Rdx") == 11
    @test count_distinct_characters("col") == 3
    @test count_distinct_characters("\"s\"") == 2
    @test count_distinct_characters("ovebofpunbrruncj\$%?!@@!wn") == 17
    @test count_distinct_characters("uThis is  a sentence withs repeating cdWesgosuch as \"s\", \"e\", and \"n\".chrQXXQxau") == 21
    @test count_distinct_characters("uuchfoxrepeainbegasg.") == 16
    @test count_distinct_characters("PZactersF") == 9
    @test count_distinct_characters("ting") == 4
    @test count_distinct_characters("fox.repeabro1234\$%?Thisxot") == 20
    @test count_distinct_characters("Thitchabro123\$4\$%?@!@wnracters,h") == 22
    @test count_distinct_characters("fox.ureptingquic") == 14
    @test count_distinct_characters("nfox.lowercasThith repeabro1234\$%?This sentence contains a mix of uppercase and lowercase letters, but all characters should be treated as anoth\"i\".distinct.!@wnting charactarepea, such as \"s\", \"e\", and \"n\".eg\"\".umps") == 33
    @test count_distinct_characters("uuchThis is another tsentence with repeating characters, such as \"t\", \"h\", combinedand \"i\". The two sentences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("The quick brown fox \"Iubro1234\$%?!123commpplex?w4\$\"e\",%?!bro1234\$%?!123?4\$\"e\",%?!@@wn@@wnuchjumps ovy dog") == 36
    @test count_distinct_characters("retturn") == 5
    @test count_distinct_characters("jcomtwo1234\$%?!@mbrownpplexumptreateds") == 26
    @test count_distinct_characters("rQXXxu") == 4
    @test count_distinct_characters("anoth\"i\".distinct.!@wani\".nting") == 15
    @test count_distinct_characters("rejum\"i\"i.foxrepeatingpsdWesgonbeg") == 20
    @test count_distinct_characters("commbrowcnpplex") == 11
    @test count_distinct_characters("Thitcharactersh") == 8
    @test count_distinct_characters("12345689") == 8
    @test count_distinct_characters("fsox.Thbrrunenlowercase") == 16
    @test count_distinct_characters("This is another sentenlazyctersThith.") == 15
    @test count_distinct_characters("The quick brown fox jumptreateds ovebro1234\$%zy dog. 1234567890") == 39
    @test count_distinct_characters("combineTcharacterrcstreated,hecomtworownpplexdogo\"hThe quick brown fox jumptreateds ovebro1234\$%?!@wn t\"Ihe lazy dog. 123456780\",.") == 44
    @test count_distinct_characters("llettupper\"i\"i1234567890.Thisrs,") == 22
    @test count_distinct_characters("osuchcomcomplcexple2xting\".vebro1234\$%?!@@wn") == 29
    @test count_distinct_characters("acommplexs") == 9
    @test count_distinct_characters("nfox.lowercasThith") == 15
    @test count_distinct_characters("ovebro1234\$%@wn") == 14
    @test count_distinct_characters("This sentence has repeating characteras such as \"t\",comcomplcommpl\"I am a complex senh lots of punctuation!\" said the fox.exanotx \"h\", and \"s\". The quick brown foxasg.") == 27
    @test count_distinct_characters("JdmjjOJcRdx") == 7
    @test count_distinct_characters("anoth\"i\".odistinct.!@wani\".nting") == 15
    @test count_distinct_characters("another") == 7
    @test count_distinct_characters("!.\"£\$%^rQXXovebro1234\$%?!@@!wnQxau&*()_+-={}[1234567890\",]|\\:;\"<>,.?/^~`") == 52
    @test count_distinct_characters("comcompletreatedlmxplelxting") == 14
    @test count_distinct_characters("dogegThis") == 8
    @test count_distinct_characters("comcompletreatemdlxplelxting") == 14
    @test count_distinct_characters("2chpion!\"araccterrcs,6o") == 16
    @test count_distinct_characters("\"II") == 2
    @test count_distinct_characters("\"t\"bro1234\$%?!123?4\$\"e\",%?!@@wn,") == 18
    @test count_distinct_characters("chsaloweraamcasefox.ureptingquicracters,") == 21
    @test count_distinct_characters("anno\"nh\",") == 6
    @test count_distinct_characters("\"123bro1234\$%?!123?4\$\"e\",%?!@@wn\",") == 17
    @test count_distinct_characters("ovebrdisitincto1234\$%?!@wn") == 21
    @test count_distinct_characters("g\"f") == 3
    @test count_distinct_characters("acoOTAcPhmmplexs") == 11
    @test count_distinct_characters("") == 0
    @test count_distinct_characters("22ore\"hsenh\",pting2JdThe quick brown fox lazy dog. 12345678902x222") == 38
    @test count_distinct_characters("\"e\"") == 2
    @test count_distinct_characters("letters,") == 6
    @test count_distinct_characters("afBra") == 4
    @test count_distinct_characters("The quick b9") == 11
    @test count_distinct_characters("2ttt") == 2
    @test count_distinct_characters("mix") == 3
    @test count_distinct_characters("This is ancomtworownpplexothycters.") == 18
    @test count_distinct_characters("coxmmpplex") == 7
    @test count_distinct_characters("distinThe") == 7
    @test count_distinct_characters("\"Iubro1234\$%?!123commpplex?w4\$\"e\",%?!bro1234\$%?!123?4\$\"e\",%?!@@wn@@wnuchjumps") == 27
    @test count_distinct_characters("cThis is ancomtworownpplexothycters.haras,") == 19
    @test count_distinct_characters("uThis") == 5
    @test count_distinct_characters("This is a sentence wtheith repeating chahracters, suchcomcomplcexplexting\".") == 21
    @test count_distinct_characters("mam") == 2
    @test count_distinct_characters("txilaO") == 6
    @test count_distinct_characters("ovebofpunebrruncjuemptreatedswithtuuation!\"ro1234\$%?!@@!wn") == 29
    @test count_distinct_characters("lletters") == 5
    @test count_distinct_characters("contains") == 7
    @test count_distinct_characters("22re\"hsing2JdThe") == 12
    @test count_distinct_characters("fox.lowaercasThithubro1234\$%?!123commpplex?4\$\"e\",%?!bro123@wn@@wnuch") == 30
    @test count_distinct_characters("\"n\".chrQXXQxau") == 10
    @test count_distinct_characters("t enlsazycsters.") == 12
    @test count_distinct_characters("fsox.ThbThis senreepeatingtence has repea ting characters such as \"tam\", \"h\", and \"s\". The quick bruozy dog.faamox.lowercaserrunenlowercase") == 28
    @test count_distinct_characters("This sentence contains a mix of uppercase and lowercharacter s should be treated as distinct.") == 21
    @test count_distinct_characters("uppecrcasee") == 7
    @test count_distinct_characters("ovebro1comcompletreatedlxplelx!@wn") == 18
    @test count_distinct_characters("\"comcomplexplex\"IIi\".") == 10
    @test count_distinct_characters("b,\",%ro123\$4\$%?@!@wn") == 16
    @test count_distinct_characters("disck brown fox jumps over the lazy dog. 1234567890ct.") == 37
    @test count_distinct_characters("iisss") == 2
    @test count_distinct_characters("reepepeating") == 8
    @test count_distinct_characters("ddogex222comtwombrownpplex") == 15
    @test count_distinct_characters("anoth\"i\".dist\"comcomplexplex\"IIi\".t.!@wani\".ntin") == 19
    @test count_distinct_characters("o222repcombinedeaticontainsngazzy") == 17
    @test count_distinct_characters("omptreateddswithtuuation!\"ro1234\$%?!@@!wn") == 24
    @test count_distinct_characters("This is another sentenlazyct ersThith.") == 15
    @test count_distinct_characters("ddocomtmbrownpplexge22") == 15
    @test count_distinct_characters("sentenciissseex") == 7
    @test count_distinct_characters("dog.faamox.lowercaserrunenlowercase") == 16
    @test count_distinct_characters("ThitTcharactersh,h") == 9
    @test count_distinct_characters("docharadcterrss,go.") == 12
    @test count_distinct_characters("disitinuucht") == 8
    @test count_distinct_characters("Then quick bro1234\$%?!@wn fox jumps over the dog.lazydWesgo dog") == 37
    @test count_distinct_characters("\"co,\",mcomplexplex\"IIi\".") == 11
    @test count_distinct_characters("\"\"i\"i.") == 3
    @test count_distinct_characters("This is  a sentenece with repeating characters, such as \"srereepeatingea\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("suchcomcompexplexting\".") == 16
    @test count_distinct_characters("@mx") == 3
    @test count_distinct_characters("disictinuuchtcomcomplcommpl\"I") == 13
    @test count_distinct_characters("\"Iubro1234\$%?!123commpplex?4\$\"e\",%?!bro1234\$%?!123?4\$\"e\",%?!chsaloweraamcaseracters,@@wn@@wnuch") == 28
    @test count_distinct_characters("rQXXxuu") == 4
    @test count_distinct_characters("accomtwombrownpplexomcomplanotx") == 13
    @test count_distinct_characters("Then quick bro1234\$%?!@wn afox jumps over the dog.lazydWesgo dog") == 37
    @test count_distinct_characters("ovcomtwo1234\$%?!@mcomtwo1234ownre\"h\",pting222pplexbrownre\"h\",pting222pplexebro1234\$%?!@@@wn") == 27
    @test count_distinct_characters("rQXxau") == 5
    @test count_distinct_characters("ovebro1anotenlazycters.herg.") == 17
    @test count_distinct_characters("sencexplexting\".eatings") == 13
    @test count_distinct_characters("This is anooverth\"i\".") == 13
    @test count_distinct_characters("characomcomplexplextingcters,") == 16
    @test count_distinct_characters("1111") == 1
    @test count_distinct_characters("\$%^&*aA") == 6
    @test count_distinct_characters("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA") == 1
    @test count_distinct_characters("абвгдеёжзийклмнопрстуфхцчшщъыэюя") == 32
    @test count_distinct_characters("aaaaa") == 1
    @test count_distinct_characters("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ") == 26
    @test count_distinct_characters("नमस्ते") == 6
    @test count_distinct_characters("こんにちは") == 5
    @test count_distinct_characters("The quick brown fox jucomplexmps over the lazy dog. 1234567890") == 38
    @test count_distinct_characters("ocharactersvver") == 9
    @test count_distinct_characters("\"I am a complex sentence, with lotsaid the fox.") == 20
    @test count_distinct_characters("sentence,") == 6
    @test count_distinct_characters("This is another sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two sentences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.") == 30
    @test count_distinct_characters("returtn") == 5
    @test count_distinct_characters("1This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@") == 39
    @test count_distinct_characters("over") == 4
    @test count_distinct_characters("1This sentence has repeating characters such as \"t\", \"hsentence\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@") == 39
    @test count_distinct_characters("This sentence has repeating characters suchlots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.") == 30
    @test count_distinct_characters("jucomplexmps") == 10
    @test count_distinct_characters("ocharactersvve") == 9
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over tehe rlazy dog.") == 30
    @test count_distinct_characters("pneocharactersvveumonoultramicroscopicsilicovolcanoconiosis") == 15
    @test count_distinct_characters("The quick brown fs over the lazy dog. 1234567890") == 34
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", 26\"h\", and \"s\". The quick brown fox jumps over the lazy dog.") == 32
    @test count_distinct_characters("uuppercase") == 7
    @test count_distinct_characters("The quick brown fox jucomplexmps over the  lazy d0") == 27
    @test count_distinct_characters("\"I am a complex sentence, with lotsaid ") == 18
    @test count_distinct_characters("1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@") == 39
    @test count_distinct_characters("1This sentence has repeating characte ssuch \"Ias \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@") == 39
    @test count_distinct_characters("suchlots") == 7
    @test count_distinct_characters("This sentence has repeating characters suchuppercaselots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.") == 30
    @test count_distinct_characters("This is another sentence with repeating characteers, suc two sentences combined should return 26 distinct characters.") == 23
    @test count_distinct_characters("ocharactersr") == 8
    @test count_distinct_characters("The quick brown fs over tocharactersrhe lazy dog. 1234567890") == 34
    @test count_distinct_characters("teheas") == 5
    @test count_distinct_characters("stetnce,") == 6
    @test count_distinct_characters("1234\$%%?!@") == 9
    @test count_distinct_characters("sttetnce,") == 6
    @test count_distinct_characters("1This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@") == 22
    @test count_distinct_characters("!\"£\$%^&*()_+-={suchuppercaselots}[]|\\:;\"<>,.?/~`") == 41
    @test count_distinct_characters("This sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.") == 30
    @test count_distinct_characters("The qThis sentence has repeating characters such as \"t\", 26\"h\", and \"s\". The quick brown fox jumps over the lazy dog.uick brown fs over tocharactersrhe lazy dog. 1234567890") == 40
    @test count_distinct_characters("pu!!\"") == 4
    @test count_distinct_characters("jucompplexmpjs") == 10
    @test count_distinct_characters("brown") == 5
    @test count_distinct_characters("This is another sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", and \"i\". The two sentences combined should return 26 distinct characters.") == 32
    @test count_distinct_characters("This is another se26\"h\",nt6ence with repeating characteers, suc two sentences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("This is a sentence with repeating characters, such as \"s.\", \"e\", and \"n\".") == 18
    @test count_distinct_characters("This sentence has repeating characters suchlots as \"t\", \"h\", asaidnd \"s\". The quick brown fox jumps over the rlazy dog.") == 30
    @test count_distinct_characters("1This sentence has respeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@") == 22
    @test count_distinct_characters("ssuch") == 4
    @test count_distinct_characters("1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@") == 35
    @test count_distinct_characters("1234\$%%?!3@") == 9
    @test count_distinct_characters("lase") == 4
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy .") == 30
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", 26\"h\", and \"rs\". The quick brown fox jumps over the lazy dog.") == 32
    @test count_distinct_characters("fs") == 2
    @test count_distinct_characters("pneumonoultramiicroscopicsilicovolcanoconiosis") == 14
    @test count_distinct_characters("octeheasharactersvver") == 9
    @test count_distinct_characters("This sentence contains a mix of uppercThis sentence has repeating characters suchuppercaselots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.ase and lowercase letters, but all characters should be treated as distinct.") == 30
    @test count_distinct_characters("!\"£\$%^&*()_+-={squickuchuppercaselots}[]|\\:;\"<>,.?/~`") == 44
    @test count_distinct_characters("This is another sentence with repeating characteers, suc two sentences combined should return 26 distinct foxcharacters.") == 25
    @test count_distinct_characters("This is twoanother sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two sentences bined should return 26 distinct characters.") == 23
    @test count_distinct_characters("octeheasharvver") == 9
    @test count_distinct_characters("1This sentstetnce,ence has respeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@") == 22
    @test count_distinct_characters("t\"h\",eheas") == 7
    @test count_distinct_characters("\"I am a complex sentence, with lots of punctuatsion!\" said the fox.") == 22
    @test count_distinct_characters("This sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@e quick brown fox jumps over the rlazy dog.") == 39
    @test count_distinct_characters("The quick brown fox jucomplexmps overThis sentence has repeating chcaracters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy . the  lazy d0") == 31
    @test count_distinct_characters("sttocteheasharactersvveretnce,") == 11
    @test count_distinct_characters("punctuation!\"") == 10
    @test count_distinct_characters("should") == 6
    @test count_distinct_characters("lotsaid") == 7
    @test count_distinct_characters("!\"£\$%^&*()_+-={squickuchuppercaselots}[]|]\\:;\"<>,.?/~`") == 44
    @test count_distinct_characters("tehheas") == 5
    @test count_distinct_characters("The quick brown fox jucomplexmps ovocharactersvverer the  lazy d0") == 27
    @test count_distinct_characters("\"I am a complex sentence, mwith lotsaid the fox.") == 20
    @test count_distinct_characters("This sentence has repeating c\"Iasharacters suchlots as \"t\", \"sttetnce,h\", and \"s\". Th1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@e quick brown fox jumps over the rlazy dog.") == 39
    @test count_distinct_characters("las\"IIe") == 6
    @test count_distinct_characters(",sttetnce,") == 6
    @test count_distinct_characters("\"\"I") == 2
    @test count_distinct_characters("\"sttetnce,h\",") == 8
    @test count_distinct_characters("oThis sentence has repeteheasg.cteheasharvver") == 15
    @test count_distinct_characters("This is another sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", and \"i\". The two sentences combined should return 26 distinct c haracters.") == 32
    @test count_distinct_characters("This is another sentence with repeating characters, such as \"te\", \"h\", and \"i\". The two sentences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("the") == 3
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quiclowercasever the rlazy dog.") == 24
    @test count_distinct_characters("This sentence contains a mix of uppercase and lowercase letters, but all characnters should be treated as distinct.") == 22
    @test count_distinct_characters("This sentence has repeatlowercaseumps over the lazy dog.") == 22
    @test count_distinct_characters("1234\$%%?!\$!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@") == 35
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the \"t\",rlazy .") == 30
    @test count_distinct_characters("Th1This") == 5
    @test count_distinct_characters("lotd") == 4
    @test count_distinct_characters("brownn") == 5
    @test count_distinct_characters("repeatlowercaseumps") == 12
    @test count_distinct_characters("The quick brown fox jumps over the lasttetnce,zy dog") == 28
    @test count_distinct_characters("\"I am a complex Thissentence, with lotsaid ") == 18
    @test count_distinct_characters("suchuppercaselots") == 11
    @test count_distinct_characters("lotrneturtnd") == 8
    @test count_distinct_characters("laocharactersvvezy") == 12
    @test count_distinct_characters("haracters.mix") == 11
    @test count_distinct_characters("laoc\"IIharactersvvese26\"h\",nt6encezy") == 18
    @test count_distinct_characters("charactThisersfs") == 9
    @test count_distinct_characters("1234\$%?!@\"t\",") == 12
    @test count_distinct_characters("\"\"\"Ichcaracters") == 9
    @test count_distinct_characters("This sentence has repeating c\"Iasharacters suchlots as \"t\", \"sttetnce,h\", and \"s\". Th1This sentence has repeating cha!@e quick brown fox jumps over the rlazy dog.") == 33
    @test count_distinct_characters("t\"h\",e\"\"\"Ichcaractersas") == 10
    @test count_distinct_characters("This is another sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two t\"h\",e\"\"\"Ichcaractersassentences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("punbrownnon!\"") == 9
    @test count_distinct_characters("oc1This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@haractersr") == 23
    @test count_distinct_characters("1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`\"I am a complex sentence, with lots of punctuatsion!\" said the fox.") == 52
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the lazy dog.This is twoanoither sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two sentences bined should return 26 distinct characters.") == 32
    @test count_distinct_characters("This sentence has repeating ci\"Iasharacters suchlots as \"t\", \"sttetnce,h\", and \"s\". Th1This sentence has repeating cha!@e quick brown fox jumps over the rlazy dog.") == 33
    @test count_distinct_characters("\"st\"tetnce,h\",") == 8
    @test count_distinct_characters("ocharactcersr") == 8
    @test count_distinct_characters("This sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@e quick brown fox jumps over thThis sentence has repeatlowercaseumps over the lazy dog.e rlazy dog.") == 39
    @test count_distinct_characters("laoc\"IIhmixaractersvvese26\"h\",nt6encezy") == 20
    @test count_distinct_characters("\"I!@") == 4
    @test count_distinct_characters("\"I am a complex senttuatsion!\" said the fox.") == 20
    @test count_distinct_characters("This is anothdistincter sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", and \"i\". The two sentences combined should return 26 distinct characters.") == 32
    @test count_distinct_characters("!\"£\$%^&*()_+oc1This-={squickuchuppercts}[]|\\:;\"<>,.?/~`") == 43
    @test count_distinct_characters("\"I am a complex sentence, mwith lotsaid the ffox.") == 20
    @test count_distinct_characters("suchuppercaspelots") == 11
    @test count_distinct_characters("This sentence has repeatinrg characters such as \"t\", 26\"h\", and \"s\". The quick brow lazy dog.") == 27
    @test count_distinct_characters("ssucsh") == 4
    @test count_distinct_characters("oThis") == 5
    @test count_distinct_characters("!\"£\$%^&*()_+-={squiThis sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@e quick brown fox jumps over thThis sentence has repeatlowercaseumps over the lazy dog.e rlazy dog.ckuchuppercaselots}[]|]\\:;\"<>,.?/~`") == 62
    @test count_distinct_characters("1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`\"I") == 35
    @test count_distinct_characters("ci\"Iasharacters") == 9
    @test count_distinct_characters(",strespeatingetnce,") == 11
    @test count_distinct_characters("FDJcjR") == 5
    @test count_distinct_characters("The quick brown fox jucothe lazy dog. 1234567890") == 34
    @test count_distinct_characters("\"charactiers,I am a complex sentence, with lots of punctuation!\" said the fox.") == 23
    @test count_distinct_characters("\"sttetnceThis is another sentence with repeating characteers, suc two sentences combined should return 26 distinct foxcharacters.,h\",") == 26
    @test count_distinct_characters("This sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte is@e quick brown fox jumps over the rlazy dog.") == 32
    @test count_distinct_characters("suc\"!I!@hlots") == 11
    @test count_distinct_characters("\"") == 1
    @test count_distinct_characters("doge") == 4
    @test count_distinct_characters("\"\"\"Ichc!\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`aracters") == 38
    @test count_distinct_characters("\"I am a complex Thissentence,  with lotsaid ") == 18
    @test count_distinct_characters("lasesaid") == 6
    @test count_distinct_characters("vQ") == 2
    @test count_distinct_characters("toThis sentence has repeteheasg.cteheasharvver") == 15
    @test count_distinct_characters("dasaidndog") == 7
    @test count_distinct_characters("toThis sentence haThis sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the lazy dog.This is twoanoither sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two sentences bined should return 26 distinct characters.s repeteheasg.cteheasharvver") == 32
    @test count_distinct_characters("doge,sttetnce,,") == 9
    @test count_distinct_characters("This is another sentence with repeating characters, such as \"te\", \"h\", and \"i\". The two sttocteheasharactersvveretnce,sentences combined should return 26 distinct characters.") == 25
    @test count_distinct_characters("haThis") == 5
    @test count_distinct_characters("The quick brown fox jumps over the lasttetnce,zy dogmix") == 28
    @test count_distinct_characters("suchuppercasspelots") == 11
    @test count_distinct_characters("las") == 3
    @test count_distinct_characters("uupperucase") == 7
    @test count_distinct_characters("brownThe quick brown fox jumps over the lasttetnce,zy dogn") == 28
    @test count_distinct_characters("d0") == 2
    @test count_distinct_characters("This sentence contaof uppercase and lowercase letters, but all characters should be trearted as dogedistinct.") == 21
    @test count_distinct_characters("This sentence has repeatinrg char1This sentence has repeating characte ssuch \"Ias \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@quick brow lazy dog.") == 39
    @test count_distinct_characters("haThisstetnce,") == 9
    @test count_distinct_characters("p\"u!!\"") == 4
    @test count_distinct_characters("haracters.") == 8
    @test count_distinct_characters("This sentence contains a mix of uppercase and lowercase letters, but all characters  treated as distinct.") == 22
    @test count_distinct_characters("characters.s") == 8
    @test count_distinct_characters("liasesaid") == 6
    @test count_distinct_characters("p\"u\"!!\"") == 4
    @test count_distinct_characters("1oThis234\$%?!@\"t\",") == 16
    @test count_distinct_characters("ssuch1234\$%%?!\$!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@") == 39
    @test count_distinct_characters("t\"h\",e\"\"\"IchcaractersassentencesThis") == 11
    @test count_distinct_characters("jucompplexmps") == 10
    @test count_distinct_characters("!\"£\$%^&*()_+-={squickuchuppercaselohts}[]|]\\:;\"<>,.?/~`") == 44
    @test count_distinct_characters("Thi\"Iass sentence has repeatlowercaseumps ovier the lazy dog.") == 23
    @test count_distinct_characters("0d0") == 2
    @test count_distinct_characters("ocharactcersrrlazy") == 11
    @test count_distinct_characters("This sentence has repeating characters sThis is another sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", and \"i\". The two sentences combined should return 26 distinct c haracters.ch as \"t\", \"h\", and \"s\". The quick brown fox jumps over tehe rlazy dog.") == 40
    @test count_distinct_characters("\"s.\",") == 4
    @test count_distinct_characters("Thee og. 1234567890") == 17
    @test count_distinct_characters("\"s\".This is another sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", and \"i\". The two sentences combined should return 26 distinct c haracters.") == 32
    @test count_distinct_characters("This is anothdistincter sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", .and \"i\". The two sentences combined should return 26 distinct characters.") == 32
    @test count_distinct_characters("charactThiseThis is another sentence with repeating characters, such as \"te\", \"h\", and \"i\". The two sentences combined should return 26 distinct characters.rsfs") == 25
    @test count_distinct_characters("\"Ias") == 4
    @test count_distinct_characters("rlazyeturn") == 9
    @test count_distinct_characters("\"s..\",") == 4
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", \"and \"s\". The quick brown fox jumps over the lazy dog.") == 30
    @test count_distinct_characters("sentencesall") == 7
    @test count_distinct_characters("\"charactiers,I am a uupperucaseon!\" said the fox.") == 21
    @test count_distinct_characters("respeating") == 9
    @test count_distinct_characters("oThiTs") == 5
    @test count_distinct_characters("The qu 1234567890") == 16
    @test count_distinct_characters("octeheashrarvver") == 9
    @test count_distinct_characters("This sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte is@e quick brown fox j rlazy dog.") == 30
    @test count_distinct_characters("oc1This") == 7
    @test count_distinct_characters("This sentence has repcontainseating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the \"t\",rlazy .") == 30
    @test count_distinct_characters("ocharactce1oThis234\$%?!@\"t\",rsrrlazy0d0") == 25
    @test count_distinct_characters("dog.ckuchuppercaselots}[]|]\\:;\"<>,.?/~`") == 30
    @test count_distinct_characters("anotheThis sentence has repeating characters suchlots as \"t\", \"h\", asaidnd \"s\". The quick brown fox jumps over the rlazy dog.r") == 30
    @test count_distinct_characters("haracters.ch") == 8
    @test count_distinct_characters("laocharactesvvezy") == 12
    @test count_distinct_characters("\"Iaas") == 4
    @test count_distinct_characters("The quick brown fox jucomplexmps overThis sentence havs repeating chcaracters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy . the  lazy d0") == 31
    @test count_distinct_characters("The quick brown fs over the lazy dog. 1234567890This sentence has repeating characters suchlots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.") == 40
    @test count_distinct_characters("Thee og. 41234567890") == 17
    @test count_distinct_characters("ocharaactersvve") == 9
    @test count_distinct_characters("Th1Ths") == 4
    @test count_distinct_characters("alll") == 2
    @test count_distinct_characters("sttee,") == 4
    @test count_distinct_characters("stnetnce,") == 6
    @test count_distinct_characters("ffox.") == 4
    @test count_distinct_characters("t\"h\",e\"\"\"Ichcaractersassentences") == 11
    @test count_distinct_characters("This sentence has repeating characters suchlots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazyog.") == 30
    @test count_distinct_characters("!\"£\$%^&*()_+-={squiThis sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown foshouldx jumps over the rlazy dog.234\$%?!@e quick brown fox jumps over thThis sentence has repeatlowercaseumps over the lazy dog.e rlazy dog.ckuchuppercaselots}[]|]\\:;\"<>,.?/~`") == 62
    @test count_distinct_characters("rownn") == 4
    @test count_distinct_characters("sttocte\"heasharactersvveretncet,") == 12
    @test count_distinct_characters("This is another se26\"h\",nt6ence with repeating characse26\"h\",nt6encetences combined should return 26 distinct characters.") == 24
    @test count_distinct_characters("ocharacersvver") == 8
    @test count_distinct_characters("1234\$%%%?!3@") == 9
    @test count_distinct_characters("is@e") == 4
    @test count_distinct_characters("ocactersr") == 7
    @test count_distinct_characters("rlazyetuurn") == 9
    @test count_distinct_characters("pu!p!foxcharacters.\"") == 15
    @test count_distinct_characters("\"ee\"") == 2
    @test count_distinct_characters("ocharactcersrrlaz1This sentstetnce,ence has respeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@") == 25
    @test count_distinct_characters("Th1Thi1s") == 5
    @test count_distinct_characters("This is another se26\"h\",nt6ence with repeating characse26\"h\",nt6encetences combined should retusentencern 26 distinct characters.") == 24
    @test count_distinct_characters("1Thi1s") == 5
    @test count_distinct_characters("\"I am a complex sentence, with lo tsaid ") == 18
    @test count_distinct_characters("\"s..,\",") == 4
    @test count_distinct_characters("a1This sentstetnce,ence has respeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@") == 22
    @test count_distinct_characters("\"charactiers,I") == 10
    @test count_distinct_characters("Thisci\"Iasharacters sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@e quick brown fox jumps over thThis sentence has repeatlowercaseumps over the lazy dog.e rlazy dog.") == 39
    @test count_distinct_characters("laochThis sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over tehe rlazy dog.aractersvvezy") == 30
    @test count_distinct_characters("1This sentence has repeating charters such as \"t\", \"h\", and \"s\". The quick \"I!@") == 22
    @test count_distinct_characters("octeheasharacThistersvver") == 10
    @test count_distinct_characters("octeheasharacterchcaracterssvver") == 9
    @test count_distinct_characters("1This") == 5
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy.") == 30
    @test count_distinct_characters("1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,?/~`\"I") == 34
    @test count_distinct_characters("1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/This is another sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two t\"h\",e\"\"\"Ichcaractersassentences combined should return 26 distinct characters.~`@") == 55
    @test count_distinct_characters("This ies another sentence with repeating characteers, suc two sentences combined should return 26 distinct foxcharacters.") == 25
    @test count_distinct_characters("122394567890") == 10
    @test count_distinct_characters("This is twoanother sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The twoThe quick brown fox jumps over the lasttetnce,zy dog sentences bined should return 26 distinct characters.") == 32
    @test count_distinct_characters("\"charactiaers,I am a uupperucaseon!\" said the fox.") == 21
    @test count_distinct_characters("laochThis senetence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over tehe rlazy dog.aractersvvezy") == 30
    @test count_distinct_characters("\"This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the \"t\",rlazy .Iaas") == 30
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". Th!\"£\$%^&*()_+-={suchuppercaselots}[]|\\:;\"<>,.?/~`quick brown fox jumps over the rlazy.") == 57
    @test count_distinct_characters("This is another sentence with repeating characters, such as \"te\", \"h\", and \"i\". The two sttocteheasharactersvveretnce,sces combined should return 26 distinct characters.") == 25
    @test count_distinct_characters("The quick brown fox jumps over the lasttetnce,suchzy dogmix") == 28
    @test count_distinct_characters("1234\$charactThisersfs%%?!\$!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@") == 44
    @test count_distinct_characters("\"This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox \"jumps over the \"t\",rlazy .Iaas") == 30
    @test count_distinct_characters("26\"h\",") == 5
    @test count_distinct_characters("p\"u!!\"laocharactesvvezy") == 16
    @test count_distinct_characters("octeThis sentence contains a mix of uppercase and lowercase letters, but all characnters should be treated as distinct.heasharactersvver") == 23
    @test count_distinct_characters("retrtn") == 4
    @test count_distinct_characters("This is anothdistinctercharacters.rsfs sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", .and \"i\". The two sentences combined should return 26 distinct characters.") == 33
    @test count_distinct_characters("\"In am a complex sentence, with lotsaid the fox.") == 20
    @test count_distinct_characters("ci\"Iasharaacters") == 9
    @test count_distinct_characters("t\"h\",e\"\"\"Ichcaractersassentencesog.This") == 14
    @test count_distinct_characters("dThis is another sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two t\"h\",e\"\"\"Ichcaractersassentences combined should return 26 distinct characters.og") == 24
    @test count_distinct_characters("!\"£\$%^&*()_+-c={squickuchuppercaselots}[]|]\\:;\"<>,This ies another sentence with repeating characteers, suc two sentences combined should return 26 distinct foxcharacters..?/~`") == 55
    @test count_distinct_characters("The brownnzy dog. 1234567890") == 24
    @test count_distinct_characters("This is another sentence bined should return 26 distinct characters.") == 18
    @test count_distinct_characters("\"In am a complex sentence, waith lotsaid the fox.") == 20
    @test count_distinct_characters("1Thi1") == 4
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quiclowercever the rlazy dog.") == 24
    @test count_distinct_characters("The") == 3
    @test count_distinct_characters("ste") == 3
    @test count_distinct_characters("distinct.heasharactersvver") == 12
    @test count_distinct_characters("p\"u!!\"laocharThis is anothdistincter sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", .and \"i\". The two sentences combined should return 26 distinct characters.actesvvezy") == 35
    @test count_distinct_characters("is@ee") == 4
    @test count_distinct_characters("dogtrearted") == 7
    @test count_distinct_characters("EQJmbBXT") == 7
    @test count_distinct_characters("tehe") == 3
    @test count_distinct_characters("\"t\",rlazy") == 8
    @test count_distinct_characters(",sufoxcharacters.,h\",chuppercaspelots") == 16
    @test count_distinct_characters("foshoulThis is another sentence with repeating characters, such as \"te\", \"h\", and \"i\". The two sttocteheasharactersvveretnce,sces combined should return 26 distinct characters.dxocharactcersr") == 27
    @test count_distinct_characters("retetn") == 4
    @test count_distinct_characters("punctuatsioncharacters.!\"") == 15
    @test count_distinct_characters("dog.uick") == 8
    @test count_distinct_characters("ssuchh") == 4
    @test count_distinct_characters("aThee og. 1234567890llll") == 19
    @test count_distinct_characters("characteers,") == 8
    @test count_distinct_characters("dotehheasg.ckuchuppercaselots}[]|]\\:;\"<>,.?/~`") == 30
    @test count_distinct_characters("tocharacters.rsfss") == 10
    @test count_distinct_characters("pneocharactersvveumonoultramicroscopicsilicovolcanocs") == 15
    @test count_distinct_characters("lastztetnce,zy") == 10
    @test count_distinct_characters(".\"s..,\"\",") == 4
    @test count_distinct_characters("122394567be890") == 12
    @test count_distinct_characters("The qu 1234567890.") == 17
    @test count_distinct_characters("uuupperucase") == 7
    @test count_distinct_characters("t\"hracoters.og\",e\"\"\"Ichcaractersas") == 13
    @test count_distinct_characters("retetnliasesaid") == 9
    @test count_distinct_characters("\"s") == 2
    @test count_distinct_characters("twoaThe quick brown fox jumps over the lasttetnce,suchzy dogmixnoither") == 28
    @test count_distinct_characters("\"In am  a complex sentence, waith lotsaid the fox.") == 20
    @test count_distinct_characters("aThe1e og. 1234567890laochThis sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over tehe rlazy dog.aractersvvezyllll") == 40
    @test count_distinct_characters("jucomplex!\"£\$%^&*()_+-={squickuchuppercaselohts}This is another sentence with repeating characteers, suc two sentences combined should return 26 distinct foxcharacters.[]|]\\:;\"<>,.?/~`mps") == 56
    @test count_distinct_characters("anotheThis sentence has repeating characters suchlots as \"t\", \"h\", asaidnd \"s\"anotheThis sentence has repeating characters suchlots as \"t\", \"h\", asaidnd \"s\". The quick brown fox jumps over the rlazy dog.r. The quick brown fox jumps over the rlazy dog.r") == 30
    @test count_distinct_characters("p\"u!!\"haracters.chlaochara1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/This is another sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two t\"hnces combined should return 26 distinct characters.~`@zy") == 57
    @test count_distinct_characters("!\"£\$%^&*()_+-={}p\"u!!\"[]|\\:;\"<>,.?/~`") == 32
    @test count_distinct_characters("The quick brown fox juco7890") == 21
    @test count_distinct_characters("p\"u!!\"haracters.chlaochara121234\$%%?!\$!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@\", \"h\", and \"i\". The two t\"hnces combined should return 26 distinct characters.~`@zy") == 56
    @test count_distinct_characters("senntencesa") == 6
    @test count_distinct_characters("repeteheasg.cteheasharvver") == 11
    @test count_distinct_characters("doge,stotetnce,,") == 9
    @test count_distinct_characters("al1iThi1l") == 6
    @test count_distinct_characters("octeheashrarvverdog.lastztetnce,zye") == 17
    @test count_distinct_characters("charactThiseThis is another sentence with repeating characters, such as \"te\", \"h\", and \"i\". The two sentences combined should return 26 distinct characcters.rsfs") == 25
    @test count_distinct_characters("lasttetnce,zy") == 10
    @test count_distinct_characters("This is a sentence with repeating characters, such as \"s.\", \"e\", atnd \"n\".") == 18
    @test count_distinct_characters("pneocharactersvveumonoultramicroscopicsilrepcontainseatingicovolcanocs") == 16
    @test count_distinct_characters("122394567be8The quick brown fox juco789090") == 27
    @test count_distinct_characters("122394trearted90") == 11
    @test count_distinct_characters("!\"£\$%^&*()_+oc1This-={squ1234\$charactThisersfs%%?!\$!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@ickuchuppercts}[]|\\:;\"<>,.?/~`") == 49
    @test count_distinct_characters("Thisdistinct. sentence has repeatlowercaseumps over the lazy dog.") == 22
    @test count_distinct_characters("This sentence has repeating characters suchlots as \"t\", \"h\", anhd \"s\". The quick brown fox jumps over the rlazy dog.") == 30
    @test count_distinct_characters("Thpis sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps ovechar1Thisr the rlazy .") == 31
    @test count_distinct_characters("conjumpstaof") == 11
    @test count_distinct_characters("Thpis sentence has repeating characters such as \"t\", \"h\", and \"s\". The t\"hracoters.og\",e\"\"\"Ichcaractersasechar1Thisr anothdistinctercharacters.rsfsthe rlazy .") == 23
    @test count_distinct_characters("suchs") == 4
    @test count_distinct_characters("\"\"\"This is anothdistinctercharacters.rsfs sentence with repeating charactiers, such as 1234\$%?!@\"t\", \"h\", .and \"i\". The two sentences combined should return 26 distinct characters.Ichc!\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`aracters") == 56
    @test count_distinct_characters("jucomplex!\"£\$%^&*()_+-={squickuchuppercaselohts}This is another sentence with repeating characteers, suc two sentences combined should returnm 26 distinct foxchara\\:;\"<>,.?/~`mps") == 53
    @test count_distinct_characters("chcaracters") == 7
    @test count_distinct_characters("\"s\"\".") == 3
    @test count_distinct_characters("laThis sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy.sesaid") == 30
    @test count_distinct_characters("punctuatsionchara\"cta\"") == 12
    @test count_distinct_characters("characters..s") == 8
    @test count_distinct_characters("ocharactervQr") == 9
    @test count_distinct_characters("dotrearted") == 6
    @test count_distinct_characters("twoThe") == 5
    @test count_distinct_characters(",sttetcnce,") == 6
    @test count_distinct_characters("charactTrhiserslofs") == 11
    @test count_distinct_characters("anotheThis sentence has repeating characters suchlots as \"t\", \"h\", asaidnd \"s\". The quick brown fox jumps over the rlazy do.r") == 30
    @test count_distinct_characters("ojucomplexmpsc1This") == 14
    @test count_distinct_characters("This setwoaThech as \"t\", \"h\", \"and \"s\". The quick brown fox jumps overthe the lazy dog.") == 30
    @test count_distinct_characters("This is another sentence binequickturn .\"s..,\"\",26 distinct characters.") == 21
    @test count_distinct_characters("This sentence has repeating characters suchlots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog") == 30
    @test count_distinct_characters("jucompp") == 6
    @test count_distinct_characters("1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`\"I am a comt\"h\",e\"\"\"Ichcaractersassentences said the fox.") == 49
    @test count_distinct_characters("ihaThis") == 5
    @test count_distinct_characters("rlazy.") == 6
    @test count_distinct_characters("1This sentenc\", and \"s\". The quick \"I!@") == 19
    @test count_distinct_characters("repet\"sttetnceThisasharvver") == 12
    @test count_distinct_characters("!\"£\$%^&*()_+-={squickuchuppercaselshouldots}[]|]\\:;\"<>,.?/~`") == 45
    @test count_distinct_characters("26\"\"h\",") == 5
    @test count_distinct_characters("punctuatscionchara\"cta\"") == 12
    @test count_distinct_characters("!\"£\$%^&*()_+-={squickuchuppercaselshouldots}[]|]\\:;\"</~`") == 41
    @test count_distinct_characters("charactThiseThis is another sentence with repeatingpunctuatsioncharacters.!\"ters, such as \"te\", \"h\", and \"i\". The two sentences combined should return 26 distinct characcters.rsfs") == 26
    @test count_distinct_characters("ovioevr") == 5
    @test count_distinct_characters("oschararctersvver") == 9
    @test count_distinct_characters("\"s\".") == 3
    @test count_distinct_characters("1This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick \"aI!@") == 22
    @test count_distinct_characters("se") == 2
    @test count_distinct_characters("characteerse,") == 8
    @test count_distinct_characters("foxcharacters.") == 11
    @test count_distinct_characters("do.r") == 4
    @test count_distinct_characters("\"I afoshouldxm a complex sentence, with lots of punctuatsison!\" said the fox.") == 22
    @test count_distinct_characters("\"\"s\"is\"\".") == 4
    @test count_distinct_characters("r\"epeatingpunctuatsioncharacters.!\"ters,") == 17
    @test count_distinct_characters("doge,tsttetnce,,") == 9
    @test count_distinct_characters("twoanoither") == 9
    @test count_distinct_characters("This is twoanother sentence with repeating characteers, such as \"t\", \"h\", aocharactervQrnd \"i\". The two sentences bined should return 26 dibutstinct characters.") == 25
    @test count_distinct_characters("\"sanother\"\".") == 10
    @test count_distinct_characters("1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`\"I am a comt\"h\",e\"\"\"Ichcaracterces said the x.") == 47
    @test count_distinct_characters("Thisdistinct.") == 8
    @test count_distinct_characters("The quick bro\"hsentence\",wn fox jumps over the lasttetnce,zy tdogmix") == 29
    @test count_distinct_characters("!\"£\$%^&*()_+oc1This-={squ1234\$charactThisersfs%%?!\$!;\"£{\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@ickuchuppercts}[]|\\:;\"<>,.?/~`") == 49
    @test count_distinct_characters("sentstetnce,ence") == 6
    @test count_distinct_characters("!\"£\$%^&*()_+-={squiThis sentence has repeating c\"Iasharacters suchlots as \"t\", \"h\", ande \"s\". Th1This sentence has repeating characte ssuch as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.234\$%?!@e quick brown fox jumps over thThis sentence has repeatlowercaseumps over the lazy dog.e rlazy dog.ckuchuppercaselots}[]|]\\:;\"<>,.?/~`") == 62
    @test count_distinct_characters("Thisdistinct.oc1This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@haractersr") == 23
    @test count_distinct_characters("binequickturn") == 10
    @test count_distinct_characters("sttocteheasharactersvveretnce,sces") == 11
    @test count_distinct_characters("This sentence has repeating characters such as \"t\", \"h\", aand \"s\". Th!\"£\$%^&*()_\"aI!@+-={suchuppercaselots}[]|\\:;\"<>,.?/~`quick brown fox jumps over the rlazy.") == 58
    @test count_distinct_characters("This is anothdistinctercharacters.rsfs sentence with renpeating charactiers, such as 1234\$%?!@\"t\", \"h\", .and \"i\". The two sentences combined should return 26 distinct characters.") == 33
    @test count_distinct_characters("dog.This") == 8
    @test count_distinct_characters("charters") == 7
    @test count_distinct_characters("This sentence has repeating c\"Iashcharactearacters suchlots as \"t\", \"h\", and \"s\". Th1This sentence has repeating characte is@e quick brown fox jumps over the rlazy dog.") == 32
    @test count_distinct_characters("jucomThis sentence has repeating characters such as \"t\", 26\"h\", and \"s\". The quick brown fox jumps over the lazy dog.pplexmps") == 32
    @test count_distinct_characters("haracrenpeatingters.ch") == 12
    @test count_distinct_characters("esttee,") == 4
    @test count_distinct_characters("This sentence has\"s repeating characters such as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy.") == 30
    @test count_distinct_characters("\"\"s") == 2
    @test count_distinct_characters("two") == 3
    @test count_distinct_characters("hasucracters.") == 9
    @test count_distinct_characters("sentsteisne") == 5
    @test count_distinct_characters("\"\"charactiers,I am a complex sentence, with lots of punctuation!\" said the fox.I") == 23
    @test count_distinct_characters("foshoulThis is another sentence with repeating characters, such as \"te\", \"h\", and \"i\".doge,tsttetnce,, The two sttocteheasharactersvveretnce,sces combined should return 26 distinct characters.dxocharactcersr") == 27
    @test count_distinct_characters("afoshouldxm") == 10
    @test count_distinct_characters("ocharactce1oThis234\$%?!@\"t\",rsrr\"lazy0d0") == 25
    @test count_distinct_characters("\"e\"\"") == 2
    @test count_distinct_characters("This sThis sentence has repeatlowercaseumps over the lazy dog.entence has repeating characters suchlots as \"t\", \"h\", and \"s\". The quick brown fox jumps over the rlazy dog.") == 30
    @test count_distinct_characters("st1234\$%%?!\$!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/~`@netnce,") == 40
    @test count_distinct_characters("\"In am  a compelex sente1This sentence has repeating characters such as \"t\", \"h\", and \"s\". The quick \"I!@nce, waith lotsaid the fox.") == 28
    @test count_distinct_characters(".and") == 4
    @test count_distinct_characters("p\"u!!\"haracters.chlaochara1234\$%%?!!;\"£\$%^&*()_+-={}[]|\\:;\"<>,.?/This is another sentence with repeating characteers, such as \"t\", \"h\", and \"i\". The two t\"hnces combined sharacters.chhould return 26 distinct characters.~`@zy") == 57
end
