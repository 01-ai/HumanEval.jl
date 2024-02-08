@testitem "091_is_bored_HumanEvalPlus_v0_1_9_test.jl" tags=[:HumanEvalPlus_v0_1_9] begin
    include(joinpath(ENV["GENERATION_DIR"], "091_is_bored.jl"))
    @test is_bored("I am very happy today. I love spending time with my friends.") == 2
    @test is_bored("I want to eat pizza for dinner. What do you think, should we order pizza?") == 1
    @test is_bored("I enjoy reading books. They help me learn new things.") == 1
    @test is_bored("I forgot my phone in the car. Oh no, now I have to go back and get it.") == 1
    @test is_bored("In the morning, I like to have a cup of coffee to start my day off right. How about you?") == 0
    @test is_bored("Have you ever gone skydiving before? I did it once and it was amazing.") == 1
    @test is_bored("I think I want to try cooking something new for dinner tonight. Do you have any favorite recipes?") == 1
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popcorn. Do you like popcorn?") == 0
    @test is_bored("I love to read books. What about you?") == 1
    @test is_bored("I have a lot of work to do today. I wish I could take a nap instead.") == 2
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popicorn. Do you like popcorn?") == 0
    @test is_bored("I am very happy today. I love s") == 2
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popicorn. oDo you like popcorn?") == 0
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.") == 1
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit.") == 1
    @test is_bored("I am very happy today. I love spending time with my friiends.") == 2
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoI am very happy today. I love spending time with my friiends.yed it more if I had some popicorn. Do you like popcorn?") == 1
    @test is_bored("In the morning, I lI forgot my phone in the car. Oh no, now I have to go back and get it.ike to have a cup of coffee to start my day off right. How about you?") == 0
    @test is_bored("The movie we saw last night was really good, but?") == 0
    @test is_bored("I want to eat pizza for dinn. What do you think, s") == 1
    @test is_bored("I have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new things.nstead.") == 2
    @test is_bored("I am very happy today. I love spending time with my friienI forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.ds.") == 2
    @test is_bored("I think I want to try cooking something new for dinner tonight. Do you have anoy favorite recipes?") == 1
    @test is_bored("I forgot my phone in the car. Oh no, now I haI have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new things.nstead.ve to go back and get it.") == 2
    @test is_bored("I have today. I wish I could take a nap instead.") == 2
    @test is_bored("I am very happy toroday. I love s") == 2
    @test is_bored("I enjoy reading books. They help me learn newthings.") == 1
    @test is_bored("I enjoy reading boorks. They help me learn newthings.") == 1
    @test is_bored("The movie we saw last night was really goodThe movie we staw last night was really good, but I think I would have enjoI am very happy today. I love spending time with my friiends.yed it more if I had some popicorn. Do you like popcorn?, but?") == 1
    @test is_bored("I enjoy reading books. TheyI think I want to try cooking something new for dinner tonight. Do you have any favorite recipes? help me learn new things.") == 1
    @test is_bored("I have a lot of work to do today. I wish I could take a naI forgot my phone in the car. Oh no, now I have to go back and get it.p iI enjoy reading bo oks. They help me learn new things.nstead.") == 2
    @test is_bored("I think I want to try cooking something new for dinner tonight. Do you have anoy favorite rI forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.ecipes?") == 1
    @test is_bored("I am very happy today. I ltoveThe movie we saw last night was really gooThe movie we saw last night was really goodThe movie we staw last night was really good, but I think I would have enjoI am very happy today. I love spending time with my friiends.yed it more if I had some popicorn. Do you like popcorn?, but?d, but I think I would have enjoyed it more if I had some popicorn. oDo you like popcorn? s") == 3
    @test is_bored("I have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new things") == 2
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popcornI think I want to try cooking something new for dinner tonight. Do you have anoy favorite rhone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.ecipes?. Do you like popcorn?") == 0
    @test is_bored("mThe movie we saw last night was really good, but I think I would have enjoyed it more if I had some popicorn. oDo you like popcosrn?") == 0
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you likeIn the morning, I like to have a cup of coffee to start my day off right. How about you? popcorn?and get rit.") == 1
    @test is_bored("I am very happy today. I ltoveThe movieh we saw last night was really gooThe movie we saw last night was really goodThe movie we staw last night was really good, but I think I would have enjoI am very happy today. I love spending time with my friiends.yed it more if I had some popicorn. Do you like popcorn?, but?d, but I think I would have enjoyed it more if I had some popicorn. oDo you like popcorn? s") == 3
    @test is_bored("I want tyo eat pizza for dinner. What do you think, should we orderu pizza?") == 1
    @test is_bored("I enjoy reading books. They hhelp me learn newthings.") == 1
    @test is_bored("I think I want to try cooking something new for dinner tonight. Do you have anoy favorite rI forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get ilt.ecipes?") == 1
    @test is_bored("I have a lot of work to do tloday. I wish I could take a nap instead.") == 2
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last niI want to eat pizza for dinner. What do you think, should we order pizza?ght was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit.") == 1
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjooyed it more if Ip had some popcorn. Do you like popcorn?and get rit.") == 1
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popcorn. Do you like popcThe movie we saw last night was really good, but?orn?") == 0
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popcornI think I want to try cooking something new for dinner tonight. Do you have anoy favorite rhone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I woultd have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.ecipes?. Do you like popcorn?") == 0
    @test is_bored("The movie we saw last night was really good, but I think oI would have enjoyed it  popcorn?") == 0
    @test is_bored("The movie we saw last night was really good,  but I think oI would have enjoyed it  popcorn?") == 0
    @test is_bored("I enjoy reading books. They help me learn new thing s.") == 1
    @test is_bored("I enjoy reading boorks. They help me lThe movie we saw last night was really good, but I think I would have enjoyed it more if I had some popcornI think I want to try cooking something new for dinner tonight. Do you have anoy favorite rhone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.ecipes?. Do you like popcorn?eI have a lot of work to do today. I wish I could take a naI forgot my phone in the car. Oh no, now I have to go back and get it.p iI enjoy reading bo oks. They help me learn new things.nstead.arn newthings.") == 2
    @test is_bored("I enjoy reading bjooks. They help me learn new thing s.") == 1
    @test is_bored("The movie we saw last night was really good,  but I think oI would ghave enjoyed it  popcorn?") == 0
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popcornI think I want to try cookinwe saw last night was really good, but I think I woultd have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.ecipes?. Do you like popcorn?") == 0
    @test is_bored("I think I want to try cooking something new for dinner tonighThe movie we saw last night was really good, but I think oI would have enjoyed it  popcorn?t. Do you have anoy favorite recipes?") == 1
    @test is_bored("I forgot my phone in the car. Oh no, now I have to ThI forgot my phone in the car. Oh no, now I haI have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new things.nstead.ve to go back and get it.e movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit.") == 2
    @test is_bored("I am very happy today. I love spending time with my friienI forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it mI want tyo eat pizza for dinner. What do you think, should we orderu pizza?ore if Ip had some popcorn. Do you like popcorn?and get it.ds.") == 2
    @test is_bored("I think I wanI am very happy today. I love spending time with my friends.t to try cooking something new for dinner tonighThe movie we saw last night was really good, but I think oI would have enjo yed it  popcorn?t. Do you have anoy favorite recipes?") == 2
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popicorn. oDo you like popco") == 0
    @test is_bored("I have a lot of work to do tlodaya. I wish I could take aI think I want to try cooking something new for dinner tonighThe movie we saw last night was really good, but I think oI would have enjoyed it  popcorn?t. Do you have anoy favorite recipes? nap instead.") == 2
    @test is_bored("I think I want to try cooking something new for dinner tonight. Do you have anoy favorite rI forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcoron. Do you like popcorn?and get it.ecipes?") == 1
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjooyed it more if Ip had some popcorn. Do you like popcorn?and I think I want to try cooking something new for dinner tonighThe movie we saw last night was really good, but I think oI would have enjoyed it  popcorn?t. Do you have anoy favorite recipes?get rit.") == 1
    @test is_bored("I think I want to try cooking somethinnew for dinner tonight. Do you have any favorite recipes?") == 1
    @test is_bored("I have a lot of work to do tlodaya. I wish I could take aI think I want to try cooking somtething new for dinner tonighThe movie we saw last night was really good, but I think oI would have enjoyed it  popcorn?t. Do you have anoy favorite recipes? nap instead.") == 2
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoy I had some popcorn. Do you like popcorn?") == 0
    @test is_bored("I am very happy today. I love spending time with my friendsI love to read books. What about you?.") == 2
    @test is_bored("I forgot my phone in the car. Oh no, now I have to ThI forgotHave you ever gone skydiving before? I did it once and it was amazing. my phone in the car. Oh no, now I haI have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new things.nstead.ve to go back and get it.e movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit.") == 3
    @test is_bored("I love to read bookus. What about you?") == 1
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popThe movie we saw last night was really good,  but I think oI would have enjoyed it  popcorn?corn. Do you like popcorn?") == 0
    @test is_bored("The movie we saw last night was really goo?") == 0
    @test is_bored("The movie we saw last night was really good, butI enjoy reading boorks. They help me learn newthings. I think I would have enjoy I had some popcorn. Do you like popcorn?") == 1
    @test is_bored("I am very happy today. I love spending time with my friitends.") == 2
    @test is_bored("I think I want to try cooking something new for dinner tonight. Do you have anoy favorite rI forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcoron. Do you like propcorn?and get it.ecipes?") == 1
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popcornI think I waont to try cookinwe saw last night was really good, but I think I woultd have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get it.ecipes?. Do you like popcorn?") == 0
    @test is_bored("The movie we saw last night was really good,  but I think oI would ghave I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you likeIn the morning, I like to have a cup of coffee to start my day off right. How about you? popcorn?and get rit.enjoyed it  popcorn?") == 0
    @test is_bored("I enjoy reading bjooks. They helThe movie we saw last night was really good, but I think I would have enjoyed it more if I had some popicorn. Do you like popcorn?p me learn new thing s.") == 1
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you likeIn the morning, I like to have a cup of coffee to start my day off right. How about you? popcorn?and g") == 1
    @test is_bored("I think I want to try cooking somethinnew for dinner tonight. Do you have any avorite recipes?") == 1
    @test is_bored("The movie we saw last night was really good, but I think I would have enjoyed it more if I had some popThe movie we saw last night was really good,  but I think oI would have enjoyeI love to read books. What about you?d it  popcorn?corn. Do you like popcorn?") == 0
    @test is_bored("I think I want to try cooking soI forgot my phone in the car. Oh no, now I haI have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new things.nstead.ve to go back and get it.mething new for dinner tonight. Do you have anoy favorite recipes?") == 2
    @test is_bored("I have a lot of work to do tlodaya. I wish I could take aI think I want to try cooking somtething new for dinner tonighThe movie we saw good, but I think oI would have enjoyed it  popcorn?t. Do you have anoy favorite recipes? nap instead.") == 2
    @test is_bored("I think I want to try cooking something new for I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit.dinner tonight. Do you have anoy favorite recipes?") == 1
    @test is_bored("I enjoy reading boorks. They help me leI have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new thingsngs.") == 2
    @test is_bored("I think I want to tryou have any favorite recipes?") == 1
    @test is_bored("I think I wThe movie we saw last night was really good, but I think oI would have enjoyed it  popcorn?ant to try cooking somethinnew for dinner tonight. Do you have any favorite recipes?") == 1
    @test is_bored("T he movie we saw last night was really good, but I think I would have enjoyed it more if I had some popThe movie we saw last night was really good,  but I think oI would have enjoyeI love to read books. What about you?d it  popcorn?corn. Do you like popcorn?") == 0
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjooyed it morhe if Ip had some popcorn. Do you like popcorn?and get rit.") == 1
    @test is_bored("I enjoy reading books. TheyI think I want to try cooking something new for dinner tonight. Do yI am very happy today. I ltoveThe movieh we saw last night was really gooThe movie we saw last night was really goodThe movie we staw last night was really good, but I think I would have enjoI am very happy today. I love spending time with my friiends.yed it more if I had some popicorn. Do you like popcorn?, but?d, but I think I would have enjoyed it more if I had some popicorn. oDo you like popcorn? sou have any favorite recipes? help me learn new things.") == 3
    @test is_bored("I forgot my pho think, should we order pizza?ght was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit.") == 1
    @test is_bored("I thfavorite recipesI enjoy reading books. TheyI think I want to try cooking something new for dinner tonight. Do yI am very happy today. I ltoveThe movieh we saw last night was really gooThe movie we saw last night was really goodThe movie we staw last night was really good, but I think I would have enjoI am very happy today. I love spending time with my friiends.yed it more if I had some popicorn. Do you like popcorn?, but?d, but I think I would have enjoyed it more if I had some popicorn. oDo you like popcorn? sou have any favorite recipes? help me learn new things.?") == 3
    @test is_bored("The movie we saw last night was really good, ed it more if I had some popcorn. Do you like popcorn?") == 0
    @test is_bored("I think I want to try cooking somethinnew for dinner tThe movie we saw last night was really good, but I think I would have enjoyed it more if I had some popicorn. oDo you like popcorn?onight. Do you have any favorite recipes?") == 1
    @test is_bored("The mgoo?") == 0
    @test is_bored("I forgot my phone in the car. Oh no, now I have to The movie we saw last niI want to eat pizza for dinner. What do you think, should we order pizza?ght was really good, but I think I woul d have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit.") == 1
    @test is_bored("I enjoy reading books. They help me learn nI think I want to try cooking soI forgot my phone in the car. Oh no, now I haI have a lot of work to do today. I wish I could take a nap iI enjoy reading bo oks. They help me learn new things.nstead.ve to go back and get it.mething new for dinner tonight. Do you have anoy favorite recipes?ewthings.") == 2
    @test is_bored("In the morning, I lI forgot my phone in the car. Oh n o, now I have to go back and get it.ike to have a cup of coffee to start my day off right. How about you?") == 0
    @test is_bored("mThe movie we saw last nightld have enjoyed it more if I had some popicorn. oDo you like popcosrn?") == 0
    @test is_bored("I think I want to try cooking something new for dinner tonight. Do e enjoyed it more if Ip hhad some popcorn. Do you like popcorn?and get it.ecipes?") == 1
    @test is_bored("I have a lot of work to do tlodaya. I wish kI could take aI think I want to try cooking somtething new for dinner tonighThe movie we saw goodI forgot my phone in the car. Oh no, now I have to The movie we saw last night was really good, but I think I would have enjoyed it more if Ip had some popcorn. Do you like popcorn?and get rit., but I think oI would have enjoyed i t  popcorn?t. Do you have anoy favorite recipes? nap instead.") == 2
    @test is_bored("I enjoy reading books. TheyI think I want to try coonking something new for dinner tonight. Do you have any favorite recipes? help me learn new things.") == 1
    @test is_bored("The movie we saw last night wasI enjoy reading bjooks. They helThe movie we saw last night was really good, but I think I would have enjoyed it more if I had some popicorn. Do you like popcorn?p me learn new thing s. really good, but?") == 0
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who knows! I bet It is hot outside.") == 2
    @test is_bored("I really need to finish this project. It is due tomorrow. I hope I can get it done in time. If not, I will have to ask for an extension. I hate having to do that.") == 3
    @test is_bored("The train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.") == 2
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We laughed and had a great time. We exchanged numbers. I hope I see her again soon!") == 5
    @test is_bored("When I visited Paris, I spent a lot of time exploring the museums and art galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("Although I live in the suburbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the parks and gardens.") == 1
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night. Why are you still in bed?") == 2
    @test is_bored("Are you feeling good? I hope so. I really want to go to the beach today. It is such a beautiful day outside.") == 2
    @test is_bored("It is so hot outside today. I hate this weather. I wish I could just stay inside all day. Ugh!") == 2
    @test is_bored("Yesterday was really busy for me. I had to attend three meetings and complete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night. Why are you stgill in bed?") == 2
    @test is_bored("wish") == 0
    @test is_bored("DtiHeMkfeY") == 0
    @test is_bored("Yesterday was re ally busy for me. I had to attend three meetings and complete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("stgill") == 0
    @test is_bored("Yesterday was re ally busy for me. I had to attend three meetings and complete a report. Howcever, I still managed to go for a run. I love being active!") == 2
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who knows! I bet It isday. hot outside.") == 2
    @test is_bored("will") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three meetings and ctalkgo for a run. I love being active!") == 2
    @test is_bored("Hello world. I adm feeling good today. Are the plants green? Who knows! I bet It is hot outside.") == 2
    @test is_bored("time.") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three meetings and complete a report. However, I still managed to back.go for a run. I love being active!") == 2
    @test is_bored("lxzoTZlWQp") == 0
    @test is_bored("museums") == 0
    @test is_bored("I") == 1
    @test is_bored("Yesterday was really busy for me. nI had to attend three meetings and complete a Ugh!report.i However, I still manyaged to back.go for a run. I love being active!") == 1
    @test is_bored("Yesterday was really busy for me. I had to attend three meetinkgo for a run. I love being active!") == 2
    @test is_bored("Ugh!report.i") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She od. We laughed and had a great time. We exchanged numbers. I hope I see her again soon!") == 4
    @test is_bored("have") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night. Why are you sti in bed?") == 2
    @test is_bored("I really need to finish this project. It is due tomorrow. I hope I can get it done in time. Ifwanted not, I will have to ask for an extension. I hate having to do that.") == 3
    @test is_bored("you") == 0
    @test is_bored("Yesterday was really busy for me. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run. I love being active!") == 1
    @test is_bored("When I visited Paris, I spent a lot of time exploring the museums and art galleries. It was a grat opportunity to learn about history and culture.") == 0
    @test is_bored("opportunity") == 0
    @test is_bored("I went to the store and bought some milk. I also laughedsaw a movie last night. Why are you still in bed?") == 2
    @test is_bored("It is so hot outside today. I hate this weaUgh!") == 1
    @test is_bored("hoYesterday was really busy for me. I had to attend three meetinkgo for a forrun. I love being active!pe") == 2
    @test is_bored("Yesterday was really busstistill manyaged to back.go for a run. I love being active!") == 1
    @test is_bored("hoYesterday was really busy foar me. I had to attend three meetinkgo for a forrun. I love being active!pe") == 2
    @test is_bored("around") == 0
    @test is_bored("expensive.") == 0
    @test is_bored("hate") == 0
    @test is_bored("The train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.her") == 2
    @test is_bored("duue") == 0
    @test is_bored("Hello world. I am feeling goohd today. Are the plants green? Who knows! I bet It is hot outside.") == 2
    @test is_bored("inside") == 0
    @test is_bored("Although I live in the suburbs, I enjoy visiting the city. There ahoYesterday was really busy for me. I had to attend three meetinkgo for a forrun. I love being active!pere so many things to do and see. I especially like visiting the parks and gardens.") == 3
    @test is_bored("hod.ave") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three meetinkgo for a run. mI love being active!") == 1
    @test is_bored("DtiHeMYkfeY") == 0
    @test is_bored("gooAlthough I live in the suburbs, I enjoy visiting the city. There ahoYesterday was really busy for me. I had to attend three meetinkgo for a forrun. I love being active!pere so many things to do and see. I especially like visiting the parks and gardens.hd") == 3
    @test is_bored("DtiHeMeYkfeY") == 0
    @test is_bored("w") == 0
    @test is_bored("When I visited Paris, I spent a lot of tihme exploring the museums and art galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("Yesterday was really busy for me. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run.c I love being active!") == 0
    @test is_bored("Hello world. I am feeling goohd today. Are the plants greent? Who knows! I bet It is hot outside.") == 2
    @test is_bored("this") == 0
    @test is_bored("just") == 0
    @test is_bored("DtiHeMkYkfeY") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She od. We laughed and had a great time. We exchanged numbders. I hope I see her again soon!") == 4
    @test is_bored("Yesterday was really busstistill manyaged to back.go for a run.l I love being active!") == 0
    @test is_bored("talked") == 0
    @test is_bored("wanted") == 0
    @test is_bored("thigngs") == 0
    @test is_bored("spedrive,nt") == 0
    @test is_bored("movie") == 0
    @test is_bored("Yesterday was really busy for mehope. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run. I love being active!") == 1
    @test is_bored("some") == 0
    @test is_bored("report.") == 0
    @test is_bored("stggill") == 0
    @test is_bored("wishbought") == 0
    @test is_bored("stand") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three mieetings and complete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("always") == 0
    @test is_bored("abackround") == 0
    @test is_bored("She") == 0
    @test is_bored("exchanged") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last getnight. Why are you sti in bed?") == 2
    @test is_bored("her.") == 0
    @test is_bored("The train isactive!pere. It is a real pain.her") == 0
    @test is_bored("som") == 0
    @test is_bored("nI") == 0
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who gknows! I bet It is hot outside.") == 2
    @test is_bored("extension.") == 0
    @test is_bored("DtiHeknows!MYkfeY") == 0
    @test is_bored("go") == 0
    @test is_bored("DtiHeMYDtiHeMkfeYYkfeY") == 0
    @test is_bored("not,") == 0
    @test is_bored("urun.l") == 0
    @test is_bored("gooAlthough") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend threeYesterday was re ally busy for me. I had to attend three meetings and complete a report. Howcever, I still managed to go for a run. I love being active! meetinkgo for a run. I love being active!") == 4
    @test is_bored("parks") == 0
    @test is_bored("milk.") == 0
    @test is_bored("We") == 0
    @test is_bored("me.") == 0
    @test is_bored("Hello world. I adm feeling good today. Are the plants green? Woknows! I  bet It is hot outside.") == 2
    @test is_bored("Hello world. I adm feeling good today. Are the plants green? Woknows! I  bet It is hot outide.") == 2
    @test is_bored("lahughedsaw") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three meetinkgo for Thetreove being active!") == 1
    @test is_bored("the") == 0
    @test is_bored("edxchanged") == 0
    @test is_bored("project.") == 0
    @test is_bored("talk") == 0
    @test is_bored("spent") == 0
    @test is_bored("behistoryt") == 0
    @test is_bored("When I visited Paris, I spent a lot of time exploring the museums and art galleries. Itt was a grat opportunity to learn about history and culture.") == 0
    @test is_bored("opportbeachunity") == 0
    @test is_bored("gggooAlthough") == 0
    @test is_bored("today.") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last getnight. Why are you sti inher bed?") == 2
    @test is_bored("hour.") == 0
    @test is_bored("Yesterday was really busy for me. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run.c I love beiYesterday was really busy for me. I had to attend three meetings and ctalkgo for a run. I love being active!ng active!") == 2
    @test is_bored("The train isactive!pere.standpain.her") == 0
    @test is_bored("day") == 0
    @test is_bored("finish") == 0
    @test is_bored("The train isactive!per.her") == 0
    @test is_bored("Hello") == 0
    @test is_bored("jusst") == 0
    @test is_bored("gooAlthou") == 0
    @test is_bored("DtiHeMeYYkfeY") == 0
    @test is_bored("duuego") == 0
    @test is_bored("gooAlthough I live in theHello world. I adm feeling good today. Are the plants green? Who knows! I bet It is hot outside. suburbs, I enjoy visiting the city. There ahoYesterday was really busy for me. I had to attend three meetinkgo for a forrun. I love being active!pere so many things to do and see. I especially like visiting the parks and gardens.hd") == 5
    @test is_bored("Are you feeling good? I hope so. I really want to go tol the beach today. It is such a beautiful day outside.") == 2
    @test is_bored("The train isactive!pere. It is a real andain.her") == 0
    @test is_bored("The train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but pain.parking is too expensive. It is a real pain.her") == 2
    @test is_bored("The traiculture.n is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.her") == 2
    @test is_bored("timet.") == 0
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who knfood. I bet It is hot outside.") == 2
    @test is_bored("rert.") == 0
    @test is_bored("get") == 0
    @test is_bored("Are") == 0
    @test is_bored("vkcaRSvxRr") == 0
    @test is_bored("ggooAlthoughgoohd") == 0
    @test is_bored("was") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend threeYesterday was re ally busy for me. I had to attend three meetings and complete a report. Howcevera, I still managed to go for a run. I love being active! meetinkgo for a run. I love being active!") == 4
    @test is_bored("YesterdayahoYesterday was really busy for me. I had to attend three meetinkgo for a run. I love being active!") == 2
    @test is_bored("exepnloring") == 0
    @test is_bored("The train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pYesterday was really busstistill manyaged to back.go for a run.l I love being active!ain.her") == 2
    @test is_bored("traiculture.n") == 0
    @test is_bored("gdot") == 0
    @test is_bored("spedtrit") == 0
    @test is_bored("It is so hoot outside today. I hate this weaUgh!") == 1
    @test is_bored("hoYesterday was really busy foar me. I had to attend three meetingknows!kgo for a forrun. I love being active!pe") == 2
    @test is_bored("Yesterday was really bu!sy for me. I had to attend three mieetings and complete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("Arspentelive") == 0
    @test is_bored("spedrive,nctalkgot") == 0
    @test is_bored("Are you feeling good? I hop I really want to go to the beach today. It is such a beautiful day outside.") == 1
    @test is_bored("active!ng") == 0
    @test is_bored("beiYesteerday") == 0
    @test is_bored("DtiHfeMeYkfeY") == 0
    @test is_bored("Dt") == 0
    @test is_bored("beiYeteerday") == 0
    @test is_bored("haave") == 0
    @test is_bored("t") == 0
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who knows! I bet It isI went to the store and bought some milk. I also saw a movie last getnight. Why are you sti in bed?day. hot outside.") == 3
    @test is_bored("opbportbeachunity") == 0
    @test is_bored("want") == 0
    @test is_bored("meetings") == 0
    @test is_bored("hoYesterday was really busy foar me.too I Hello world. I am feeling goohd today. Are the plants green? Who knows! I bet It is hot outside.hanrrun. I love being active!pe") == 3
    @test is_bored("projectc.") == 0
    @test is_bored("Yesterday was really busy for  I love being active!") == 0
    @test is_bored("Hello world. I am feelihe plants greent? Who knows! I bet It is hot outside.") == 2
    @test is_bored("Yesterday was really busy for me. I had t three meetinkgo for a run. mI love being active!") == 1
    @test is_bored("hDptiHeMkfeYope") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She od . We laughed and had a great time. We exchanged numbders. I hope I see her again soon!") == 4
    @test is_bored("soo.") == 0
    @test is_bored("Itof") == 0
    @test is_bored("spedcrive,nctallkgot") == 0
    @test is_bored("opHowever,bportbeachunity") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She od . We laughed and had a great time. We exchanged numbders. I hope I see her again soon!me.") == 4
    @test is_bored("hoYesterday was really busy foar me.too I Hello world. I am feeling goohd today. Are the plants green? Who knreport.ows! I bet It is hot outside.hanrrun. I love being active!pe") == 3
    @test is_bored("DtareiHeMYkfeY") == 0
    @test is_bored("visited") == 0
    @test is_bored("art") == 0
    @test is_bored("ggooAlHello world. I am feelihe plants greent? Who knows! I bet It is hot outside.houghgoohd") == 2
    @test is_bored("back") == 0
    @test is_bored("parking") == 0
    @test is_bored("Dtspedcrive,nctallkgot") == 0
    @test is_bored("wgoohdishbought") == 0
    @test is_bored("Yesterday was re ally busy for me. I had to attened three knows!meetings and compleete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("beautiful") == 0
    @test is_bored("The") == 0
    @test is_bored("Yesterday was really busy for me.ad to attend three meetinkgo for yThetreove being active!") == 0
    @test is_bored("Although I live in lahughedsawthe suburbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the parks and gardens.") == 1
    @test is_bored("work.") == 0
    @test is_bored("many") == 0
    @test is_bored("also") == 0
    @test is_bored("vkcaRSvxR") == 0
    @test is_bored("learntalk") == 0
    @test is_bored("things") == 0
    @test is_bored("good?") == 0
    @test is_bored("manyaged") == 0
    @test is_bored("Hello world. I adm feeling good today. Are the plants green? Woknows! IH  bet It is hot outside.") == 1
    @test is_bored("ahod.ave") == 0
    @test is_bored("retoort.") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three meetings and complete a report. However, I still managed to go for a run. I love beinvg active!") == 2
    @test is_bored("Howeverr,") == 0
    @test is_bored("eo.n.") == 0
    @test is_bored("repwgoohdishboughtort.") == 0
    @test is_bored("Are you feeling good? I hop I really want to go to the beach today. It is such a beautiful day outsride.") == 1
    @test is_bored("beautifuenjoyl") == 0
    @test is_bored("I really need to finish this project. It is duen tomorrow. I hope I can get it done in time. If not, I will have to ask for an extension. I hate having to do that.") == 3
    @test is_bored("to") == 0
    @test is_bored("TIt is so hot outside today. I hate this weaUgh!he") == 1
    @test is_bored("pYesterday") == 0
    @test is_bored("Yesterday was really busstistill manyaged to back.go foer a run.l I love being active!") == 0
    @test is_bored("beiYesterday") == 0
    @test is_bored("ggooAlth") == 0
    @test is_bored("The train n.her") == 0
    @test is_bored("reopwgoohdigdotshboughtort.") == 0
    @test is_bored("spedrivve,nt") == 0
    @test is_bored("Hello world. I am feeling goohd today. Are the plants greent? Who knows! I beHello world. I am feelihe plants greent? Who knows! I bet It is hot outside. outside.") == 4
    @test is_bored("goo") == 0
    @test is_bored("traiculturecomplete.n") == 0
    @test is_bored("someleaopbportbeachunityrntalk") == 0
    @test is_bored("Hello world. dI adm feeling good today. Are the plants green? Woknows! I  bet It is hot outside.") == 1
    @test is_bored("too") == 0
    @test is_bored("Yesterday was really busy for me.ad to attend three meetinkgo for yThvetreove being active!") == 0
    @test is_bored("omeetingsever,bportbeachunity") == 0
    @test is_bored("honaave") == 0
    @test is_bored("Yesterday was really busy for  I love beingHello active!") == 0
    @test is_bored("Yesterday was really busy for me. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run.c I love beiYesterday was really busy for me. I had to attend three meetings and bctalkgo for a run. I love being active!ng active!") == 2
    @test is_bored("hDptacYope") == 0
    @test is_bored("wantleearned") == 0
    @test is_bored("spedpcrive,nctallkgtrain") == 0
    @test is_bored("can") == 0
    @test is_bored("so") == 0
    @test is_bored("Ifwanted") == 0
    @test is_bored("grat") == 0
    @test is_bored("timefeeling") == 0
    @test is_bored("aart") == 0
    @test is_bored("Yesterday was really busy for me mI love being active!") == 0
    @test is_bored("Thetreove") == 0
    @test is_bored("tactivehoot") == 0
    @test is_bored("hoYesterday was really busy foar me.too I Hello world. I am feeling goohd today. Are the plants green? Who knows! I bet It is hot outside.hanrrun. I lovextension.e being active!pe") == 3
    @test is_bored("The traiculture.n is always crowded during rush horert.ur. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.her") == 2
    @test is_bored("hDptacYoe") == 0
    @test is_bored("green?") == 0
    @test is_bored("beachggooAlHello") == 0
    @test is_bored("aYesterday was really busy for mehope. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run. I love being active!lways") == 1
    @test is_bored("turned") == 0
    @test is_bored("The traiin is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but pain.parking is too expensive. It is a real pain.her") == 2
    @test is_bored("I went to the store and bought some milk. I also sabutw a movie last night. Why are you stgill in bed?") == 2
    @test is_bored("extensioen.") == 0
    @test is_bored("projjectc.") == 0
    @test is_bored("Yesterday was really busy for me.aYesterday was really busy for me. I had to attend three meetings and ctalkgo for a run. I love being  active!o for yThetreove being active!") == 2
    @test is_bored("eHUAgcb") == 0
    @test is_bored("The train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parkinIg is too expensive. It is a real pain.her") == 2
    @test is_bored("youThe train is always crowded during rush ho parkinIg is too expensive. It is a real pain.her") == 0
    @test is_bored("Ugh!") == 0
    @test is_bored("stgillgooAlthough") == 0
    @test is_bored("DtiH") == 0
    @test is_bored("me.too") == 0
    @test is_bored("parkinIg") == 0
    @test is_bored("beiYestetrday") == 0
    @test is_bored("eHUAgHoweverr,cb") == 0
    @test is_bored("Yest!erday was really busy for me. I had to attend three mieetings and complete a report. However, I still managed to go for a run. I love being ac!") == 2
    @test is_bored("er.I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We laughed and had a great time. We exchanged numbers. I hope I see her again soon!") == 5
    @test is_bored("aPhAa") == 0
    @test is_bored("googardens.hd") == 0
    @test is_bored("partomorrow.kinisactive!per.herIg") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. Shehope I see her again soon!me.") == 3
    @test is_bored("When I visitedyou Paris, I spent a lot of tihme exploring the museums and art galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("Yesterday was really busstistill manyaged  to back.go foer a run.l I love being activeIt is so hot outside today. I hate this weaUgh!!") == 1
    @test is_bored("When I visitedyou Paris, I spent a lot of tiretoort.hme exploring the museums and art galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("Hello world. I am feelihe plants greent? Who knowfs! I bet It is hot outside.") == 2
    @test is_bored("ally") == 0
    @test is_bored("lastDtiHeknows!MYkfeY") == 0
    @test is_bored("Are you fee ling good? I hope so. I really want to go tol the beach today. It is such a beautiful day outside.") == 2
    @test is_bored("TIt is soher. hot outside today. I hate this weaUgh!he") == 1
    @test is_bored("isactive!per.her") == 0
    @test is_bored("Are you feeling good? I hop I really want to go to the beach today. It is such a sride.") == 1
    @test is_bored("ac!") == 0
    @test is_bored("forrun.") == 0
    @test is_bored("musems") == 0
    @test is_bored("su") == 0
    @test is_bored("Are Yesterday was really busy for me. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run.c I love being active!ul day outside.") == 0
    @test is_bored("hope") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three mbeing active!") == 1
    @test is_bored("When I visited Paris, I spent a lot of time exhoYesterday was really busy foar me. I had to attend three meetingknows!kgo for a forrun. I love being active!pees. Itt was a grat opportunity to learn about history and culture.") == 2
    @test is_bored("The train is always crowded during rush hour. I have to stand tduringhe whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.") == 2
    @test is_bored("Yesterday was really busy for mehope. nI chad to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run. I love being active!") == 1
    @test is_bored("hoYesterday was really busy foar me.too I Hello world. I am feeling goohd today. Are the plants green? Who knrepomoviert.ows! I bet It is hot outside.hanrrun. I love being active!pe") == 3
    @test is_bored("Thetereove") == 0
    @test is_bored("I went to the store and bought some milk. I also laughen bed?") == 2
    @test is_bored("n") == 0
    @test is_bored("Shhe") == 0
    @test is_bored("somreleaopbportbeachunityboughttalk") == 0
    @test is_bored("isI") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She od. We laughed and had a great time. We exchanged numbderss. I hope I see her again soon!") == 4
    @test is_bored("I saw her on the street. I smiled at her. She smiled baYesterday was really busy for me.ad to attend three meetinkgo for yThetreove being active!ck. I wanted to talk to her but I was too shy. She od. We laughed and had a great time. We exchanged numbderss. I hope I see her again soon!") == 4
    @test is_bored("foer") == 0
    @test is_bored("DtiHfeMeYkfeHello world. I am feeling goohd today. Are the plants greent? Who knows! I beHello world. I am feelihe plants greent? Who knows! I bet It is hot outside. outside.") == 4
    @test is_bored("project.n.her") == 0
    @test is_bored("wafinishs") == 0
    @test is_bored("drive,") == 0
    @test is_bored("AreWhen I visited Paris, I spent a lot of tihme exploring the museums and art galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("Yesterday was reabetlly busy for me. I had t three meetinkgo for a run. mI love being active!") == 1
    @test is_bored("wnishs") == 0
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who knfood. I bet It is huot outside.") == 2
    @test is_bored("The traiculture.n is always crowded during rush huour. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.her") == 2
    @test is_bored("pars") == 0
    @test is_bored("nII") == 0
    @test is_bored("gggooAlthoughThe") == 0
    @test is_bored("sti") == 0
    @test is_bored("bet") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie lasto night. Why are you sti in bed?") == 2
    @test is_bored("The train ier") == 0
    @test is_bored("movibute") == 0
    @test is_bored("Howcevera,") == 0
    @test is_bored("activve!ng") == 0
    @test is_bored("came") == 0
    @test is_bored("gggooAlthouYesterday was really busy for me.ad to attend three meetinkgo for yThvetreove being active!gh") == 0
    @test is_bored("good") == 0
    @test is_bored("outside.houghgoohd") == 0
    @test is_bored("bu!sy") == 0
    @test is_bored("AreWhen I visited Paris, I spent a lot of tihme exploring the museums and art galleries. It was a great opportunity to learn about hnistory and culture.") == 0
    @test is_bored("learnatalk") == 0
    @test is_bored("exchacnged") == 0
    @test is_bored("such") == 0
    @test is_bored("Yesterday was really bu!sy for me. I had to attend three mieetings and tcomplete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("DtiHfeMeYkfeHello world. I am feeling goohd today. Are the plants gde.") == 1
    @test is_bored("hoYesterday was reduenally busy foar me. I had to attend three meetinkgo for a fWhenorrun. I love being active!pe") == 2
    @test is_bored("mfeelinganaged") == 0
    @test is_bored("cThetereovean") == 0
    @test is_bored("ItdI") == 0
    @test is_bored("back.go") == 0
    @test is_bored("aYesterday was really busry for mehope. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run. I love being active!lways") == 1
    @test is_bored("reporpt.") == 0
    @test is_bored("beeiYeteerday") == 0
    @test is_bored("Yest!erday") == 0
    @test is_bored("weather.") == 0
    @test is_bored("beautifuenjoyjl") == 0
    @test is_bored("WWe") == 0
    @test is_bored("laughed") == 0
    @test is_bored("parsShe") == 0
    @test is_bored("fph") == 0
    @test is_bored("gde.work.") == 0
    @test is_bored("I went to the store and bought s ome milk. I also saw a movie last night. Why are you sti in bed?") == 2
    @test is_bored("isday.") == 0
    @test is_bored("I went to the store and bgoodght some milk. I also saw a movie last night. Why are you still in bed?") == 2
    @test is_bored("opportunitbeautifuly") == 0
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who knows! I bet It isI went to the store and bought some milk. I also saw a movie last getnight. Why are you sti in bed?day.repwgoohdishboughtort. hot outside.") == 3
    @test is_bored("gggooAlthouYesterday was realley busy for me.ad to attend three meetinkgo for yThvetreove being active!gh") == 0
    @test is_bored("The train aAreWhen I visited Paris, I spent a lot of tihme exploring the museums and art galleries. It was a great opportunity to learn about history and culture.d.aveisactive!per.her") == 0
    @test is_bored("went") == 0
    @test is_bored("It is. so hot outside today. I hate this weaUgh!") == 1
    @test is_bored("I really need to finish this project. It is due tomorrow. I hope I can get it done in time. If not, I will have to ask for an extension. I hate halving to do that.") == 3
    @test is_bored("Dtspedlkgot") == 0
    @test is_bored("rert") == 0
    @test is_bored("opbportbeacbgoodghthunity") == 0
    @test is_bored("mums") == 0
    @test is_bored("duuduringe") == 0
    @test is_bored("It is so hoot ioutside today. I hate this weaUgh!") == 1
    @test is_bored("Yesat!erday") == 0
    @test is_bored("") == 0
    @test is_bored("fee") == 0
    @test is_bored("trai") == 0
    @test is_bored("hThe") == 0
    @test is_bored("getnight.") == 0
    @test is_bored("The train is always crowded during rush hour. I have to stag is too expensive. It is a real pain.her") == 1
    @test is_bored("suchmany") == 0
    @test is_bored("Yesterday was really busy for mel. I had to attend three meetings and complete a report. However, I still managed to back.go for a run. I love being active!") == 2
    @test is_bored("great") == 0
    @test is_bored("seppent") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend thnreeYesterday was re ally busy for me. I had to attend three meetings and complete a report. Howcever, I still managed to go for a run. I love being active! meetinkgo for a run. I love being active!") == 4
    @test is_bored("gdeThe train is always crowdhoYesterday was really busy foar me.too I Hello world. I am feeling goohd today. Are the plants green? Who knrepomoviert.ows! I bet It is hot outside.hanrrun. I love being active!peed during rush hour. I have to stand the whole way to work. I wish I could just driveis a real pain.her.work.") == 5
    @test is_bored("andain.her") == 0
    @test is_bored("Yesterday was really busy for me. I haYesterday was really busy for me.ad to attend three meetinkgo for yThvetreove being active!eport. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("alsyss") == 0
    @test is_bored("wantleearwnishsned") == 0
    @test is_bored("hinsideThe") == 0
    @test is_bored("tgdeThehis") == 0
    @test is_bored("horert.ur.") == 0
    @test is_bored("exchangecd") == 0
    @test is_bored("ADtareiHeMYkfeYrspentelive") == 0
    @test is_bored("projectec.") == 0
    @test is_bored("W") == 0
    @test is_bored("me.aYesterday") == 0
    @test is_bored("sactive!pYesterday was really busy for me. nI had to attend three meetings and complete a Ugh!report.i However, Howcever,yaged to back.go for a run.c I love beiYesterday was really busy for me. I had to attend three meetings and bctalkgo for a run. I love being active!ng active!eo") == 2
    @test is_bored("TThe traiculture.n is always crowded during rush huour. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.herhe train ier") == 2
    @test is_bored("gooAlthough I live in the suburbs, I enjoy visiting the city. Ther parks and gardens.hd") == 0
    @test is_bored("yThetreeove") == 0
    @test is_bored("gdoThe train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parkinIg is too expensive. It is a real pain.hert") == 2
    @test is_bored("behistoryotlastDtiHeknows!MYkfeY") == 0
    @test is_bored("DtiHeMbackkfeY") == 0
    @test is_bored("bask") == 0
    @test is_bored("edxopportbeachunitychanged") == 0
    @test is_bored("Yesterday was re ally busy for me. I had to attend three meetings and complete a report. Howcever, I still m being active!") == 1
    @test is_bored("tooo") == 0
    @test is_bored("ctalkgo") == 0
    @test is_bored("n.her") == 0
    @test is_bored("Yesterday was really bIfwantedusstistill manyaged  to back.go foer a run.l I love being activeIt is so hot outside today. I hate this weaUgh!!") == 1
    @test is_bored("ecd") == 0
    @test is_bored("hoave") == 0
    @test is_bored("pain.herhe") == 0
    @test is_bored("tai") == 0
    @test is_bored("duued.") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. Ibctalkgo wanted to talk to her but I was too shy. She od . We laughed and had a greasoon!me.t time. We exchanged numbders. I hope I see her again soon!me.") == 3
    @test is_bored("IH") == 0
    @test is_bored("Yest!t. However, I still managed to go for a run. I love being ac!") == 1
    @test is_bored("lreabetlly") == 0
    @test is_bored("AreWhen I visited Paris, I spent a lot of tihmrt galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("cThetereoHello world. I am feeling good today. Are the plants green? Who knows! I bet It is hot outside.vean") == 2
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We la ughed and had a great time. We exchanged numbers. I hope I see her again soon!") == 5
    @test is_bored("waactivehoots") == 0
    @test is_bored("edxopportbeachunityouTheychanged") == 0
    @test is_bored("exchansugecd") == 0
    @test is_bored("tart") == 0
    @test is_bored("bed?ay.spedpcrive,nctallkgtrain") == 0
    @test is_bored("wwill") == 0
    @test is_bored("rthigntraings") == 0
    @test is_bored("abackdround") == 0
    @test is_bored("WWerert") == 0
    @test is_bored("greasoon!me.t") == 0
    @test is_bored("TI really need to finish this project. It is due tomIorrow. I hope I can get it done in time. If not, I will have to ask for an extension. I hate having to do that.hetreove") == 2
    @test is_bored("city.") == 0
    @test is_bored("galleries.") == 0
    @test is_bored("active!lways") == 0
    @test is_bored("gggooAlthouYesterday was realley busy for me.ad to attend three treove being  active!gh") == 0
    @test is_bored("beachggooAlHelsomreleaopbpogrtbeachuanityboughttalko") == 0
    @test is_bored("gggooAlthotraiinThe") == 0
    @test is_bored("vhonavave") == 0
    @test is_bored("Yest!erday was really busy for me. I had to attend three mieetings and complete a report. Howjusstever, I still managed to go for a run. I love being ac!") == 2
    @test is_bored("haYesterday") == 0
    @test is_bored("active!Hello world. I adm feeling good today. Are the plants green? Woknows! I  bet It is hot outside.ng") == 2
    @test is_bored("lovesom") == 0
    @test is_bored("active!peed") == 0
    @test is_bored("When I visited Paris, I spent a lot of time exploas a grat opportunity tor learn about history and culture.") == 0
    @test is_bored("rtor") == 0
    @test is_bored("huour.ited") == 0
    @test is_bored("beiYestereday") == 0
    @test is_bored("wanYesterday was really busstistill manyaged to back.go foer a run.l I love being active!ted") == 0
    @test is_bored("aPhAamI") == 0
    @test is_bored("I saw her on the stWWereet. I smiled at her. She smiled baYesterday was really busy for me.ad to attend three meetinkgo for yThetreove being active!ck. I wanted to talk to her but I was too shy. She od. We laughed and had a great time. We exchanged numbderss. I hope I see her again soon!") == 4
    @test is_bored("It is so hooth ioutside today. I hate this weaUgh!") == 1
    @test is_bored("gisIggooAlthouYesterday was realley busy for me.ad to attend three meetinkgo for yThvetreove being active!gh") == 0
    @test is_bored("When I visited Paris, I spent a lot of time exploring the museums and art galleries. It was a great opportunity tobeeiYeteerday learn about history and culture.") == 0
    @test is_bored("Yesterday was really busy for me. I had t three meetinkback.gogo for a r un. mI love being active!") == 1
    @test is_bored("edxoppdortbeachunitychanged") == 0
    @test is_bored("Ther") == 0
    @test is_bored("partomorrow.kinisactive!per.hestayrIg") == 0
    @test is_bored("seppenHello world. I adm feeling good today. Are the plants green? Who knows! I bet It is hot outside.t") == 2
    @test is_bored("tactive") == 0
    @test is_bored("isday.hoYesterday was really busy foar me.too I Hello world. I am feeling goohd today. Are the plants green? Who knows! I bet It is hot outside.hanrrun. I love being active!pe") == 3
    @test is_bored("so!") == 0
    @test is_bored("ggooAlthoughdgoohd") == 0
    @test is_bored("back.") == 0
    @test is_bored("F") == 0
    @test is_bored("opportbeachuninity") == 0
    @test is_bored("YesterdayahoYesterday") == 0
    @test is_bored("wehather.") == 0
    @test is_bored("Yesterday was really rbusy for me. I haYesterday was really busy for me.ad to attend three meetinkgo for yThvetreove being active!eport. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("Hello world. I adm feeling good today. Are the plants green? WoIknows! I  bet It is hot outside.") == 2
    @test is_bored("Paris,") == 0
    @test is_bored("Drusht") == 0
    @test is_bored("hDptiHeMkfope") == 0
    @test is_bored("I really need to finish this project. It is due tomorrow. I hope I can get it done in time. If not, I will have to ask for an extension. I hate halving to d o that.") == 3
    @test is_bored("The traiin is always crowded during rush hour. I have to stand the whole way to work. I wioIknows!n.her") == 2
    @test is_bored("ling") == 0
    @test is_bored("b!u!sy") == 0
    @test is_bored("manyyaaged") == 0
    @test is_bored("meetingknows!kgo") == 0
    @test is_bored("Hello world. I am feeling good todbaYesterdayay. Are the plants green? Who knows! I bet It is hot outside.") == 2
    @test is_bored("specompleetedtrit") == 0
    @test is_bored("active!pepain.herhe") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend threeYesterday was re ally busy for me. I had to attend three meetings and complete a report. Howcevera, I still managed to go for a run. I locve being active! meetinkgo for a run. I love being active!") == 4
    @test is_bored("gdoThe train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parkinIg is too exrpensive. It is a real pain.hert") == 2
    @test is_bored("beiYestea") == 0
    @test is_bored("ctalkThe train isactive!pere. It is a real andain.hergo") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movoie last night. Why are you sti in bed?") == 2
    @test is_bored("Yesterday was really busy for mee.ad to attend three meetinkgo for yThetreove being active!") == 0
    @test is_bored("exploaas") == 0
    @test is_bored("tihme") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend threeYesterday was re ally busy for me. I hThe train aAreWhen I visited Paris, I spent a lot of tihme exploring the museums and art galleries. It was a great opportunity to learn about history and culture.d.aveisactive!per.herad to attend three meetings and complete a report. Howcevera, I still managed to go for a run. I love being active! meetinkgo for a run. I love being active!") == 4
    @test is_bored("edxoppsride.ortbeachunitychanged") == 0
    @test is_bored("I really need to finish this project. It is due tomorrow. I hope I can get it done in time. Ifwanted not, I will have to askh for an extension. I hate having to do that.") == 3
    @test is_bored("I went to the store and bought some milk. I also saw a movieAre you feeling good? I hope so. I really want to go tol the beach today. It is such a beautiful day outside. last night. Why are you sti in bed?") == 4
    @test is_bored("numbderss.") == 0
    @test is_bored("movoie") == 0
    @test is_bored("turbeiYesteerdayned") == 0
    @test is_bored("UmvV") == 0
    @test is_bored("It is so hooth ioutside toexpensive.day. I hate this weaUgh!") == 1
    @test is_bored("ssoo.") == 0
    @test is_bored("eIt is so hoot ioTIt is so hot outside today. I hate this weaUgh!heutside today. I hate this weaUgh!eo.n.") == 2
    @test is_bored("wiwsh") == 0
    @test is_bored("rerlxzoTZlWQpt") == 0
    @test is_bored("laugghed") == 0
    @test is_bored("hoYesterday was really busy foar me.too I Hel lo world. I am feeling goohd today. Are the plants green? Who knreport.ows! I bet It is hot outside.hanrrun. I love being active!pe") == 3
    @test is_bored("Yesterdays was really busy for mee.ad to attend three meetinkgo for yThetreove being active!") == 0
    @test is_bored("see.") == 0
    @test is_bored("proWhen I visitedyou Paris, I spent a lot of tihme exploring the museums and art galleries. It was a great opportunity to learn about history and culture.ject.") == 0
    @test is_bored("pYesterday was really busy for me. I had to attend three meetinkgo for Thetreove being active!rojectc.") == 1
    @test is_bored("Helloelihe plants greent? Who knowfs! I bet It is hot outside.") == 1
    @test is_bored("hoYesterday was really busy foar me.too I Hello world. I am feeling goohd today. Are the plants green? Who knrepomoviert.ows! I bet It is  outside.hanrrun. I love being active!pe") == 3
    @test is_bored("RXNeOJO") == 0
    @test is_bored("stag") == 0
    @test is_bored("ecdayd") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She od. We laughed and had a greatknreport.ows!n!") == 3
    @test is_bored("beautihalvingfuenjoyjl") == 0
    @test is_bored("dItdI") == 0
    @test is_bored("omeetingsever,bportbeachunityyou") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three mbeing activesabutw!") == 1
    @test is_bored("Shhegde.work.") == 0
    @test is_bored("DtThe train is always crowded during rush hour. I have to stand the whole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.kspedlkgot") == 2
    @test is_bored("suchmamny") == 0
    @test is_bored("way") == 0
    @test is_bored("stWWereet.") == 0
    @test is_bored("I feel good today. I will be productive. will kill It.") == 2
    @test is_bored("I feel good today? I will be productive. will kill It") == 2
    @test is_bored("I feel good today! I will be productive. will kill It") == 2
    @test is_bored("I feel good today.. I will be productive. will kill It") == 2
    @test is_bored("I feel good today! I will be productive. will kill It!") == 2
    @test is_bored("I feel good today I will be productive") == 1
    @test is_bored("I feel good today. I will be productive. will kill It Bla bla bla.") == 2
    @test is_bored(" I am wearing a blue shirt today. It is my lucky shirt. I hope I win the contest. I am going to gym. I hear people there do a lot of cardio!") == 4
    @test is_bored("Althounight.gh I live in the sub urbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the parks and gardens.") == 1
    @test is_bored("Yesterday was really busy for me. I had to atvtend three meetings and complete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("about") == 0
    @test is_bored("see") == 0
    @test is_bored("a") == 0
    @test is_bored("Yesterday was really busy for me. I had to atvtend three meetings and complete a report. n. I love being active!") == 2
    @test is_bored("anHowever,d") == 0
    @test is_bored("Yesterday was really busy for me. I had to atvtend three meetings and complete a report. n. I love btraineing active!") == 2
    @test is_bored("Although I live in the suburbs, I enjoy visiparksgs to do and see. I especially like visiting the parks and gardens.") == 1
    @test is_bored("Although I live in the suburbs, I enjoy visiparksgs to do and seetomorrow.. I especially like visiting the pthisarks and gardens.") == 1
    @test is_bored("vlive") == 0
    @test is_bored("Yesterday was really busy for me. I had to atvtItend three meetings and complete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("D") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We laughed and had a great time. We exchanged numbers. I hope getI see her again soon!") == 5
    @test is_bored("for") == 0
    @test is_bored("It is so hot outside today. Iwill hate this weather. I wish I could just stay inside all day. Ugh!") == 1
    @test is_bored("do") == 0
    @test is_bored("sstore") == 0
    @test is_bored("It is so hot outside today. Iwill hate this weather. I wish I could just stay inside alday. Ugh!") == 1
    @test is_bored("seetomorrow..") == 0
    @test is_bored("Why") == 0
    @test is_bored("during") == 0
    @test is_bored("whorushle") == 0
    @test is_bored("live") == 0
    @test is_bored("d") == 0
    @test is_bored("urbs,") == 0
    @test is_bored("at") == 0
    @test is_bored("urbss,") == 0
    @test is_bored("Yesterday was really busy for me. I had to atvtend thoree meetings andgo complete a report. However, I still managed to go for a run. I love being active!") == 2
    @test is_bored("notcould,") == 0
    @test is_bored("stoday.dee") == 0
    @test is_bored("complete") == 0
    @test is_bored("Althounight.gh I live in the sub urbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.") == 1
    @test is_bored("nigh.") == 0
    @test is_bored("When I visited Paris, I spent a lot of time exploring tthe museums and art galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("Althounight.gh I livve in the sub utrbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.") == 1
    @test is_bored("street.") == 0
    @test is_bored("folivver") == 0
    @test is_bored("Hello world. I am feeling good today. Are the plants green? Who knows! I bet It is hot outstoreside.") == 2
    @test is_bored("Yesterday") == 0
    @test is_bored("Although I live in the suburbs, Ithiske visiting the pthisarks and gardens.") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We laughewholed and had a great time. We exchanged numbers. I hope I see her again soon!") == 5
    @test is_bored("However,") == 0
    @test is_bored("att") == 0
    @test is_bored("Although I live in the suburbs, I enjoy visiting the city. There are so many things to do and seAlthough I live in the suburbs, Ithiske visiting the pthisarks and gardens.visiting the parks and gardens.") == 0
    @test is_bored("foobetd.") == 0
    @test is_bored("ur") == 0
    @test is_bored("notocould,") == 0
    @test is_bored("walked") == 0
    @test is_bored("udady.rbs,") == 0
    @test is_bored("nopaerks") == 0
    @test is_bored("aboYesterday was really busy for me. I had to atvtItend three meetings and complete a report. However, I still managed to go for a run. I love being active!ut") == 2
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night. Why are you still in bed?,") == 2
    @test is_bored("It is so hot outside today. Iwill hate this weather. I wish I  could just stay inside all day. Ugh!") == 1
    @test is_bored("Who") == 0
    @test is_bored("sstorte") == 0
    @test is_bored("selike") == 0
    @test is_bored("The train is always crowded during rush hour. I havehole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.") == 2
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked foaughed and had a great time. We exchanged numbers. I hope getI see her again soon!") == 5
    @test is_bored("abouIt is so hot outside today. Iwill hate this weather. I wish I could just stay inside all day. Ugh!") == 1
    @test is_bored("enjoy") == 0
    @test is_bored("aboYesterday was really busy for me.parking I had to atvtItend three meetings and complete a reporet. However, I still managed to go for a run. I love being active!ut") == 1
    @test is_bored("wl") == 0
    @test is_bored("Wo") == 0
    @test is_bored("Parsehaveliksmiledeis,") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night. Whysstorte are you still in bed?,") == 2
    @test is_bored("in") == 0
    @test is_bored("Yesterday was really busy for me. I had to attend three meetings and complete a report. However, I still managed to go for a runc. I love being active!") == 2
    @test is_bored("UJHpsxQi") == 0
    @test is_bored("all") == 0
    @test is_bored("vlivUJHpsxQie") == 0
    @test is_bored("nopaerksHello world. I am feeling good today. Are the plants green? Who knows! I bet It is hot outside.") == 2
    @test is_bored("aboYesterday was raeally busy for me.parking I had to atvtItend three meetings and complete a reporet. However, I stiworld.ll managed to go for a run. I love being active!ut") == 1
    @test is_bored("sub") == 0
    @test is_bored("hot") == 0
    @test is_bored("notcouldstore,") == 0
    @test is_bored("Hello world. I am feeling good today. Are the  plants green? Who knows! I bet It is hot outside.") == 2
    @test is_bored("Wsawho") == 0
    @test is_bored("caAlthough") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night. Whysstorte are you still in be?,") == 2
    @test is_bored("seAlthough") == 0
    @test is_bored("lvisitedive") == 0
    @test is_bored("aa") == 0
    @test is_bored("aboYesterday was really busy for me.parking I had to atvtItend three meetings and complete a reporet. However, I still managed tove being active!ut") == 0
    @test is_bored("Hello world. ants green? Who knows! I bet It is hot outsidego.") == 1
    @test is_bored("night.") == 0
    @test is_bored("today.yyou") == 0
    @test is_bored("toaboYesterday was really busy for me. I had to atvtItend three meetings and complete a report. However, I still managed to go for a run. I love being active!utday.yyou") == 2
    @test is_bored("seetohours.morrow..") == 0
    @test is_bored("outstoreside.") == 0
    @test is_bored("sw..") == 0
    @test is_bored("If") == 0
    @test is_bored("Althounight.gh I live in the sub urbs, I enjoy visiting the city. There are so many thike visiting the parks and gardens.") == 0
    @test is_bored("Althounight.gh I livve in the sub The train is always crowded during rush hour. I havehole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.utrbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.") == 3
    @test is_bored("asstwillorea") == 0
    @test is_bored("rreal") == 0
    @test is_bored("aall") == 0
    @test is_bored("Although I live in the suburbs, Ithiske viIsiting the pthisarks and gardens.") == 0
    @test is_bored("Iftime") == 0
    @test is_bored("store") == 0
    @test is_bored("aaa") == 0
    @test is_bored("Althounight.gh I live in the sub urbs, I enjoy visiting the city. Theng the paerks and gardens.") == 0
    @test is_bored("alwways") == 0
    @test is_bored("aboYesterday was really busy for me. I had to atvtItend three meetings and complete a report. However, I still managed to go  for a run. I love being active!ut") == 2
    @test is_bored("seetohours.moorrow..") == 0
    @test is_bored("seetohatvtItendours.moorrow..") == 0
    @test is_bored("nibackght.") == 0
    @test is_bored("P,aris,") == 0
    @test is_bored("ask") == 0
    @test is_bored("away.") == 0
    @test is_bored("gardens.") == 0
    @test is_bored("on") == 0
    @test is_bored("arodunnd") == 0
    @test is_bored("caday.n") == 0
    @test is_bored("seAlthoAugh") == 0
    @test is_bored("dbtraineing") == 0
    @test is_bored("wwZQ") == 0
    @test is_bored("Althounight.gh I live in the sub urbs, I enjoy visiting the city. There isare so many thike visiting the parks and gardens.") == 0
    @test is_bored("so.") == 0
    @test is_bored("I went eto the store and bought some milk. I also saw a movie last night. Why are you still in bed?") == 2
    @test is_bored("greenworld.?") == 0
    @test is_bored("arou") == 0
    @test is_bored("had") == 0
    @test is_bored("n.UJHpsxQi") == 0
    @test is_bored("aroseAlthoAughund") == 0
    @test is_bored("visiparksgsWo") == 0
    @test is_bored("Arlthough I live in the suburbs, I enjoy visiparksgs to do and see. I especially like visiting the parks and gardens.") == 1
    @test is_bored("nibacht.") == 0
    @test is_bored("runbought.") == 0
    @test is_bored("extensiaboYesterday was really busy for me. I had to atvtItend three meetings and complete a report. However, I still managed to go  for a run. I love being active!uton.") == 2
    @test is_bored("Are you feeling good? I hope iso. I really want to go to the beach today. It is such a beautiful day outside.") == 2
    @test is_bored("I went eto the store and bought some milk. I also saw a movieenjoy last night. Why are you still in bed?") == 2
    @test is_bored("atfood.") == 0
    @test is_bored("lvisitedaughd") == 0
    @test is_bored("knows!") == 0
    @test is_bored("UJHpsxQiapain.utrbs,aa") == 0
    @test is_bored("aactive!utday.yyouall") == 0
    @test is_bored("Hello world. I am feeling good today. Are the  plants green? Who knows! I bet It is hot o utside.") == 2
    @test is_bored("allenjoy") == 0
    @test is_bored("seAlthtough") == 0
    @test is_bored("mtomorrow.e.") == 0
    @test is_bored("arexpensive.ound") == 0
    @test is_bored("liv") == 0
    @test is_bored("I went to the store and bought some millk. I also saw a movie last night. Why are you still in bed?,") == 2
    @test is_bored("I went to the store and bought some millk. I also saw a movite last night. Why are you still in bed?,") == 2
    @test is_bored("visiting") == 0
    @test is_bored("assk") == 0
    @test is_bored("seAlthtougAlthough I live in the suburbs, Ithiske viIsiting the UJHpsxQipthisarks and gardens.h") == 0
    @test is_bored("notcouldstore") == 0
    @test is_bored("stcity.") == 0
    @test is_bored("Whoa") == 0
    @test is_bored("The train is always crowded during rush hour. I have to stand the whole wayt to work. I wish I could just drive, but parking is too expensive. It is a real pain.") == 2
    @test is_bored("raeally") == 0
    @test is_bored("but") == 0
    @test is_bored("seli") == 0
    @test is_bored(".gardens.") == 0
    @test is_bored("atvtend") == 0
    @test is_bored("There") == 0
    @test is_bored("lviin") == 0
    @test is_bored("lean") == 0
    @test is_bored("exbe?,tension.") == 0
    @test is_bored("dbtrg") == 0
    @test is_bored("suburbs,") == 0
    @test is_bored("crowded") == 0
    @test is_bored("aaall") == 0
    @test is_bored("no") == 0
    @test is_bored("ssasstwilloreatore") == 0
    @test is_bored("notcoudld,") == 0
    @test is_bored("aboYesterday was real complete a report. However, I still managed to go  for a run. I love being active!ut") == 1
    @test is_bored("movieenjoy") == 0
    @test is_bored("garden") == 0
    @test is_bored(".gardenns.") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night.gardens. Whysstorte are you still in bed?,") == 2
    @test is_bored("aactiraeallyve!utday.yyouall") == 0
    @test is_bored("nibachAlthounight.gh I live in the sub urbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.t.") == 1
    @test is_bored("ithen") == 0
    @test is_bored("aboYesterday was really busy for me.parking I had to atvtItend three meetings and complete a reporet. However, I still managed tove being active!utfolivver") == 0
    @test is_bored("so.abouIt") == 0
    @test is_bored("wlsw..") == 0
    @test is_bored("WhThe train is always crowded during rush hour. I have to stand the whole wayt to work. I wish I could just drive, but parking is too expensive. It is a real pain.o") == 2
    @test is_bored("feeling") == 0
    @test is_bored("Whorunbought.") == 0
    @test is_bored("nhight.") == 0
    @test is_bored("outstorecanside.") == 0
    @test is_bored("eto") == 0
    @test is_bored("Ifte") == 0
    @test is_bored("outside.") == 0
    @test is_bored("Arlthough") == 0
    @test is_bored("uwholerbs,") == 0
    @test is_bored("Although I live in the suburbs, Ithiske viIsiting the pthisarks atvtItendand garden.") == 0
    @test is_bored("wayt") == 0
    @test is_bored("Althounight.gh I livve in the sub The train is always crowded during rush hour. I havehole way to work. I wish I could just drive, but parking is too expensive. It is ame. real pain.utrbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.") == 3
    @test is_bored("aboYesterday was really busy for me. I had to atvtItend three meetings and complete a report. Howeverl, I still managed to go for a run. I love being active!ut") == 2
    @test is_bored("Yesterday was really buwantedsy for me. I had to atvtend three meetings and complete a report. n. I love btraineing active!") == 2
    @test is_bored("wuhorushle") == 0
    @test is_bored("When I visited Paris, I spent a lot of time exploring the museums afolivvernd art galleries. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("seetohours..morrow..") == 0
    @test is_bored("Woo") == 0
    @test is_bored("odo") == 0
    @test is_bored("Iextension.f") == 0
    @test is_bored("eseeli") == 0
    @test is_bored("WhThe train is always crowded during rush hour. I have to stand the whole wayt to work. I wish I could just drive, but parking is too expensive. It is a r.o") == 2
    @test is_bored("having") == 0
    @test is_bored("atfood.done") == 0
    @test is_bored("vliv") == 0
    @test is_bored("Yesterday was really buwantedsy for me. I had to atvtend three meetings and complete a repaort. n. I love btraineing active!") == 2
    @test is_bored("Althounight.gh I livve in the sub The train is always crowded during rush hour. I havehole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.utrbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.amovieenjoy") == 3
    @test is_bored("rrWholeal") == 0
    @test is_bored("movieennjoy") == 0
    @test is_bored("aboYesterday was really busy foSher me. I had to atvtItend three meetings and complete a report. However, I still managed to go  for a run. I love being active!ut") == 2
    @test is_bored("suburbsus,") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night.gardens. Whysstorte are you stsuchill in bed?,") == 2
    @test is_bored("gyouarden") == 0
    @test is_bored("anlvisitedive") == 0
    @test is_bored("hours.") == 0
    @test is_bored("alwwexploringays") == 0
    @test is_bored("notcoudldlivve") == 0
    @test is_bored("dd") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wYesterday was really buwantedsy for me. I had to atvtend three meetings and complete a report. n. I love btraineing active!anted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to mte. We talked foaughed and had a great time. We exchanged numbers. I hope getI see her again soon!") == 7
    @test is_bored("paerks") == 0
    @test is_bored("Althounight.gh Ir live in the sub urbs, I enjoy visiting the city. There are so many thike visiting the parks and gardens.") == 0
    @test is_bored("anlvisitediI went to the store and bought some millk. I also saw a movie last night. Why are you still in bed?,ve") == 1
    @test is_bored("eiseeli") == 0
    @test is_bored("WhThe train is always crowded during rush hour. I have to stand the whole wayt to work. Although I live in the suburbs, I enjoy visiparksgs to do and see. I especially like visiting the parks and gardens.I wish I could just drive, but parking is too expensive. It is a r.o") == 3
    @test is_bored("onn") == 0
    @test is_bored("notucould,") == 0
    @test is_bored("whorushloe") == 0
    @test is_bored("UJHpsxQipthisarks") == 0
    @test is_bored("laughewholedall") == 0
    @test is_bored("ganhightt.rden") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted tutrbs,o talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked foaughed and had a great time. We exchanged numbers. I hope getI see her again soon!") == 5
    @test is_bored("alalways") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to  her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We laughed and had a great time. We exchanged numbers. I hope I see her again soon!") == 5
    @test is_bored("lliv") == 0
    @test is_bored("Iwill") == 0
    @test is_bored("o") == 0
    @test is_bored("run.like") == 0
    @test is_bored("aboYesterday was real complete a report. Howevern, I still managed to go  for a run. I love being active!ut") == 1
    @test is_bored("due") == 0
    @test is_bored("foaughed") == 0
    @test is_bored("ganhigalwwexploringayshtt.rden") == 0
    @test is_bored("are") == 0
    @test is_bored("vpthI saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We laughed and had a great time. We exchanged numbers. I hope I see her again soon!isarksli") == 4
    @test is_bored("aboYesterday was really busy for me. I had toWhysstorte atvtItend three meetings and complete a report. However, I still managed to go  for a run. I love being active!ut") == 2
    @test is_bored("notucouHoweverl,,") == 0
    @test is_bored("swatfood.done") == 0
    @test is_bored("food.") == 0
    @test is_bored("night.gardens.") == 0
    @test is_bored("tutrbs,o") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last nightn be?,") == 2
    @test is_bored("really") == 0
    @test is_bored("done") == 0
    @test is_bored("seHello world. I am feeling good touwholerbs,the  plants green? Who knows! I bet It is hot outside.etohours.moorrow..") == 2
    @test is_bored("Althounight.gh I live in the sub urbs, I enjoy visiting the city. There are and see. I  especially like visiting the paerks and gardens.") == 1
    @test is_bored("wwsawQ") == 0
    @test is_bored("day..") == 0
    @test is_bored("Yesterday was really busy for me. I had to atvtend three meetings Iand complete a report. n. I love being active!") == 2
    @test is_bored("llenjoy") == 0
    @test is_bored("movienjoyearou") == 0
    @test is_bored("being") == 0
    @test is_bored("nibachAlthoungardvpthIens.ight.g") == 0
    @test is_bored("I saw her on the attendstreet. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked for hours. We went to get some food. We laughewholed and had a great time. We exchanged numbers. I hope I see her again soon!") == 5
    @test is_bored("Althounight.gh I livve in the sub The train is always crowded during rush hour. I havehole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.utrbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardnibachAlthounight.gh I live in the sub urbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.t.ens.") == 4
    @test is_bored("good?allenjoy") == 0
    @test is_bored("gylaughedouarden") == 0
    @test is_bored("Whotraineing") == 0
    @test is_bored("ants") == 0
    @test is_bored("crowwYesterdayded") == 0
    @test is_bored("nibaght.") == 0
    @test is_bored("could") == 0
    @test is_bored("laughewholed") == 0
    @test is_bored("Are you feeling good? I hope iso. I really wantstand to go to the beach today . It is such a beautiful day outside.") == 2
    @test is_bored("seAlthtougAlthough I live in the suburbs, AlthoughIthiske viIsiting the UJHpsxQipthisarks and gardens.h") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wYesterday was really buwantedsy for me. I had to atvtend three meetings and complete a report. n. I love btraineing active!anted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to mte. We talked foaughed andtalked had a great time. We exchanged numbers. I hope getI see her again soon!") == 7
    @test is_bored("I went to the store and bought some millk. I also sawt a movie last night. Why are you still in bed?,") == 2
    @test is_bored("active!ut") == 0
    @test is_bored("Althounight.gh I livve in the sub The train is always crowded durexbe?,tension.ing rush hour. I havehole way to work. I wish I could just drive, but parking is too expensive. It is a real pain.utrbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.") == 3
    @test is_bored("walkeParsehaveYesterday was really busy for me. I had to atvtend three meetings and complete a report. However, I still managed to go for a run. I love being active!liksmiledeis,d") == 2
    @test is_bored("run.elike") == 0
    @test is_bored("lvistitedive") == 0
    @test is_bored("It is so hot outside today. Iwill hate this weather. Inumbers. wish I could just stay inside all day. Ugh!") == 0
    @test is_bored("l") == 0
    @test is_bored("UJHpsxQiapain.utrrbs,aa") == 0
    @test is_bored("tuWhoarned") == 0
    @test is_bored("seAlthtougAlthoughlean") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked foautghed and had a great time. We exchanged numbers. I hope getI see her again soon!") == 5
    @test is_bored("Arlthough I live in the suburbs, I enjoy visiparksgs to do and seeiallty like visiting the parks and gItardens.") == 0
    @test is_bored("n.UJHpsxQ") == 0
    @test is_bored("n.highnibachAlthoungardvpthIens.ight.g") == 0
    @test is_bored("aarou") == 0
    @test is_bored("lvissitedive") == 0
    @test is_bored("n.UJHpxsxQi") == 0
    @test is_bored("aboYesterday was really busy for me. I had toWhysstorte atvtItend three meetings and complete a report. However, I still managed to go  for a run. I love bespeciallyeing active!ut") == 2
    @test is_bored("UJHpsxQ") == 0
    @test is_bored("thhe") == 0
    @test is_bored("pain.o") == 0
    @test is_bored("saw") == 0
    @test is_bored("i.gardenns.then") == 0
    @test is_bored("moyearou") == 0
    @test is_bored("I saw her on the street. I smiled at her. She smiled back. I wanted tutrbs,o talk to her but I was too shy. She walked away. I was sad. She turned around and came back to me. We talked foaughed and had a great tdueime. We exchanged numbers. I hope getI see her again soon!") == 5
    @test is_bored("gItardens.se") == 0
    @test is_bored("Yesterday was really busy for me. I had to atvtItend three meetings and complete a report. However, I still manageng active!") == 1
    @test is_bored("oppportunity") == 0
    @test is_bored("aadurexbe?,tension.ingrou") == 0
    @test is_bored("bnibackght.") == 0
    @test is_bored("Whysstorte") == 0
    @test is_bored("Jn.UJHpsxQi") == 0
    @test is_bored("GlosYIiJIA") == 0
    @test is_bored("agardens.hnHowever,d") == 0
    @test is_bored("seHello world. I am feeling good touwholerbs,the  plants green? Who knowvlive It is hot outside.etohours.moorrow..") == 1
    @test is_bored("staroseAlthoAughunde") == 0
    @test is_bored("wantstand") == 0
    @test is_bored("galleries.today.yyou") == 0
    @test is_bored("Althounight.gh I live in the sub urbs, I enjoy visiting the city. There are so many things to do anda see. I especially like visiting the parks and gardens.") == 1
    @test is_bored("notucoppportunityould,") == 0
    @test is_bored("I went to the store and bought some milk. I also saw a movie last night. Why are you still in beAlthounight.gh I live in the sub urbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the parks and gardens.d?") == 3
    @test is_bored("stree") == 0
    @test is_bored("atrt") == 0
    @test is_bored("dguring") == 0
    @test is_bored("v") == 0
    @test is_bored("seAlthtoough") == 0
    @test is_bored("be?,") == 0
    @test is_bored("n.UJxsxQi") == 0
    @test is_bored("seHello world. I am feeling good touwholerbs,the  plants green? Who knowvlive It is hot outside.etdohours.moorrow..") == 1
    @test is_bored("uddady.rbs,") == 0
    @test is_bored(".ggardenns.") == 0
    @test is_bored("nopaerksstrrreet.") == 0
    @test is_bored(".outsmuseumside.") == 0
    @test is_bored("Although I live in the osuburbs, I enjoy visiparksgs to do and seetomorrow.. I especially like visiting the pthisarks and gardens.") == 1
    @test is_bored("Yesterday was really buwantedsy for me. I had to atvtend three meetings and complete a report. n. I love aaallbtraineing active!") == 2
    @test is_bored("seHello world. I am feeling good touwholerbs,the  plants green? Whos hot outside.etohours.moorrow..") == 1
    @test is_bored("active!utt") == 0
    @test is_bored("nightnve") == 0
    @test is_bored("WhThe train is always crowded during rush hour. I have to stand the whole wayt to work. Although I live in the suburbs,Yesterday was really busy for me. I had to atvtend three meetings Iand complete a report. n. I love being active! I enjoy visiparksgs to do and see. I especially like visiting the parks and gardens.I wish I could just drive, but parking is too expensive. It is a r.o") == 6
    @test is_bored("When I visited Paris, I spent a lot of time exploring the museums afolivvernd art galleriesWhos. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("crowwYesterdayed") == 0
    @test is_bored("Whotrainepain.og") == 0
    @test is_bored("crowwYessterdaydedIt is so hot outside today. Iwill hate this weather. Inumbers. wish I could just stay inside all day. Ugh!") == 0
    @test is_bored("UJH,psxQiapain.utrbs,aa") == 0
    @test is_bored("Howevern,") == 0
    @test is_bored("When I visited Paris, I spent a lot of time exploring the museums aboutafolivvernd art galleriesWhos. It was a great opportunity to learn about history and culture.") == 0
    @test is_bored("anlvisitediI went to the store angetId bought some millk. I also saw a movie last night. Why are you still in bed?,ve") == 1
    @test is_bored("Itthings is so hot outside tcane this weather. I wish I Ugh!") == 1
    @test is_bored("movienjoyeearou") == 0
    @test is_bored("manageng") == 0
    @test is_bored("greaboughtt") == 0
    @test is_bored("Yesterday was really busy for me. I had to atvtItendctive!") == 1
    @test is_bored("arto") == 0
    @test is_bored("erreal") == 0
    @test is_bored("movite") == 0
    @test is_bored("seetohwours.morrowI saw her on the street. I smiled at her. She smiled back. I wanted to talk to her but I was too shy. She walked away. I was sad. She turned arounad and came back to me. We talked foautghed and had a great time. We exchanged numbers. I hope getI see her again soon!..") == 4
    @test is_bored("urHowever,") == 0
    @test is_bored("svpthIaw") == 0
    @test is_bored("suburbsaaa,") == 0
    @test is_bored("moenjoy") == 0
    @test is_bored("Althounight.gh I livve in the sub The train is always crowded during rush hour. I havehole way to work. I wish I could just drive, but parking is tooAlthounight.gh I live in the sub urbs, I enjoy visiting the city. There are and see. I  especially like visiting the paerks and gardens. expensive. It is a real painI.utrbs, I enjoy visiting the city. There are so many things to do and see. I especially like visiting the paerks and gardens.") == 4
    @test is_bored("ssasstI went to the store and bought some milk. I also saw a movie last nightn be?,atore") == 1
    @test is_bored("Althounight.gh I lgoive in the sub urbs, I enjoy visiting the city. There are and see. I  especially like visiting the paerks and gardens.") == 1
    @test is_bored("Hello world. I am feeling egood today. Are the  plants green? Who knows! I bet It is hot out.side.") == 2
    @test is_bored("WhThe train is always crowded during rush hour. I have to stand the whole wayt to work. Although I live in the suburbs,Yesterday was really busy for me. I had to atvtend three meetinggalleries.today.yyous Iand complete a report. n. I love being active! I enjoy visiparksgs to do and see. I especially like visiting the parks and gardens.I wish I could just drive, but parking is too expensive. It is a r.o") == 6
    @test is_bored("toaboYesterday was really busy for me. Ijoyend thetings and complete a report. However, I still managed to go for a run. I love being active!utday.yyou") == 1
    @test is_bored("angetId") == 0
    @test is_bored("fouddady.rbs,r") == 0
    @test is_bored("Hello world. I am feeling good today. Are the  plants green? Who knows! I beto utside.") == 2
    @test is_bored("wwork.") == 0
    @test is_bored("iso.store") == 0
    @test is_bored("Ugh!g") == 0
    @test is_bored("Whysstortebe?,") == 0
    @test is_bored("visiparksgsgWo") == 0
    @test is_bored("rcrowded") == 0
    @test is_bored("Parsehaveliksm") == 0
    @test is_bored("like") == 0
    @test is_bored("was.gardens.") == 0
    @test is_bored("dbboughttrg") == 0
    @test is_bored("run.liher") == 0
    @test is_bored("selcity.i") == 0
    @test is_bored("outstorecansitodayde.") == 0
    @test is_bored("gdardenmovieengylaughedouardenjoy") == 0
    @test is_bored("havin.UJxsxQing") == 0
    @test is_bored("rcrowTheded") == 0
    @test is_bored("Howeovern,") == 0
    @test is_bored("The train is always crowded during rush hour. I have to stand the whole wayt to work. I wish I could just drive, but parking is too expensive. It is a reain.") == 2
end
