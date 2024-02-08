@testitem "095_check_dict_case_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "095_check_dict_case.jl"))
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "New York", "income" => "\$50,000", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 35, "firstName" => "John", "cItY" => "new york")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("1" => "apple", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict("orange" => "fruit")) == true
    @test check_dict_case(Dict("8" => "banana")) == false
    @test check_dict_case(Dict("yellow" => "color")) == true
    @test check_dict_case(Dict("2019" => "year")) == false
    @test check_dict_case(Dict("PI" => 3.14159)) == true
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 35, "firstName" => "John")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "Doe", "city" => "New York", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("2019" => "yeyar")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "chINCEOMEerry", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "CITY" => "NK", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "firstName" => "John", "cItY" => "new york")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("COME" => "\$50,0000", "LAST_NAME" => "DOE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "New York", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict("yellow" => "color", "yell" => "clor")) == true
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 35, "cItIY" => 36, "firstName" => "John", "cItY" => "new yorok")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "Income" => "New York", "2" => "banana", "Inconme" => "bana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "New York", "income" => "\$50,000", "ageage" => "Dooe", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("1" => 35, "LAST_NAME" => "DOE", "CITY" => "NK", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "firstName" => "John", "LASTNAE" => "new yorAgeIncIomek", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict("Income" => "New York", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("new yorok" => "8", "first_name" => "John", "city" => "New York", "income" => "\$50,000", "ageage" => "Dooe", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "LASTENAME" => "Anew yorAgek", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "New YorNk", "income" => "\$50,000", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New York", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New Yoincomerk", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("COME" => "\$50,0000", "LAST_NAME" => "OE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict{String, Any}("Income" => "\$50,000", "Incomeyeyar" => "JoDooehn", "Age" => 35, "firstName" => "John")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 35, "firstName" => "John", "8" => "\$0,000")) == false
    @test check_dict_case(Dict{String, Any}("Income" => "\$50,000", "Age" => 35, "firstName" => "Johageage", "cItY" => "new york")) == false
    @test check_dict_case(Dict("IPI" => 2.6443947966293897, "JohaJgeage" => 3.14159, "Johageage" => 2.9360614575298136, "PI" => 3.14159)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "fruuit")) == false
    @test check_dict_case(Dict("first_name" => "oJohn", "Last_Name" => "Doe", "city" => "New York")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IPI", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict("Income" => "\$50,000", "Age" => "bana", "firstName" => "John", "LASTNAE" => "new yorAgeIncIomek", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("PI" => 1.7300435058060522)) == true
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Dooe", "Age" => 35, "FIRST_NAME" => "Jane", "chge" => "New YorkLAST_NAME", "chINCEOMEerryAge" => "\$50,00", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "New York" => "new york", "city" => "New York")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "Age" => "D", "firstName" => "John", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOlast_nameE", "Income" => "\$50,000", "Age" => 35, "cItIY" => 36, "firstName" => "John", "cItY" => "new yorok")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "Doe", "city" => "New York")) == false
    @test check_dict_case(Dict("NEW YORK" => "fDOlast_nameEirstName", "YorNk" => "firstNam\$50,0000e", "2019" => "firstName")) == false
    @test check_dict_case(Dict("orange" => "JoDooehn", "Dooe" => "JoDooehhn")) == false
    @test check_dict_case(Dict{String, Any}("YORK" => "\$50,00000", "COME" => "\$50,0000", "LAST_NAME" => "OE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgekcolor")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "oNew YorNk", "income" => "\$50,000", "last_name" => "Doe", "Newage" => "2,000", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("new yorok" => "8", "first_name" => "John", "income" => "\$50,000", "ageage" => "Dooe", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "YORK", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict("yellow" => "orange")) == true
    @test check_dict_case(Dict{String, Any}("COME" => "\$50,0000", "LAST_NAME" => "OE", "John" => "year", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("LAST_NAME" => "NK", "orange" => "JoDooehn", "Dooe" => "JoDooehhn")) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("yellow" => "oDDOErange")) == true
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "CITY" => "DOfDOlast_nameEirstNameE", "Age" => 35, "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "orange" => "INCOMEJohn", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "fruuit" => 34, "Income" => "\$50,000", "Last_Name" => "Doe", "Age" => 35, "" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "ruuit")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "cItAGEY" => "JJoDooehhnohaJgeage", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgekcolor", "firstN" => "JohaJgeage")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Anew")) == false
    @test check_dict_case(Dict("IPI" => 2.6443947966293897, "JohaJgeage" => 3.14159, "PPI" => 2.9360614575298136, "Johageage" => 2.9360614575298136, "PI" => 3.14159)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IP", "firstName" => "John", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "Last_Namme" => "fruit", "FIRST_NAME" => "Anew")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "New YorNk", "income" => "bana", "last_name" => "Doe", "age" => 36)) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 2.6189164796316335, "New YorkLASTcity_NAMEPI" => 2.3210819853008124, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "JIncomeyeyarohn", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("COME" => "\$50,0000", "John" => "year", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "Age" => 35, "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict("new yorrk" => 2.2762868739904514, "PI" => 1.7300435058060522)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "income" => "bana", "last_name" => "Doe", "age" => 36)) == false
    @test check_dict_case(Dict("Age" => 35)) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "_FIRST_NAME" => "JNew YorNke", "FIRST_NAME" => "Jane", "new yorAgeIncIomekIncome" => "1")) == false
    @test check_dict_case(Dict("I" => 2.7107068449059466, "New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IPI", "firstName" => "Joohn", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "fruurit")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "LASTENAME" => "Anew yorAgek", "IncYorkLASTcity_NAMEPIIome" => "Anenew yorAgeIncIomekw yorAgek", "ageage" => "cItYnew yorAgek", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "fruurit", "orYoincomerk\$50,00ange" => "fruuritt")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "Doe", "city" => "NNew YorkLASTcity_NAMEPIew York", "tfirst_name" => "JohJIncomeyeyarohnn")) == false
    @test check_dict_case(Dict("PI" => 1.9949170779000351)) == true
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRfirstNam\$50,0000eST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "1DOE", "Income" => "YorkLASTcity_NAMEPI", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "DYorNkoe", "city" => "New York", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "New YorkLAST_NALast_NammeMEPI" => 0.8622214662877261)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "firstName" => "Joohn", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "clor", "Income" => "YORK", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict("Income" => "NewYork", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 2.6189164796316335, "NNew YorkLASTcity_NAMEPIew York" => 2.2786871475765835, "New YorkLASTcity_NAMEPI" => 2.3210819853008124, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("new yorok" => "8", "first_name" => "John", "income" => "\$50,000", "ageage" => "Dooe", "last_name" => "Doe")) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "Income" => "New Yk", "2" => "banana", "Inconme" => "bana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 36, "firstName" => "John", "8" => "\$0,000")) == false
    @test check_dict_case(Dict("I" => 2.9360614575298136, "8PI" => 2.2268929884240265, "JohJIncomeyeyarohnn" => 1.9949170779000351, "New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("IncIome" => "FIRST_NAME", "LASTNAME" => "DOE", "firstName" => "Jooohn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Do", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "Last_Namme" => "fruit", "FIRST_NAME" => "Anew")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "firslast_nametName" => "cherry", "Age" => 36, "firstName" => "John", "8" => "\$0,000")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "chINCEOMEerry", "CITY3" => "cherr", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "oDDOErange")) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "2" => "banana", "Inconme" => "bana", "3" => "cherry")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "chINCEOMEerry", "2" => "orange", "3" => "cherry")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "chINCEOMEOerry", "2" => "orange", "3" => "cherry")) == false
    @test check_dict_case(Dict("Dooe" => "fruuritt", "LAST_NAAME" => "JNew YorNkeJoDooehn")) == false
    @test check_dict_case(Dict("PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "New YorkLAST_NALast_NammeMEPI" => 0.8622214662877261)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Age" => 35, "AAge" => "Jcherrohn", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "Newor\$50,00ange York", "Age" => 35, "Incoome" => "oJohn", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "IncIomNNew YorkLASTcity_NAMEPIew Yorke" => "CITY3", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "Newor\$50,00ange York", "Age" => 35, "" => "oJoh", "Incoome" => "oJohn", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "DYorNkoe", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 2.1459305021091426, "New YorkLASTcity_NAMEPI" => 2.3210819853008124, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "CITY" => "DOfDOlast_nameEirstNameE", "Age" => 36, "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Do", "Age" => 35, "FIRST_NAME" => "Anew", "chINCEOMEerryAge" => "\$50,00", "Last_Namme" => "fruit", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "fDOlast_nameEirstName" => "NNewYork", "city" => "New York")) == false
    @test check_dict_case(Dict{String, Any}("YORK" => "Anenew", "COME" => "\$50,0000", "LAST_NAME" => "OE", "Jcherrohn" => "chINCEOMEerryAnenew", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "firstName" => "John", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "fDOlast_nameEirstName" => "NNewYork", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Do", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "Last_Namme" => "fruit", "FIRST_NAME" => "Anew")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "LAST_NAME" => "\$\$50,000", "Income" => "\$50,000", "Age" => "IPI", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "New Yk" => "\$5fruuritt0,000", "city" => "New YorNk", "income" => "\$50,000", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "cItY" => "nenew yorAgeIncIomekw yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "CITTY" => 35, "CITY" => "DOfDOlast_nameEirstNameE", "Age" => 35, "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "New Yk" => 34, "city" => "New York", "income" => "\$50,000", "last_name" => "yorAgeIncIomek", "age" => 35)) == false
    @test check_dict_case(Dict("new yorrk" => 2.2762868739904514, "new ryorrk" => 1.7300435058060522, "PI" => 1.7300435058060522, "new ryorLast_Namerk" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "ccItAGEYItY" => "new yogrAgekk", "Age" => "IPI", "firstName" => "John", "firsnew yorAgektName" => "new yogrAgek", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "Age" => 35, "AGE" => 36, "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New York", "Age" => 35, "Incoome" => "kNew York", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("20new yorrk19" => "Newor\$50,00ange", "2019" => "")) == false
    @test check_dict_case(Dict("Income" => "chINCEOMEerry", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "New York", "income" => "\$50,000", "ageage" => "Inconme", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "DYorNkoe", "city" => "New York", "Last_Namme" => "yeyar", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict("IPI" => 2.6443947966293897, "JohaJgeage" => 3.14159, "IIPI" => 1.690316164828218, "Johageage" => 2.9360614575298136, "PI" => 3.14159)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "firstName" => "Joohn", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("Income" => "\$50,000", "Age" => 36, "firstName" => "John", "8" => "\$0,000")) == false
    @test check_dict_case(Dict{String, Any}("Newor\$50,00ange" => "NNewYork", "1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 37, "first_name" => "John", "Income" => "\$0,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("yellow" => "oraNewnge")) == true
    @test check_dict_case(Dict{String, Any}("1" => 37, "first_name" => "John", "Income" => "\$0,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "city" => "New York", "Age" => 35, "IncIncYorkLASJanelowome" => "New", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "D", "firstName" => "John", "cItY" => "new york")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "NewNEWor\$50,00ange York", "Age" => 35, "Incoome" => "oJohn", "FIRST_NAME" => "Jane", "Agee" => "\$50,0oNew YorNk00")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 35, "firstName" => "hJohn", "8" => "\$0,000")) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000", "IfDOlast_nameEirstNameNCOME" => 35)) == false
    @test check_dict_case(Dict{String, Any}("1" => 35, "LAST_NAME" => "oJoh", "CITY" => "NK", "AGE" => 35, "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui")) == false
    @test check_dict_case(Dict{String, Any}("COME" => "\$50,0000", "LAST_NAME" => "DOE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("IncIome" => "FIRST_NAME", "LASTNAME" => "YorNke", "firstName" => "Jooohn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "Anenew" => "INCOMEJJohn", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "Age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane", "firsnew yorAgektName" => "new yorAgeIncIomekIncome")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("new ryorrk" => 1.7300435058060522, "PI" => 1.7300435058060522, "new ryorLast_Namerk" => 2.6443947966293897)) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "AGE" => 35, "FIRST_NAME" => "John", "new yorAgek" => "DOYorkLAST_NAMEPI", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict("yelew" => "New YorkLAST_NAMEPI", "yelelow" => "CyellOME")) == true
    @test check_dict_case(Dict("InceIome" => "Last_Namme", "LASTNAME" => "DOE", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRfirstNam\$50,0000eST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,,000", "Last_Name" => "Doe", "city" => "new yorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("Dooe" => "fruuritt", "Age" => "ffruuritt", "LAST_NAAME" => "JNew YorNkeJoDooehn")) == false
    @test check_dict_case(Dict("IncIome" => "yorAgeIncIomek", "LASTNAME" => "YorNke", "firstName" => "Jooohn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "_FIRST_NAME" => "JNew YorNke", "new yorAgeIncIomekIncome" => "1")) == false
    @test check_dict_case(Dict("new yrk" => 1.6108425454874835, "new yorrk" => 2.2762868739904514, "PI" => 1.7300435058060522)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "DDOEIncome" => "\$50,00", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("yelew" => "NewT_NAMEPI", "yelelow" => "CyellOME")) == true
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane", "firsnew yorAgektName" => "new yorAgeIncIomekIncome", "citty" => "Jon")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incom2019e" => "Joh2,000n", "city" => "NewY York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "YorNk00", "Last_Name" => "Dooe", "yogrAgekk" => "Do\$\$50,000e", "CITY" => "Doe", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 36, "cItIY" => 36, "firstName" => "John", "cItY" => "new yorok")) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 2.6189164796316335, "New YorkLASTcity_NAMEPI" => 2.3210819853008124, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "New YorkLAST_NPAMEPI" => 1.3462361524091344)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "first_namme" => "\$50,0last_name00", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "New YorkLAST_NALast_NammeMEPI" => 0.17904925194593924)) == false
    @test check_dict_case(Dict{String, Any}("COME" => "\$50,0000", "LAST_NAME" => "OE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "2019n")) == false
    @test check_dict_case(Dict("income" => "\$50,000", "last_name" => "Doe")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "ccItAGEYItY" => "new yogrAgekk", "Age" => "IPI", "firsnew yorAgektName" => "new yogrAgek", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("city" => "New York", "ageage" => "Inconme", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("Income" => "\$50,000", "Age" => 35, "cItY" => "new york")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "Doe", "city" => "new yrk")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$500,000", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("AE" => "new", "1" => 35, "LAST_NAME" => "oJoh", "CITY" => "NK", "AGE" => 35)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,,000", "city" => "new yorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("IncIome" => "yorAgeIncIomek", "LASTNAME" => "YorNke", "year" => "first_name", "firstName" => "Jooohn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict("Do" => "EDOE", "LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Jon" => "Joohnn", "firstName" => "Joohn", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "LANewY YorkSTNAME" => "OE", "firstName" => "Joohn", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,0000", "firstName" => "John", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "firsnew", "Age" => "D", "firstsName" => "YoincomerkD", "firstName" => "John")) == false
    @test check_dict_case(Dict{String, Any}("NEW" => "1", "LASTNAME" => "DOE", "Income" => "\$50,000", "CITY" => "DOfDOlast_nameEirstNameE", "Age" => 35, "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "LASTNAE" => "new yorAgeIncIomek", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "yorok" => "Jooohn", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgekcolor")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$500,000", "Incomeyeyar" => "AAge", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("Income" => "\$00", "Inc" => "JNew", "Age" => "bana", "firstName" => "John", "LASTNAE" => "new yorAgeIncIomek", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 35, "firstName" => "John", "FIRST_NAME" => 36)) == false
    @test check_dict_case(Dict("yorrk19" => "yellow", "COME" => "\$50,0000", "John" => "year", "income" => "yelelow", "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("I" => 2.7107068449059466, "New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "CyellOME" => 1.6243371737850312)) == false
    @test check_dict_case(Dict("Dooe" => "JoDooehhn")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "LASTENAME" => "Anew yorAgek", "cItcY" => "DD", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("eAge" => "Yoincomerk", "LASTNAME" => "DOE", "Income" => "\$50,000NNewYork", "Age" => "D", "cItY" => "nenew yorAgeIncIomekw yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("first_name" => "oJohn", "Last_Name" => "DLAST_NAJohnMEe", "city" => "New York")) == false
    @test check_dict_case(Dict{String, Any}("AE" => "new", "1" => 34, "LAST_NAME" => "oJoh", "CITY" => "NK", "AGE" => 35)) == false
    @test check_dict_case(Dict("Do" => "EDOE", "LASTNAME" => "DOE", "Income" => "\$50eAge,000", "Age" => "IPI", "cItY" => "2", "IncIome" => "Anenew yorAgeIncIomekw yorAgek")) == false
    @test check_dict_case(Dict("PI" => 1.8117899160754405)) == true
    @test check_dict_case(Dict("NEW YORK" => "fDOlast_nameEirstName", "YorNk" => "firstNe", "2019" => "firstName")) == false
    @test check_dict_case(Dict("I" => 2.7107068449059466, "New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "CyellOME" => 1.6243371737850312)) == false
    @test check_dict_case(Dict("PI" => 2.7107068449059466)) == true
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Do", "Age" => 35, "FIRST_NAME" => "Anew", "citiy" => "8PI", "chINCEOMEerryAge" => "\$50,00", "Last_Namme" => "fruit", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York")) == false
    @test check_dict_case(Dict{String, Any}("FIRFIRSTNAMEAME" => "\$ryorLast_Namerk50,00000", "YORK" => "\$50,00000", "COME" => "\$50,0000", "LAST_NAME" => "OE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOcitiyE", "Income" => "\$50,000", "Age" => "D", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Incyellowome" => "INCOMEJohn", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("LASTNAME" => "DODE", "Age" => "D", "firstName" => "John", "cItY" => "new york")) == false
    @test check_dict_case(Dict{String, Any}("Last_eName" => "JanLast_Namee", "first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Dooe", "yogrAgekk" => "Do\$\$50,000e", "CITY" => "Doe", "Age" => 35, "cItIY" => "JafirstsNamee", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("PI" => 2.2762868739904514)) == true
    @test check_dict_case(Dict("IPI" => 2.6443947966293897, "JohaJgeage" => 3.14159, "PPI" => 2.9360614575298136, "Johageage" => 1.6108425454874835, "PI" => 3.14159)) == false
    @test check_dict_case(Dict("Income" => "KYORK", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "CITY" => "DOfDOlasNew Yoincomerkt_nameEirstNameE", "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict("first_name" => "IncIomNNew", "Last_Name" => "DYorNkoe", "city" => "New York", "FIRST_NAME" => "OE")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "IncIomme" => "DOfDOlasNew Yoincomerkt_nameEirstNameE", "Age" => "IPI", "firstName" => "hJoohhn", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("Income" => "\$50,000", "Age" => 35, "firstName" => "JoDo\$\$50,000ehageage", "cItY" => "new york")) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$hJoohhn50,000", "Last_Name" => "Doe", "city" => "New York", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "3" => "cherrfirstNy")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "D", "firstName" => "Johhn")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "fruuit" => "2,000", "Income" => "\$50,000", "IncIomNNew YorkLASTcity_NAMEPIew Yorke" => "CITY3", "Age" => "D", "firstName" => "John", "hJoohhn" => "Johhn")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "IP" => 36, "Age" => 35, "firstName" => "hJon", "8" => "\$0,000")) == false
    @test check_dict_case(Dict("Income" => "\$50,000", "ccItAGEYItY" => "new yogrAgekk", "Age" => "IPI", "firstName" => "John", "firsnew yorAgektName" => "new yogrAgek", "cItY" => "\$50,,000", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("Age" => "D", "firstName" => "Johhn")) == false
    @test check_dict_case(Dict("2\$0,000" => "chery", "2" => "banana", "3" => "first_name")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "firslast_nametName" => "cherry", "Age" => 36, "8" => "\$0,000")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOlast_nameE", "Income" => "\$50,000", "Age" => 35, "cItIY" => 37, "firstName" => "John", "cItY" => "new yorok")) == false
    @test check_dict_case(Dict("Joohn" => "DcItYnewOE", "Income" => "\$50,000", "LASTNAME" => "DOE", "Age" => "D", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "JNew YorNkeJoDooehn", "Income" => "\$500,000", "Incomeyeyar" => "AAge", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("InceIome" => "Last_Namme", "LASTNAME" => "DOE", "Age" => "I", "cItY" => "2")) == false
    @test check_dict_case(Dict("first_name" => "oJohn", "Last_Name" => "DLAST_NAJohnMEe")) == false
    @test check_dict_case(Dict("first_name" => "IncIomNNew", "city" => "New York", "FIRST_NAME" => "OE")) == false
    @test check_dict_case(Dict("Income" => "firsnew", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOlast_nameOE", "Income" => "\$50,000", "Age" => 35, "cItIY" => 37, "firstName" => "John", "cItY" => "new yochrrerryrok")) == false
    @test check_dict_case(Dict("new ryorrk" => 1.7300435058060522, "PI" => 2.2762868739904514, "new ryorLast_Namerk" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "D", "firstName" => "Johon", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict("cItAgee" => "DOEnew yorAgeIncIomekIncome", "Income" => "\$50,000", "LASTNAME" => "DOE", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DODE", "firstName" => "John", "cItY" => "new york")) == false
    @test check_dict_case(Dict{String, Any}("Last_eName" => "JanLast_Namee", "first_name" => "John", "Last_Name" => "Dooe", "yogrAgekk" => "Do\$\$50,000e", "CITY" => "Doe", "Age" => 35, "cItIY" => "JafirstsNamee", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("LASTNAME" => "1DOE", "Income" => "YorkLASTcity_NAMEPI", "Age" => "D", "firstName" => "John", "AoraNewngege" => "JNew YorkLAST_NAMEPIohn")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "cItY" => "FIRSTNAME", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$5DcItYnewOE0", "Age" => "DIncIome", "IencIome" => "FINew YorkLAST_NALast_NammeMEPIRSTNAME", "cItY" => "FIRSTNAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "firstName" => "John", "\$50,,000" => "0\$50,000", "8" => "\$0,000")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "IncomNew YorkLAST_NAMEe" => "new yorA\$0,000geIncIomrek", "LASTNAE" => "new yorAgeInDOfDOlasNew Yoincomerkt_nameEirstNameEcIomek", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict("IncIome" => "FIRST_NAME", "LASTNAME" => "YorNke", "firstName" => "Jooohn", "cItY" => "2", "Anew yorAgek" => "FIRSTNNAME")) == false
    @test check_dict_case(Dict{String, Any}("Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("Age" => "D", "firstName" => "Johnew yorAgekhn")) == false
    @test check_dict_case(Dict("LASTNAME" => "D", "Income" => "YORK", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "cyherry", "Last_Name" => "DYorNkoe", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRfirstNam\$50,0000eST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "D", "cItY" => "nenew yorAgeIncIomekw 2\$0,000yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "cItAGEY" => 36, "Age" => 35, "firstName" => "John", "FIRST_NAME" => 36)) == false
    @test check_dict_case(Dict{String, Any}("YORK" => "\$50,00000", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "year" => 37, "city" => "New YorNk", "income" => "bana", "last_name" => "Doe", "age" => 36)) == false
    @test check_dict_case(Dict("28.79129205112295" => "BEIHSKizc", "-21.558299894752437" => "DOE", "1.690316164828218" => "FXwMCxaHo", "-48.45477875780888" => "yorAgeIncIomek", "20.960571956786623" => "I", "33.803989620075356" => "D", "-98.15414377148647" => "DOYorkLAST_NAMEPI", "2.1459305021091426" => "JafirstsNamee", "2.6189164796316335" => "CqvytR", "0.8622214662877261" => "Zxdvjbw")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "fruuit" => 34, "Income" => "\$50,000", "Last_Name" => "color", "Age" => 35, "" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane", "1chery" => "\$50,1DOE000")) == false
    @test check_dict_case(Dict("new yorok" => "2019n", "LASTNAME" => "DOE", "Income" => "\$50,000", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "IP" => 36, "Age" => 35, "firstName" => "hJon", "8" => 36)) == false
    @test check_dict_case(Dict("new ryorLast\$50,000NNewYork_Namerk" => 1.7300435058060522, "new ryorrk" => 1.7300435058060522, "PI" => 2.9360614575298136, "new ryorLast_Namerk" => 2.6443947966293897)) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "cItAGEY" => 36, "ageage" => 36, "Age" => 35, "firstName" => "John", "FIRST_NAME" => 36)) == false
    @test check_dict_case(Dict("LAST_NAME" => "NK", "orange" => "JoDooehn")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "Jonew yorAgekcolorhn", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New York", "Age" => 35, "Incoome" => "kNew York")) == false
    @test check_dict_case(Dict{String, Any}("1" => 35, "LAST_NAME" => "oJoh", "CITY" => "NK")) == false
    @test check_dict_case(Dict("LASTNAME" => "YorNke", "IncI\$50,0000ome" => "222", "firstName" => "Jooohn", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("IncIome" => "FIRST_NAME", "LASTNAME" => "DOE", "firstName" => "Jooohn", "cItY" => "city", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRfirstNam\$500,0000eST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "year" => 38, "city" => "New YorNk", "income" => "bana", "last_name" => "Doe", "age" => 36)) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "Doe")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,,000", "city" => "new yorAgek", "Age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("new yorok" => "8", "first_name" => "John", "Last_Name" => "chge", "city" => "New York", "income" => "\$50,000", "ageage" => "Dooe", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("I" => "yorAgeIncIomekw", "LASTNAME" => "DOE", "Income" => "\$50,000", "firstName" => "John", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "Age" => 37, "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict("city" => "N8ew York", "FIRST_NAME" => "OE")) == false
    @test check_dict_case(Dict{String, Any}("city" => "New York", "income" => "\$5Yoincomerkt_nameEirstNameEcIomek0,000", "ageage" => "Inconme", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "cItY" => "NewYork", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "fruuit" => 34, "Income" => "\$50,000", "Last_Name" => "color", "Age" => 35, "" => 34, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "Age" => 35, "FIRST_NAME" => "nJane")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "LASTENAME" => "Anew yorAgek", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "cItAGEY")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "hJohn", "2" => "banana", "22" => "Johhn", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,,000", "city" => "new yorAgek", "Anenew" => "oJohn", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("Incom" => "Yoincomerkt_nameEirstNameEcIomek", "Age" => 35, "firstName" => "JohaInconmege", "cItY" => "new york")) == false
    @test check_dict_case(Dict("Income" => "YORK", "Age" => "D", "firstName" => "John", "Aege" => "nenew yorAgeIncIomekw yorAgek")) == false
    @test check_dict_case(Dict("IPI" => 1.9949170779000351, "new ryorLast\$50,000NNewYork_Namerk" => 1.7300435058060522, "new ryorrk" => 1.7300435058060522, "PI" => 2.9360614575298136, "new ryorLast_Namerk" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "Dooe" => "firstNam\$50,0000e", "city" => "new yorAgek", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("Income" => "New York", "33" => "8PI", "3" => "cherry")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "cItAGEY" => "JJoDooehhnohaJgeage", "Age" => "D", "firstName" => "Jhohn", "cItY" => "new yorAgekcolor", "firstN" => "JohaJgeage")) == false
    @test check_dict_case(Dict("LASTNAME" => "clor", "Income" => "YORK", "year" => "Johnew yorAgekhn", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "CITY" => "DOfDOlast_nameEirstNameE", "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict{String, Any}("new yorok" => "8", "first_name" => "John", "DOcitiyE" => 35, "income" => "\$50,000", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("yorok" => "yyorAgeIncIomekw", "Age" => 35, "FIRST_NAME" => "yorAgeIncIomekw")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Dooe", "Age" => 35, "Incomge" => "citty", "FIRST_NAME" => "Jane", "chge" => "New YorkLAST_NAME", "chINCEOMEerryAge" => "\$50,00", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "New York" => "new york", "Last_eName" => "AGE", "city" => "chery")) == false
    @test check_dict_case(Dict{String, Any}("1" => 37, "first_rname" => "Nehw YoJohageagek", "Last_Name" => "Dooe", "Age" => 35, "IncIncYorkLASJanelowome" => "New", "FIRST_NAME" => "Jane", "first_name" => "John", "Income" => "\$0,000", "Incyellowome" => "INCOMEJohn", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "FIRS222T_NAME" => "INCOMEJNohn", "city" => "New York")) == false
    @test check_dict_case(Dict("city" => "N8ew York", "citty" => "ONKE", "FIRST_NAME" => "OE")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "firrstName" => "chINCEOMEerryAnenew", "Income" => "\$50,000", "cItAGEY" => 36, "Age" => 35, "firstName" => "John", "FIRST_NAME" => 36)) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "\$50,00NewNEWor\$50,00ange0" => "age", "3" => "cherrfirstNy")) == false
    @test check_dict_case(Dict("IPI" => 1.9949170779000351, "firstNe" => 3.14159, "new ryorLast\$50,000NNewYork_Namerk" => 1.7300435058060522, "new ryorrk" => 1.7300435058060522, "PI" => 2.9360614575298136, "new ryorLast_Namerk" => 2.6443947966293897)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Anew", "Incyelllowome" => "\$5YorNke0,000")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "bananAGEa", "Income" => "chINCEOMEerry", "2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("FIRSMT_NAME" => "Jan2,000e", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("Anew yorrk" => "1", "Dooe" => "fruuritt", "Age" => "ffruuritt")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "Jon")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incom2019e" => "Joh2,000n", "city" => "YORKNewY York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("1" => "apple", "2" => "banana", "3" => "Johhn")) == false
    @test check_dict_case(Dict("LASTNAME" => "YorNke", "firstName" => "Jooohn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "city" => "new chINCEOMEOerryyorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("AAge" => "Jcherrohn", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "NK", "chINCEOMEerryAge" => "\$50,00", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("NEW" => "1", "LASTNAME" => "DOE", "Income" => "\$50,000", "CITY" => "DOfDOlast_nameEirstNameE", "Age" => 35, "firstName" => "John", "cItY" => "INCOME")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "FIRSTNAME" => 38, "Last_Name" => "Do", "Age" => 35, "FIRST_NAME" => "Anew", "citiy" => "8PI", "chINCEOMEerryAge" => "\$50,00", "Last_Namme" => "fruit", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York")) == false
    @test check_dict_case(Dict{String, Any}("Income" => "\$50,000", "Age" => 35)) == false
    @test check_dict_case(Dict("IPI" => 2.6443947966293897, "PPI" => 2.9360614575298136, "Johageage" => 2.9360614575298136, "PI" => 3.14159)) == false
    @test check_dict_case(Dict{String, Any}("chrerry" => "Anennew", "YORK" => "Anenew", "COME" => "\$50,0000", "LAST_NAME" => "OE", "Jcherrohn" => "chINCEOMEerryAnenew", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("1" => "apple", "Jonew yorAgekcolorhn" => "JohaInconmege", "2" => "banana", "3" => "Johhn")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "cItAGEY" => "JJoDooehhZxdvjbwnohaJgeage", "Age" => "D", "firstName" => "Jhohn", "cItY" => "YorNk")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "fcityirstName" => "nAgeeew york", "Age" => "D", "firstName" => "John", "cItY" => "new yyork")) == false
    @test check_dict_case(Dict{String, Any}("LASTE" => "cItY", "LASTNAME" => "DOE", "Age" => 35, "firstName" => "John", "FIRST_NAME" => 36)) == false
    @test check_dict_case(Dict("N8ew York" => "Jocyherrynohn", "LASTNAMTE" => "Jonohn", "LASTNAME" => "DOE", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("first_name" => "IncIomNNew", "Last_Name" => "DYorNkoe", "FIRST_NAME" => "OE")) == false
    @test check_dict_case(Dict("eAge" => "\$50,000NNewYorkYoincomerk", "LASTNAME" => "DOE", "Age" => "D", "AJan2,000ege" => "DD", "cItY" => "nenew yorAgeIncIomekw yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,,000", "Age" => 35)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D22", "cItY" => "nenew yorAgeIncIomekw yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("IncIom" => "FINew YorkLAST_NALast_NammeMEPIRSTNAME", "LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("InceIome" => "Last_Namme", "LASTNAME" => "DOE", "Age" => "I2", "cItY" => "2")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "LASTN" => "DD", "firstName" => "John", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict("2\$0,000" => "chery", "2" => "banana")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Incyellowome" => "INCOMEJohn", "city" => "New York", "Age" => 35, "FIRST_NAME" => "nJane")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "IncIomNNew YorkLASTcity_NAMEPIew Yorke" => "yorAgek", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "D")) == false
    @test check_dict_case(Dict("cItYJocyherrynohn" => "Joohn", "Do" => "EDOE", "LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IPI", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "ONKE", "firstName" => "John")) == false
    @test check_dict_case(Dict("IncIome" => "yorAgeIncIomek", "LASTNAME" => "YorNke", "cIttY" => "JooohyorAgeIncIomekn", "firstName" => "Jooohn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "IPI", "cItY" => "2")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "new chINCEOMEOerryyorAgek", "Age" => 36, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("IncIome" => "yorAgeIncIomek", "LASTNAME" => "YorNke", "cIttY" => "JooohyorAgeIncIomekn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "New YorNk", "income" => "bana", "last_name" => "Doe", "age" => 37)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Ag" => "new y", "Age" => "D", "firstName" => "John")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "city" => "New York", "Last_e" => "Yoincomerk", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("Income" => "cyherry", "Last_Name" => "DYorNkoe", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 2.6189164796316335, "\$\$50,000" => 2.79480680351591, "New YorkLASTcity_NAMEPI" => 2.3210819853008124, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "New YorkLAST_NPAMEPI" => 1.3462361524091344)) == false
    @test check_dict_case(Dict{String, Any}("1" => 38, "Incyellowome" => "INCOMEJohn", "city" => "New York", "FIRST_NAME" => "nJane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 35, "LAST_NAME" => "oJoh", "CITY" => "Anew yorrk")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "CITY" => "DOfDOlast_nameEirstNameE", "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict("new yorok" => "2019n", "LASTNAME" => "DOE", "IncIome" => "FIRST_NAMIE")) == false
    @test check_dict_case(Dict("Do" => "EDOE", "LASTNAME" => "DOE", "Age" => "IPI", "IncIome" => "Anenew yorAgeIncIomekw yorAgek")) == false
    @test check_dict_case(Dict("IncomJohhne" => "DEOE", "LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "D", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("cItIYY" => 35, "LASTNAME" => "DOE", "Income" => "\$50,000", "2" => "Yk", "Age" => 35, "cItIY" => 36, "firstName" => "John", "cItY" => "new yorok")) == false
    @test check_dict_case(Dict{String, Any}("COME" => "\$50,0000", "LAST_NAME" => "OE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "2019n", "LASTNAECOME" => 37)) == false
    @test check_dict_case(Dict{String, Any}("cItIYYnew ryorrk" => "Yk2,000", "cItIYY" => 35, "LASTNAME" => "DOE", "Income" => "\$50,000", "2" => "Yk", "Age" => 35, "cItIY" => 36, "firstName" => "John", "cItY" => "new yorok")) == false
    @test check_dict_case(Dict("CyellOMEcItY" => "chge", "LASTNAME" => "DOE", "Income" => "\$50,000", "cIctY" => "DOE33", "Age" => "D22", "cItY" => "nenew yorAgeIncIomekw yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New Yrork", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("city" => "AoraNewngegeNew York", "income" => "\$5Yoincomerkt_nameEirstNameEcIomek0,000", "ageage" => "Inconme", "last_name" => "Doe", "LASTENAMEage" => "\$5Yoincomerkt_nameEirsttNameEcIomek0,000", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "DOEnew yorAgeIncIomekIncome" => "ONKE", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "first_name" => "John", "Age" => 35, "FIRST_NAME" => "Jane", "1chery" => "\$50,1DOE000")) == false
    @test check_dict_case(Dict("Income" => "chINCEOMEerry", "2" => "banana", "Incomge" => "new yorAgeIncIomek", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York", "Age" => 35, "cityyorA\$0,000geIncIomrek" => "JJohn")) == false
    @test check_dict_case(Dict("Age" => "IPI", "IncIome" => "FIRfirstNam\$500,0000eST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "DIncome" => "YorkLASTcity_NAMEPIew", "firstName" => "JohnoNew YorNk", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("cItAgee" => "DOEnew yorAgeIncIomekIncome", "LASTNAME" => "DOE", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOlast_nameOE", "Age" => 35, "cItIY" => 37, "firstName" => "John", "cItY" => "new yochrrerryrok")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,,000", "Age" => 36)) == false
    @test check_dict_case(Dict("JohaJgeage" => 3.14159, "Johageage" => 2.9360614575298136, "PI" => 3.14159)) == false
    @test check_dict_case(Dict("firstName" => "Johhn")) == false
    @test check_dict_case(Dict("first_name" => "John", "DDOEIncome" => "\$50,00", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Jonew" => "new chINCEOMEOeoDDOErangerryyorAgek", "city" => "new chINCEOMEOerryyorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "Age" => 35, "FIRST_NAME" => "Jacityne")) == false
    @test check_dict_case(Dict("Income" => "KYORK", "Age" => "D", "firstName" => "Johnbana")) == false
    @test check_dict_case(Dict("first_name" => "John", "DDOEIncome" => "\$50,00", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "citcy" => "\$50,00New YorkLAST_NALast_NammeMEPI0", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Do", "Age" => 35, "FIRST_NAME" => "Anew", "citiy" => "8PI", "chINCEOMEerryAge" => "0\$50,00", "Last_Namme" => "fruit", "first_name" => "Yk2,000", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "city" => "New York")) == false
    @test check_dict_case(Dict("New YorkLAST_NAMEPI" => 1.2679847915686973, "New YorkLASTcity_NAMEPI" => 2.3210819853008124, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Age" => "D", "firstName" => "John", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New York", "Age" => 36, "Incoome" => "kNew York", "AAge" => "cIttY")) == false
    @test check_dict_case(Dict("orange" => "JoDooehn", "orangae" => "YorkLAST_NALast_NammeMEPI0JoDooehn", "okNewrange" => "INCOMEJJohn")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,\$00", "Age" => 35, "Last_Namme" => "fruit", "FIRST_NAME" => "Anew")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "yogrAgek" => "YorkSTNAME", "Age" => "IPI", "cItY" => "2")) == false
    @test check_dict_case(Dict("first_name" => "IncIomNNew", "Last_Name" => "DYorNkoe", "city" => "NewCyellOME York", "FIRST_NAME" => "ODOlast_nameOEE")) == false
    @test check_dict_case(Dict("first_name" => "John", "ryorrk" => "Jnohn", "Last_Name" => "Doe", "city" => "New York", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$500,000", "Incomeyeyar" => "AAge", "Age" => "yorAgeIncIomekw", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("city" => "New York", "income" => "\$5Yoincomerkt_namAneneweEirstNameEcIomek0,000", "ageage" => "Inconme", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "Last_e" => "Yoincomerk", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "\$5Yoincomerkt_nameEirstNameEcIomek0,000", "Last_Name" => "Doe", "Dooe" => "firstNam\$50,0000e", "city" => "new yorAgek", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "Inconme" => "bana")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "DDOEIncome" => "\$50,00", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "new yorAgek", "Age" => 35, "citty" => 38, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("2" => "banana", "3" => "cherry")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,00FIRSTNNAME0", "CITY" => "DOfDOlast_nameEirstNambananAGEaeE", "Age" => 35, "firstName" => "John", "cItY" => "IencIome")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "Doe", "new yorrk" => "8")) == false
    @test check_dict_case(Dict("2\$0,000" => "chery", "2" => "banana", "orYoincomerk\$50,00ange" => "yochrrerryrok")) == false
    @test check_dict_case(Dict("IPI" => 1.9949170779000351, "new ryorLast\$50,000NNewYork_Namerk" => 1.7300435058060522, "new ryorrk" => 1.7300435058060522, "PI" => 2.9360614575298136, "new ryorLast_Namerk" => -21.558299894752437)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "firstName" => "John", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("firrstName" => "w", "Income" => "\$50,000", "cItAGEY" => 36, "LASTNAME" => "DOE", "Age" => 35, "FIRST_NAME" => 36)) == false
    @test check_dict_case(Dict("Last_Naeme" => "DoYorke", "first_name" => "John", "Last_Name" => "Doe", "city" => "NNew YorkLASTcity_NAMEPIew York", "tfirst_name" => "2JohJIncomeyeyarohnn")) == false
    @test check_dict_case(Dict("firstName" => "yorAgekcolorhnJohhn")) == false
    @test check_dict_case(Dict{String, Any}("Last_eName" => "JanLast_Namee", "first_name" => "John", "Last_Name" => "Dooe", "Age" => 35, "cItIY" => "JafirstsNamee")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "IP" => 36, "Age" => 35, "firstName" => "hJon", "8" => 36)) == false
    @test check_dict_case(Dict("IncIome" => "yorAgeIncIomek", "LASTNAME" => "YorNke", "firstName" => "Jooohn", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict("I" => 2.496132463875833, "New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "CyellOME" => 1.6243371737850312)) == false
    @test check_dict_case(Dict("1" => "aple", "Income" => "chINCEOMEerry", "CITY3" => "cherr", "2" => "banana")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "fruurit", "orYoincomerk\$50,00ange" => "fruYoincomerkuritt")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,000", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "cItAGEY")) == false
    @test check_dict_case(Dict("I" => 1.4713856995958976, "New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897, "CyellOME" => 1.6243371737850312)) == false
    @test check_dict_case(Dict("New YorkLALASTENAMEageST_NALast_NammeMEPI" => 2.2786871475765835, "cItIY" => 2.6443947966293897, "PI" => 1.7300435058060522, "New YorkLAST_NALast_NammeMEPI" => 0.17904925194593924)) == false
    @test check_dict_case(Dict{String, Any}("YORK" => "\$50,00000", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict{String, Any}("FIRFIRSTNAMEAME" => "\$ryorLast_Namerk50,00000", "YORK" => "\$50,00000", "LAST_NAME" => "OE", "CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("orange" => "JoDooehn")) == true
    @test check_dict_case(Dict("Income" => "YORK", "Age" => "0\$50,00", "firstName" => "John", "Aege" => "nenew yorAgeIncIomekw yorAgek")) == false
    @test check_dict_case(Dict("Inncome" => "chINCffruurittEOMEerry", "Income" => "chINCEOMEerry", "3" => "cherry")) == false
    @test check_dict_case(Dict("Income" => "\$50,000", "CITY" => "DOfDOlasNew Yoincomerkt_nameEirstNameE", "firstName" => "John", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict("LASTNAME" => "YorNke", "IncI\$50,0000ome" => "222", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("New YorkLALASTENAMEageST_NALast_NammeMEPI" => 2.2786871475765835, "cItIY" => 2.6443947966293897, "PI" => 0.9299554777703931, "New YorkLAST_NALast_NammeMEPI" => 0.17904925194593924)) == false
    @test check_dict_case(Dict("first_name" => "John", "Income" => "color", "Last_Name" => "Doe", "Dooe" => "firstNam\$50,0000e")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,,000", "Age" => 36, "Aege" => 35)) == false
    @test check_dict_case(Dict("first_name" => "Johnn", "Income" => "color", "Last_Name" => "Doe")) == false
    @test check_dict_case(Dict("first_name" => "John", "Last_Name" => "DYorNkoe", "LasYorkLAST_NALast_NammeMEPI0t_Namme" => "yer", "Last_Namme" => "yeyar", "FIRST_NAME" => "cherry")) == false
    @test check_dict_case(Dict("46.77667061964502" => "Last_Naeme", "-29.856800477994057" => "DIncIome", "12.66919465416403" => "VNxJOt", "-27.654576852346665" => "uYc", "41.671200125445324" => "orange", "1.9949170779000351" => "QxxTRMjexO", "-42.16356333079692" => "new yorAgeInDOfDOlasNew Yoincomerkt_nameEirstNameEcIomek")) == false
    @test check_dict_case(Dict{String, Any}("YORK" => "\$50,00000", "CITY" => "NEW YcIctYORK", "AGE" => 35, "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "firstName" => "John", "firstNfame" => "new yorAgekcolor", "cItY" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "Jonew yorAgekcolorhn", "Last_Name" => "Doe", "city" => "New York", "Age" => 35, "Incoome" => "kNew York")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "oNNew YorNk", "income" => "DD", "last_name" => "Doe", "Newage" => "2,000", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "YorNk00", "yogrAgekk" => "Do\$\$50,000e", "CITY" => "Doe", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("Last_Name" => "Doe")) == false
    @test check_dict_case(Dict("eAge" => "FIRSJhohnT_NAME", "LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => "IP", "firstName" => "John", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("chINCffruurittEOMEerry" => "\$5Yoincomerkt_nameEirstNameEcIomek0,000", "city" => "New YorNk", "income" => "\$50,000", "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict("I" => 2.7107068449059466, "New YorkLAST_NAMEPI" => 2.6189164796316335, "PI" => 1.7300435058060522, "cItIY" => 1.4094949772734846)) == false
    @test check_dict_case(Dict("LASTENAME" => "Anew yorAgek", "Age" => "D", "2019n" => "IPI", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME", "LASTNAME" => "DDOE", "IncYorkLASTcity_NAMEPIIome" => "Anenew yorAgeIncIomekw yorAgek", "12019n" => "DJohnew yorAgekhn", "ageage" => "cItYnew yorAgek", "Income" => "\$50,000", "firstName" => "John")) == false
    @test check_dict_case(Dict{String, Any}("1" => 37, "first_name" => "John", "Income" => "\$0,000", "Incyellowome" => "INCOMEJohn", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "city" => "New York", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "new chINCEOMEOerryyorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "firslast_nametName" => "cherry", "Age" => 36, "" => "apple", "firstName" => "John", "8" => "chINCEOMEOerryyorAgek")) == false
    @test check_dict_case(Dict("Age" => "D", "cItY" => "nenew yorAgeIncIomekw 2\$0,000yorAgek")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "hJohn", "2" => "tfirst_name", "22" => "Johhn")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$5Yoincomerkt_nameEirstNameEcIomek0,000", "ccItAGEYItY" => "new yogrAgekk", "Age" => "IPI", "firsnew yorAgektName" => "new yogrAgek", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("ccItIY" => 2.9039294830493683, "New YorkLAST_NAMEPI" => 2.6189164796316335, "New YorkLASTcity_NAMEPI" => 2.3210819853008124, "PI" => 1.7300435058060522, "cItIY" => 2.6443947966293897)) == false
    @test check_dict_case(Dict{String, Any}("1" => 35, "LAST_NAME" => "DOE", "CITY" => "33K", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000", "INOECOME" => "\$\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("Newor\$50,00ange" => "NNewYork", "1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "INCOMEJNohn", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("LAST_NAME" => "DOE", "AGE" => 35, "FIRST_NAME" => "John", "INCOME" => "\$50,000", "LAScItIYYnewT_NAME" => "cyherry")) == false
    @test check_dict_case(Dict{String, Any}("firstNam\$50,0000e" => 38, "Age" => 35, "FIRST_NAME" => "Jane", "DOfDOlast_nameEirstNambananAGEaeE" => 35)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooe", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("AE" => "", "1" => 34, "LAST_NAME" => "oJoh", "CITY" => "NK", "AGE" => 35)) == false
    @test check_dict_case(Dict{String, Any}("ncome" => 35, "first_name" => "John", "Income" => "\$50,,000", "city" => "new yorAgek")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "firstName" => "John", "cItY" => "new york")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "222" => "\$york", "Age" => 36, "firstName" => "John", "8" => "\$0,000")) == false
    @test check_dict_case(Dict("IPI" => 2.6443947966293897, "JohaJgeage" => 3.14159, "PPI" => 2.9360614575298136, "PI" => 3.14159, "PPDDOEI" => 1.8117899160754405)) == false
    @test check_dict_case(Dict("yorrk19" => "yellow", "COME" => "\$50,0000", "yorrk1" => "orangae", "John" => "year", "income" => "yelelow", "FIRST_NAME" => "John")) == false
    @test check_dict_case(Dict("AAge" => "Jchenrrohn", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "Age" => 35, "cityyorA\$0,000geIncIomrek" => "JJohn")) == false
    @test check_dict_case(Dict("firstName" => "\$50,000NNewYorkYoincomerkyorAgekkcolorhnJohhn")) == false
    @test check_dict_case(Dict("IPI" => 2.6443947966293897, "JohaJgeage" => 3.14159, "Johageage" => 3.7806371669520606, "PI" => 3.14159)) == false
    @test check_dict_case(Dict("\$50,000" => "chrerry", "\$50,00NewNEWor\$50,00ange0" => "age", "3" => "cheryrfirstNy")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orange" => "fruurit", "orYoincomerk\$50,00ange" => "fruuritt", "or\$50,00ang" => "frageuui")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "nenew yorAgeIncIomekw 2\$0,000yorAgek", "Last_Name" => "Doe", "city" => "Newor\$50,00ange York", "Age" => 35, "" => "oJoh", "Incoome" => "oJohn", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("new ryYrorkorLast_Namerk" => -48.45477875780888, "new ryorrk" => 1.7300435058060522, "PI" => 2.2762868739904514, "new ryorLast_Namerk" => 2.6443947966293897)) == false
    @test check_dict_case(Dict("AAge" => "Jcherrohn", "FIRST_NAME" => "Jane", "new yogrAgekk" => "JcherrocItYJocyherrynohnhn", "\$50,000NNewYorkYoincomerk" => "IencIome")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "tfirst_name", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooee", "first_namme" => "\$50,0last_name00", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 36, "IncoDDOErangeome" => "\$550,000", "firstName" => "John", "8" => "\$0,000")) == false
    @test check_dict_case(Dict("Agee" => 35)) == false
    @test check_dict_case(Dict("Income" => "New York", "2" => "VNxJOt")) == false
    @test check_dict_case(Dict{String, Any}("8" => "\$0,000", "LASTNAME" => "DOE", "Income" => "\$50,000", "Age" => 35, "firstName" => "hJohn", "LASTNAAME" => "citcy")) == false
    @test check_dict_case(Dict{String, Any}("1" => 37, "first_name" => "John", "Income" => "Dooe", "Incyellowome" => "INCkNew YorkOMEJohn", "city" => "New York", "chINCEOMEerryAge" => "\$50,00", "Age" => 35, "FIRST_NAME" => "Jane", "firsnew yorAgektName" => "new yorAgeIncIomekIncome", "citty" => "Jon")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Dooe", "Age" => 35, "FIRST_NAME" => "Jane", "Incyellowe" => "Jancherre", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "city" => "New York", "Last_e" => "Yoincomerk")) == false
    @test check_dict_case(Dict("3" => "cherry")) == false
    @test check_dict_case(Dict("IncomJohhne" => "DEOE", "LASTNAME" => "DOE", "Age" => "D", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "Ag" => "new y", "Age" => "D", "firstJohJIncomeyeyarohnnName" => "JYORKNewYohn", "firstName" => "John")) == false
    @test check_dict_case(Dict{String, Any}("Age" => 35, "AGE" => 36, "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "new yorAgek", "Anenew" => "oJohn", "Age" => 36, "FIRST_NAME" => "33K", "Inme" => "oJoJhn")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "New York", "Age" => 35, "firAEst_name" => "JaJne", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "new yorAgek", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "YorNk00", "yogrAgekk" => "Do\$\$50,000e", "AyorAgek" => 35, "Age" => 35, "CITY" => "Doe", "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Dooe", "Age" => 35, "FIRST_NAME" => "Jane", "Incyellowe" => "JYORKNewYohn", "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "IncIncYorkLASTcity_NAMEPIIomelowome" => "New YoJohageagek", "city" => "New York", "Last_e" => "Yoincomerk")) == false
    @test check_dict_case(Dict("new yorok" => "2019n", "IncIome" => "FIRST_NAMIE")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Do", "Age" => 35, "Nehw" => "PPnew chINCEOMEOerryyorAgekI", "FIRST_NAME" => "Anew", "chINCEOMEerryAge" => "\$50,00", "Last_Namme" => "fruit", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "fDOlast_nameEirstName" => "NNewYork", "city" => "New York")) == false
    @test check_dict_case(Dict("yellowAnenew" => "YorNk", "yellow" => "color", "yell" => "clor")) == false
    @test check_dict_case(Dict("firstName" => "Jooohn", "Anew yorAgek" => "FNIRSTNAME")) == false
    @test check_dict_case(Dict{String, Any}("city" => "New York", "cit" => 35, "last_name" => "Doe", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "tfirst_name", "Incyellowome" => "INCOMEJohn", "Last_Name" => "Dooee", "first_namme" => "\$50,0last_name00", "Aclor" => "INCOMEJLANewYohn", "Age" => 35, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict("1" => "apple", "Income" => "chINCEOMEerry", "2" => "orange", "banana2" => "chINCEEOMEerry", "3" => "cherry")) == false
    @test check_dict_case(Dict("IncIome" => "yorAgeIncIomek", "IncIocme" => "JoDooehhn", "LASTNAME" => "8PI", "cIttY" => "JooohyorAgeIncIomekn", "cItY" => "2", "Anew yorAgek" => "FIRSTNAME")) == false
    @test check_dict_case(Dict("first_name" => "IncIomNNew", "FIRST_NAME" => "OE")) == false
    @test check_dict_case(Dict{String, Any}("AE" => "new", "1" => 34, "LAST_NAME" => "oJoh", "QxxTRMjexO" => "oJhoh", "TCITY" => 34, "CITY" => "NK", "AGE" => 35)) == false
    @test check_dict_case(Dict("LASTNAME" => "DOE", "Income" => "\$50,000", "LASTENAME" => "Anew yorAgek", "cItcY" => "DD", "Age" => "D", "firstName" => "John", "cItY" => "new yorAgek", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("CITY" => "NEW YORK", "AGE" => 35, "FIRST_NAME" => "John", "INCNewT_NAMEPIOME" => "NEW", "INCOME" => "\$50,000")) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "Last_Name" => "Dooe", "Age" => 35, "Incomge" => "citty", "FIRST_NAME" => "Jane", "chge" => "New YorkLAST_NAME", "chINCEOMEerryAge" => "\$50,00", "Income" => "\$50,000", "Incyellowome" => "INCOMEJohn", "New York" => "new york", "Last_eName" => "AGE", "city" => "chery")) == false
    @test check_dict_case(Dict("firstName" => "yorAgekcoJoDo\$\$50,000ehageagelorhnJohhn")) == false
    @test check_dict_case(Dict("Do" => "EDOE", "LASTNAME" => "DOE", "Income" => "\$50,000", "cItY" => "2", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict("Income" => "\$50,000")) == false
    @test check_dict_case(Dict("or\$50,00ange" => "fruui", "orYoincomerk\$50,00ange" => "fruuritt")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,0000", "firstName" => "JohDOE33")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "Last_Name" => "Doe", "city" => "NewNEWor\$50,00ange York", "Age" => 35, "Incoome" => "oJohn", "FIRST_NAME" => "eJane", "Agee" => "\$50,0oNew YorNk00")) == false
    @test check_dict_case(Dict{String, Any}("LASTNAME" => "DOE", "Income" => "\$50,000", "LASTNASME" => "oJohn", "Age" => 35, "firstName" => "John", "FIRST_NAME" => 36)) == false
    @test check_dict_case(Dict{String, Any}("1" => 36, "first_name" => "John", "Income" => "\$50,000", "Incyellowome" => "2\$0,000", "city" => "New York", "cityyorA\$0,000geIncIomrek" => "JJohn")) == false
    @test check_dict_case(Dict("LASTNAME" => "DDOE", "Income" => "\$50,0000", "firstName" => "NNew", "IncIome" => "FIRST_NAME")) == false
    @test check_dict_case(Dict{String, Any}("NEW" => "1", "LASTNAME" => "DOE", "Income" => "\$50,000", "CITY" => "DOfDOlast_nameEirstNameE", "Age" => 35, "firstName" => "John", "ge" => "nNew YorkLAST_NPAMEPIew yorrk", "cItY" => "new yorrk")) == false
    @test check_dict_case(Dict{String, Any}("year" => 37, "city" => "New YorNk", "income" => "bana", "last_name" => "new yorrkoe", "age" => 36)) == false
    @test check_dict_case(Dict{String, Any}("ncome" => 35, "first_name" => "John", "city" => "new yorAgek")) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "city" => "oNew YorNk", "income" => "\$50,000", "last_name" => "Doe", "Newage" => "2,000", "first_nam" => "JohnDOfDOlasNew Yoincomerkt_nameEirstNameE", "age" => 35)) == false
    @test check_dict_case(Dict{String, Any}("first_name" => "John", "Income" => "\$50,000", "city" => "New York", "Age" => 36, "FIRST_NAME" => "Jane")) == false
    @test check_dict_case(Dict{String, Any}("Yrork" => "oJoJhkNewn", "first_name" => "John", "city" => "new yorAgek", "Anenew" => "oJohn", "Age" => 36, "FIRST_NAME" => "33K", "Inme" => "oJoJhn")) == false
end
