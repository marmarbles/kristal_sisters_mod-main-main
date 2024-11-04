return{
    choice = function (cutscene, event)
    --- Plays new music start of cutscene
    Game.world.music:play("Acid Tunnel of Love")

    -- text triggered when cutscene starts 
    cutscene:text("* This is a test to see if the cutscene works!")
    cutscene:text("* I don't know why it hasn't already!!")

    -- Grabbing Ralsei's character to speak 
    local ralsei = cutscene:getCharacter("ralsei")
    local susie = cutscene:getCharacter("susie")
        if ralsei then 

            cutscene:setSpeaker(ralsei)
            cutscene:text("* Hmmm...[wait:5] what a peculiar place we stumbled upon...", "surprise_neutral")
            cutscene:text("* It seems no matter where we go, we always end up back here...", "pleased")
        
            cutscene:setSpeaker(susie)
            cutscene:text("* Yea...", "neutral_side")
            cutscene:text("* I'm getting pretty sick of seeing all of the same tiles everywhere.", "suspicious")
            
            cutscene:setSpeaker(ralsei)
            cutscene:text("*[wait:5] ...Kris? You've been awfully quiet about all of this...", "small_smile_side")
            cutscene:text("* Is something on your mind?[wait:5] We would be glad to help!", "smile")

            cutscene:setSpeaker(susie)
            cutscene:text("*[wait:5] Yea, Ralsei's right! Even though you're like,[wait:5] quiet...", "nervous")
            cutscene:text("* Now you're like...[wait:5] Ultra mega quiet??", "nervous_side")

            --- player choice time
            cutscene:setSpeaker(nil)
         local response = cutscene:choicer({"I feel fine", "I feel sick."})
             if response == 1 then
                cutscene:setSpeaker(susie)
                cutscene:text("*[wait:5] Dude, are you sure..?", "nervous_side")
                cutscene:text("* Even though you're like,[wait:5] blue now", "nervous")
                cutscene:text("* You're looking pretty green...", "shy")

                cutscene:setSpeaker(ralsei)
                cutscene:text("* Oh Kris, there's no need to push on for our sake...", "pensive")
                cutscene:text("* How about we take a moment to rest. Slow and steady always wins!", "smile")

                cutscene:setSpeaker(susie)
                cutscene:text("* I thought it went, 'slow and steady wins the race'??","nervous")
                cutscene:text("* But Ralsei's right. Let's take a moment to chill.", "smile")
                --- other response 
            elseif response == 2 then
                cutscene:setSpeaker(ralsei)
                cutscene:text("* Oh dear... We have been walking around for a while now haven't we?", "frown_b")
                cutscene:text("* How about this,[wait:5] let's all take a moment and sit down for a bit.", "pleased")
                cutscene:text("* I don't want all of us to collapse at once!!", "surprise_smile")

                cutscene:setSpeaker(susie)
                cutscene:text("* Aw hell yea! Free break!!", "sincere_smile")
                cutscene:text("* We can't be heros all the damn time! Breaks are nice to have!", "smile")
                cutscene:text("* Kris, stay right there!", "closed_grin")
                cutscene:text("* I'm gonna find you the most mossist moss you've ever seen.", "closed_grin")

                cutscene:setSpeaker(ralsei)
                cutscene:text("*[wait:5] Would... would that make them feel better?", "surprise_neutral")
                cutscene:text("* All I can see is that giving them a stomachache...", "surprise_neutral_side")

                cutscene:setSpeaker(susie)
                cutscene:text("* Naw, you're just uncultured in moss cuisine!", "sincere_smile")
                cutscene:text("* Luckily, Kris has an eye for taste! I can already see 'em smiling!", "sincere_smile")

                cutscene:setSpeaker(ralsei)
                cutscene:text("* ...They do look a little bit more eager!", "smile")
            end    
        end 



    -- stops playing music in cutscene and resumes ow music. 
    Game.world.music:stop("Acid Tunnel of Love")
    Game.world.music:play("My Castle Town")
end
}