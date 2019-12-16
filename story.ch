/*story.ch
 *Choose your own adventure story: Dating simulator thing?
 *3 different friends, 3 different routes, 9 different endings.
 *Which ending will you get?
*/

//Lots of variables for names and gender of characters
string_t name;
string_t friend1,friend2,friend3;
string_t friend1Gender,friend2Gender,friend3Gender;
string_t friend1Pronouns1,friend1Pronouns2,friend1Pronouns3;
string_t friend2Pronouns1,friend2Pronouns2,friend2Pronouns3;
string_t friend3Pronouns1,friend3Pronouns2,friend3Pronouns3;
string_t friend1PronounCap,friend1PronounCap2,friend1PronounCap3;
string_t friend2PronounCap,friend2PronounCap2,friend2PronounCap3;
string_t friend3PronounCap,friend3PronounCap2,friend3PronounCap3;

//other variables
string_t answer; //A, B, C; the answer you input for questions
int route; //which story route you will be taking (1,2,3)
int routeEnding; //the ending (1-9) for the route you chose (1,2,3) depending on the choices you make
int minutesLate = randint(5,10); //route 2
int seat = randint(1,40); //route 3
string_t friend3outfit; //route 3
int x = 0; //2 seconds
int y = 0; //5 seconds
int z = 0; //1 second

//start! introduction
void intro(){
    printf("Welcome! In this game, you will choose from 3 different friends, or possibly...\n");
    sleep(x);
    printf("Romantic Interests...\n");
    sleep(x);
    printf("-----------------------------------------------------------------------------------\n");
    printf("Depending on your choices, you will get a different ending! There are \n 3 different routes and 9 different endings, 3 endings for each route!\n");
    sleep(x);
    printf("-----------------------------------------------------------------------------------\n");
}
//input names and genders
void names(){
    printf("First, what is your name?\n");
    scanf("%s",&name);
    printf("Hello, %s!\n",name);
    sleep(x);
    printf("-----------------------------------------------------------------------------------\n");

    //input names of friends
    printf("Please enter the names of your 3 friends.\n");
    scanf("%s,%s,%s",&friend1,&friend2,&friend3);

    //input genders
    printf("-----------------------------------------------------------------------------------\n");
    printf("Please enter the genders of your 3 friends.\n");
    printf("Enter (M) for 'male' or (F) for 'female'.\n");
    sleep(z);

    //friend1 gender
    printf("%s: ",friend1);
    scanf("%s",&friend1Gender);
    while (friend1Gender !="M" && friend1Gender !="F" && friend1Gender !="m" && friend1Gender != "f"){
        printf("Please reenter the gender of %s.\n",friend1);
        printf("%s: ",friend1);
        scanf("%s",&friend1Gender);
    }
    if (friend1Gender == "F" || friend1Gender == "f"){
        friend1Pronouns1 = "she";
        friend1Pronouns2 = "her";
        friend1Pronouns3 = "her";
        friend1PronounCap = "She";
        friend1PronounCap2 = "Her";
        friend1PronounCap3 = "Her";
    } else {
        friend1Pronouns1 = "he";
        friend1Pronouns2 = "his";
        friend1Pronouns3 = "him";
        friend1PronounCap = "He";
        friend1PronounCap2 = "His";
        friend1PronounCap3 = "Him";
    }



    //friend2 gender
    printf("%s: ",friend2);
    scanf("%s",&friend2Gender);
    while (friend2Gender !="M" && friend2Gender !="F" && friend2Gender != "m" && friend2Gender != "f"){
        printf("Please reenter the gender of %s.\n",friend2);
        printf("%s: ",friend2);
        scanf("%s",&friend2Gender);
    }
    if (friend2Gender == "F" || friend2Gender == "f"){
        friend2Pronouns1 = "she";
        friend2Pronouns2 = "her";
        friend2Pronouns3 = "her";
        friend2PronounCap = "She";
        friend2PronounCap2 = "Her";
        friend2PronounCap3 = "Her";
    } else {
        friend2Pronouns1 = "he";
        friend2Pronouns2 = "his";
        friend2Pronouns3 = "him";
        friend2PronounCap = "He";
        friend2PronounCap2 = "His";
        friend3PronounCap3 = "Him";
    }



    //friend3 gender
    printf("%s: ",friend3);
    scanf("%s",&friend3Gender);
    while (friend3Gender !="M" && friend3Gender !="F" && friend3Gender !="m" && friend3Gender !="f"){
        printf("please reenter the gender of %s.\n",friend3);
        printf("%s: ",friend3);
        scanf("%s", &friend3Gender);
    }
    if (friend3Gender == "F" || friend3Gender == "f"){
        friend3Pronouns1 = "she";
        friend3Pronouns2 = "her";
        friend3Pronouns3 = "her";
        friend3PronounCap = "She";
        friend3PronounCap2 = "Her";
        friend3PronounCap3 = "Her";
        friend3outfit = "dress";
    } else {
        friend3Pronouns1 = "he";
        friend3Pronouns2 = "his";
        friend3Pronouns3 = "him";
        friend3PronounCap = "He";
        friend3PronounCap2 = "His";
        friend3PronounCap3 = "Him";
        friend3outfit = "suit";
    }
}
//roadmap/cheat sheet
void roadmap(){
    printf("                         background/intro\n"); 
    printf("                        /        |         \\  \n");
    printf("                       /         |          \\  \n");
    printf("                      /          |           \\  \n");
    printf("                  friend 1       |        friend 3\n");
    printf("               /   |   \\         |       /   |   \\ \n");
    printf("              A    B    C        |      A    B    C \n");
    printf("             /     |     \\       |     /     |     \\ \n");
    printf("           good   ok     bad     |    ok    good   bad \n");
    printf("                              friend 2\n");
    printf("                            /    |    \\ \n");
    printf("                           A     B     C\n");
    printf("                          /      |      \\ \n");
    printf("                         ok     bad    good (warning, I made this ending really long oops)\n");
    
}
//background info
void bg(){
    printf("-----------------------------------------------------------------------------------\n");
    sleep(z);
    printf("3 of your friends have asked you out!\n");
    printf("-----------------------------------------------------------------------------------\n");
    sleep(x);
    printf("%s asks if you would like to go with %s to the park and have a picnic.\n",friend1,friend1Pronouns3);
    printf("%s has an outgoing, loud, and short-tempered personality, but\n",friend1PronounCap);
    printf("is kind on the inside.\n");
    printf("-----------------------------------------------------------------------------------\n");
    sleep(y);
    printf("%s has asked if you want to go to the new cafe that just opened together.\n",friend2);
    printf("%s is a calm, quiet individual who rarely smiles, but you know %s's a nice person.\n",friend2PronounCap,friend2Pronouns1);
    printf("-----------------------------------------------------------------------------------\n");
    sleep(y);
    printf("%s has invited you to watch %s piano recital tonight. %s is a mysterious,\n",friend3,friend3Pronouns2,friend3PronounCap);
    printf("charming person who seems to be very fond of you.\n");
    printf("-----------------------------------------------------------------------------------\n");
    sleep(y);
    printf("**If you would like to see a \"cheat sheet\" showing all endings of each route, enter \"A\". If not, enter \"B\".\n");
    printf("Your response: ");
    scanf("%s",&answer);
    while (answer!="A" && answer!="B"&& answer!="a" && answer!="b"){
        printf("Please enter one of the choices above.\n");
        printf("Your response: ");
        scanf("%s",&answer);
    }
    if (answer == "A" || answer == "a"){
        roadmap();
    }
}

//Question 1
void question1(){
    printf("-----------------------------------------------------------------------------------\n");
    sleep(y);
    printf("- Who do you choose?\n");
    sleep(z);
    printf("(A) %s\n",friend1);
    sleep(z);
    printf("(B) %s\n",friend2);
    sleep(z);
    printf("(C) %s\n",friend3);
    sleep(z);
    printf("***When you respond, type in one of the letters above.***\n");
    sleep(z);
    printf("Your response: ");
    scanf("%s",&answer);
    while (answer!="A" && answer!="B" && answer!="C" && answer!="a" && answer!="b" && answer!="c"){
        printf("Please enter one of the choices above.\n");
        printf("Your response: ");
        scanf("%s",&answer);
    }
    printf("-----------------------------------------------------------------------------------\n");

    //pick route
    if (answer=="A" || answer=="a"){
        route = 1;
    }
    if (answer=="B" || answer=="b"){
        route = 2;
    }
    if (answer=="C" || answer=="c"){
        route = 3;
    }
    sleep(y);
}

//*****************Route 1 (Option 1)
void route1(){
    printf("You decide to go the picnic with %s. The weather is nice and sunny.\n",friend1);
    sleep(x);
    printf("There's some ducks swimming in the pond. You and %s decide to set up the picnic\n",friend1);
    sleep(x);
    printf("under a nice, big tree near the pond. You unpack the food you brought and start eating.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Hey, %s.\"\n",friend1,name);
    printf("-\n");
    sleep(y);
    printf("You turn to face %s. %s looks a little flustered.\n",friend1,friend1PronounCap);
    printf("-\n");
    sleep(y);
    printf("%s: \"I guess hanging out with you isn't as bad as I thought it would be...\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You're surprised. That was an odd thing for %s to say.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Don't get the wrong idea! It's not like I like you or anything!...\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"...But, if I actually did, what would you say?...\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You're not a dense block of concrete. You know exactly what's going on here.\n");
    printf("-\n");
    sleep(y);
    printf("You think of something to say, but as soon as you open your mouth--\n");
    printf("-\n");
    sleep(y);
    printf("\"QUACK QUACK!!\"\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Hey!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You see a group of ducks surrounding %s, and they seem to be attacking %s for food.\n",friend1,friend1Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Back off! This food's mine!\"\n",friend1);
    printf("-\n");
    sleep(y);
    //route 1 choice 1
    printf("%s is fighting the ducks over %s sandwich.\n",friend1,friend1Pronouns2);
    printf("-----\n");
    sleep(y);
    printf("- What should you do?\n");
    sleep(3);
    printf("(A) Fight off the ducks\n");
    sleep(z);
    printf("(B) Laugh at %s\n",friend1);
    sleep(z);
    printf("(C) Take a picture\n");
    sleep(x);
    printf("Your response: ");
    scanf("%s",&answer);
    while (answer!="A" && answer!="B" && answer!="C" && answer!="a" && answer!="b" && answer!="c"){
    printf("Please enter one of the choices above.\n");
    printf("Your response: ");
    scanf("%s",&answer);
    }
    printf("-----\n");
    if (answer == "A" || answer == "a"){
        routeEnding = 1;
    }
    if (answer == "B" || answer == "b"){
        routeEnding = 2;
    }
    if (answer == "C" || answer == "c"){
        routeEnding = 3;
    }
}
//route 1 ending 1 (GOOD end)
void routeEnd1(){
    sleep(3);
    printf("You run over to %s and join the fight against the ducks.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Take that! And that!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s shouts, kicking at the ducks, but also being careful not to hit them too hard.\n",friend1PronounCap);
    sleep(y);
    printf("You realize that despite %s nasty temper and personality, %s is actually pretty considerate.\n",friend1Pronouns2,friend1);
    printf("==\n");
    sleep(y);
    printf("The ducks finally retreat, and you and %s are left with no food.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"This sucks.\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"I went through all this trouble to finally ask you out, and it ends up like this.\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You say that it's fine, and that you enjoyed %s company anyways.\n",friend1Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s: \"I don't need your pity.\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"I'm going home.\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("As %s starts to walk away, you run after %s, grab %s hand, and tell %s to wait.\n",friend1,friend1Pronouns3,friend1Pronouns2,friend1Pronouns3);
    sleep(y);
    printf("%s turns around to look at you. %s looks surprised.\n",friend1,friend1PronounCap);
    printf("-\n");
    sleep(y);
    printf("You tell %s that you really did enjoy being with %s, and that it would be nice if you\n",friend1Pronouns3,friend1Pronouns3);
    sleep(x);
    printf("two could go out again.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Really?\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You nod your head. %s's eyes light up. %s quickly turns around, flustered.\n",friend1,friend1PronounCap);
    printf("-\n");
    sleep(y);
    printf("%s: \"Well, it's not like I enjoyed it or anything...!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: But... I guess we could go out again...\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You happily walk home with %s. You feel like you two have grown closer.\n",friend1);
    printf("-----\n");
    sleep(y);
    printf("Congratulations! You have finished the GOOD ending!\n");
    sleep(x);
    printf("Play again to try and get the other 8 endings!\n");
}
//route 1 ending 2 (OK end)
void routeEnd2(){
    sleep(3);
    printf("Watching %s hopelessly attempt to fight off the attacking ducks, you can't help\n",friend1);
    sleep(x);
    printf("but laugh at the situation unfolding before you.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Hey! I could use some help around here!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s yells at you, embarrassed at the predicament %s was in.\n",friend1,friend1Pronouns1);
    printf("-\n");
    sleep(y);
    printf("You say that you'd rather just watch, and continue to eat your sandwich.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"You little--\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"I swear, when I'm done with these pests, you're next!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You just ignore %s. You decide to stop eating your sandwich while there's still half left.\n",friend1Pronouns3);
    printf("==\n");
    sleep(y);
    printf("The sound of flapping wings ceases and you notice that the ducks have finally retreated.\n");
    sleep(y);
    printf("However, %s's sandwich was now gone. %s stood still, shaking with rage-- or was it humiliation?\n",friend1,friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"You're so stupid...!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s stomps torwards you, blushing like crazy and mad with embarrassment.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Now what? Am I supposed to STARVE?\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You tell %s to calm down, and point to your half-eaten sandwich. You'd saved\n",friend1Pronouns3);
    sleep(x);
    printf("%s some of your sandwich.\n",friend1Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Huh!??\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Why should I eat YOUR sandwich!?\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s is even more upset at the thought of sharing a sandwich with you.\n",friend1);
    sleep(y);
    printf("You say that if %s isn't going to eat it, then you'll just finish it.\n",friend1Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Wh-wait! I never said that I wasn't going to eat it!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s snatches your sandwich and stares at it for a bit. %s hesitates before finally\n",friend1,friend1PronounCap);
    sleep(x);
    printf("taking a small bite. Small bites turn into big ones as %s quickly gobbles down the\n",friend1Pronouns1);
    sleep(x);
    printf("sandwich, clearly hungry from fighting the ducks.\n");
    printf("==\n");
    sleep(y);
    printf("%s: \"You know, I'll never forgive you for that.\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You ask %s whether %s's referring to the ducks or the sandwich.\n",friend1,friend1Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Both, idiot.\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s turns to face the other direction, but you can see that %s is blushing. As you two\n",friend1,friend1Pronouns1);
    sleep(x);
    printf("walk home, you can't help but think about how obvious %s true feelings are, despite\n",friend1Pronouns2);
    sleep(x);
    printf("%s attempts at hiding them. You sigh and keep walking.\n",friend1Pronouns2);
    printf("-----\n");
    sleep(y);
    printf("You have completed the OK ending!\n");
    sleep(x);
    printf("Play again to get the GOOD ending, or the other 8 endings!\n");
    }
//route 1 ending 3 (BAD end)
void routeEnd3(){
    sleep(3);
    printf("Amused by the ridiculous scene in front of you, you pull out your phone and open up the\n");
    sleep(x);
    printf("camera. You think that this could be great blackmail material for future situations, but you\n");
    sleep(x);
    printf("weren't actually going to do anything. You just wanted to tease %s for a bit.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"H-hey! What do you think you're doing!?\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s pushes the ducks aside and angrily rushes towards you. %s reaches for your phone,\n",friend1,friend1PronounCap);
    sleep(x);
    printf("but you quickly avoid %s and back away.\n",friend1Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"You little--\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s reaches toward you again. This time %s actually manages to touch your phone. You panic\n",friend1,friend1Pronouns1);
    sleep(x);
    printf("and lose grip of your phone, and it slips out of your hand.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"...!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s gasps.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You hear a splash and turn around. Your phone had fallen into the pond.\n");
    printf("-\n");
    sleep(y);
    printf("The two of you cease your fighting and stare at the pond for a moment.\n");
    sleep(y);
    printf("You silently walk towards the spot where your phone had fallen and look down.\n");
    sleep(y);
    printf("You spotted your phone, and slowly picked it up. It was wet, and extremely gross.\n");
    sleep(y);
    printf("You tried to turn it on, but the phone was lifeless.\n");
    sleep(y);
    printf("%s stood silently, gaping at what just happened.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"I...\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s: \"...It was your fault anyway! You had it coming!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("You argue back, saying that %s overreacted, and that you hadn't even taken a photo.\n",friend1Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Wha...!\"\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s steps back, flustered. Unsure of what to do, %s turns away.\n",friend1,friend1Pronouns1);
    sleep(x);
    printf("You start to say something, but %s turns around and starts to run.\n",friend1);
    printf("-\n");
    sleep(y);
    printf("%s had run away, angry at you, but most of all, %sself, for doing something so stupid.\n",friend1PronounCap,friend1Pronouns3);
    sleep(y);
    printf("Especially in front of you.\n");
    printf("-\n");
    sleep(y);
    printf("As you stand there, alone, taking in what just happened, a couple of kids walk past you.\n");
    sleep(y);
    printf("They turn to look at you and shout,\n");
    sleep(y);
    printf("\"Ha! Look, someone got dumped!\"\n");
    printf("-----\n");
    sleep(y);
    printf("Congratulations! You have finished... the BAD ENDING.\n");
    sleep(y);
    printf("Better luck next time! Try again to get the other 8 endings, including the good ending!\n");
    }

//*****************Route 2 (Option2)

void route2(){
    printf("You decide to go to the cafe with %s. You had both agreed on meeting up\n",friend2);
    sleep(x);
    printf("at 3 PM, but you're %d minutes late! You hope that %s hadn't been waiting very long.\n",minutesLate,friend2Pronouns1);
    sleep(y);
    printf("You arrive at the cafe. You could smell the fragrant scent of coffee and cake inside.\n");
    sleep(y);
    printf("Walking in, you look around to find %s. %s was sitting alone at a table, reading quietly.\n",friend2,friend2PronounCap);
    printf("-\n");
    sleep(y);
    printf("%s: \"...%s.\"\n",friend2,name);
    printf("-\n");
    sleep(y);
    printf("%s looks up from %s book.\n",friend2PronounCap,friend2Pronouns2);
    printf("-\n");
    sleep(y);
    printf("You greet %s and take a seat across %s. You ask what %s'd like to order.\n",friend2,friend2Pronouns3,friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"It doesn't matter to me. Just get anything, as long as it isn't disgusting.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("Anything? That's a tough choice to make.\n");
    printf("-\n");
    sleep(y);
    printf("You go to the menu and take a look. There's a wide selection of beverages and\n");
    sleep(x);
    printf("pastries. So many choices! But what would %s like?\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You come up with 3 choices of combos to choose from.\n");
    printf("-----\n");
    sleep(y);
    printf("- What should you get for %s?\n",friend2);
    sleep(z);
    printf("(A) cappuccino and chocolate cake\n");
    sleep(z);
    printf("(B) hot chocolate and cinnamon roll\n");
    sleep(z);
    printf("(C) white tea and strawberry cake\n");
    sleep(z);
    printf("Your response: ");
    scanf("%s",&answer);
    while (answer!="A" && answer!="B" && answer!="C" && answer!="a" && answer!="b" && answer!="c"){
    printf("Please enter one of the choices above.\n");
    printf("Your response: ");
    scanf("%s",&answer);
    }
    printf("-----\n");
    if (answer == "A" || answer == "a"){
        routeEnding = 4;
    }
    if (answer == "B" || answer == "b"){
        routeEnding = 5;
    }
    if (answer == "C" || answer == "c"){
        routeEnding = 6;
    }
}
//route 2 ending 1 (OK end)
void routeEnd4(){
    sleep(3);
    printf("You decide on getting a cappuccino and a slice of chocolate cake for both of you.\n");
    sleep(y);
    printf("You hope %s likes it.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("You head back to your table and wait patiently. %s is still reading %s book, looking\n",friend2,friend2Pronouns2);
    sleep(x);
    printf("quite engaged in the story.\n");
    sleep(y);
    printf("You felt a little awkward, not knowing if you should interrupt and try to strike a conversation.\n");
    sleep(y);
    printf("But what was there to talk about? You didn't know what %s liked, despite being close friends.\n",friend2);
    sleep(y);
    printf("%s had always been quiet and reserved--no one had ever even seen %s smile.\n",friend2PronounCap,friend2Pronouns3);
    sleep(y);
    printf("Why did %s even ask you to go to the cafe with %s in the first place?\n",friend2Pronouns1,friend2Pronouns3);
    printf("-\n");
    sleep(y);
    printf("You try to talk about the weather. You say that it's nice and sunny outside.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"...Yes.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s murmurs, not looking up from %s book.\n",friend2,friend2Pronouns2);
    printf("-\n");
    sleep(y);
    printf("Mission failed.\n");
    printf("-\n");
    sleep(y);
    printf("%s seems to be really interested in that book.\n",friend2PronounCap);
    sleep(y);
    printf("You ask what book it is.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Rodenbach. 'The Bells of Bruges'.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You say that it sounds interesting.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Yes.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("This conversation wasn't going anywhere. Luckily, a waiter comes by with your food.\n");
    sleep(y);
    printf("%s finally puts down %s book and looks at the food.\n",friend2,friend2Pronouns2);
    sleep(y);
    printf("You say that you didn't know what to get, so if %s doesn't want it, you can order something different.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"No... it's fine..\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s doesn't seem too excited.\n",friend2PronounCap);
    printf("-\n");
    sleep(y);
    printf("%s picks up %s fork, and picks up a small bite of cake. %s hesitates, and then takes a bite.\n",friend2PronounCap,friend2Pronouns2,friend2PronounCap);
    sleep(y);
    printf("Nervously, you watch. You couldn't tell what %s was thinking.\n",friend2Pronouns1);
    sleep(y);
    printf("Well, that was typical, since %s always kept a straight face.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"...Not bad...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You're relieved. At least it was edible.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Although, chocolate isn't really... it isn't really my favorite.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You apologize, and say that you'll order something else if %s wanted.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"No... That'd be a waste.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s takes small bites of the cake, drinking some coffee in between bites. Feeling a bit awkward,\n",friend2);
    sleep(x);
    printf("you decide to start on your own cake as well, nervously watching %s.\n",friend2);
    sleep(y);
    printf("You really couldn't tell what %s was thinking. %s probably wasn't enjoying this.\n",friend2Pronouns1,friend2PronounCap);
    printf("==\n");
    sleep(y);
    printf("%s: \"Thank you for coming today.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You and %s stood outside the cafe, getting ready to part ways.\n",friend2);
    sleep(y);
    printf("As you leave the cafe, you felt as though this experience was kind of uneventful. Nothing really happened.\n");
    sleep(y);
    printf("Oh well. Maybe you can try to invite %s out to eat again someday...\n",friend2);
    printf("-----\n");
    sleep(y);
    printf("Congratulations! You got the... OK ending!\n");
    sleep(y);
    printf("Try again to get the good ending, or play the other routes to get all 9 endings!\n");
}
//route 2 ending 2 (BAD end)
void routeEnd5(){
    sleep(3);
    printf("You decided on getting hot chocolate and cinnamon rolls.\n");
    sleep(y);
    printf("It wasn't exactly the time of year for hot chocolate, but everyone loves hot chocolate, right?\n");
    printf("-\n");
    sleep(y);
    printf("You go back to your table and wait patiently. %s was still reading %s book, paying no\n",friend2,friend2Pronouns2);
    sleep(x);
    printf("attention to you, or %s surroundings. You felt kind of awkward, not knowing what to say.\n",friend2Pronouns2);
    sleep(y);
    printf("It might be better to just not say anything.\n");
    printf("-\n");
    sleep(y);
    printf("After a long 10 minutes of silence, a waiter comes to your table with your order.\n");
    printf("-\n");
    sleep(y);
    printf("%s finally puts down %s book and looks up at the food.\n",friend2,friend2Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s: \"Hot chocolate...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You ask if %s liked hot chocolate.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"It's nice.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s turned to look at the cinnamon rolls. %s eyes lit up a bit.\n",friend2PronounCap,friend2PronounCap2);
    sleep(y);
    printf("You ask if %s is fine with cinnamon rolls.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Yes. Cinnamon rolls are also nice.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You sigh with relief. It seems like you made the right choice.\n");
    sleep(y);
    printf("You start to eat your cinnamon roll.\n");
    sleep(y);
    printf("%s reaches towards %s cup of hot chocolate.\n",friend2,friend2Pronouns2);
    sleep(y);
    printf("You warn %s that it's still hot, but it was too late.\n",friend2Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Ah.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("SPLASH!\n");
    printf("-\n");
    sleep(y);
    printf("You watch in horror as the hot chocolate topples over and spills onto the table.\n");
    sleep(y);
    printf("Some of it got onto %s.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("Frantically, you ask if %s is alright and reach for napkins to clean up the mess.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"It's fine...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s's face said otherwise. You knew that it wasn't fine at all.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You clean up the spilled hot chocolate.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"I think I should go home...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You wanted to say, \"No, please don't!\" but you could see the displeasure in %s's face.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You tell %s that you understand, and pack up the cinnamon rolls to-go.\n",friend2);
    sleep(y);
    printf("You give %s %s cinnamon roll and apologize.\n",friend2Pronouns3,friend2Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s nods and walks out.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("Congratulations. Your one rare opportunity to hang out with %s was cut short because of hot chocolate.\n",friend2);
    sleep(y);
    printf("Next time, you'll remember not to choose hot chocolate--or at least be careful with it.\n");
    printf("-----\n");
    sleep(y);
    printf("Congratulations! You have finished... the BAD ENDING.\n");
    sleep(y);
    printf("Better luck next time! Try again to get the other 8 endings, including the good ending!\n");
}
//route 2 ending 3 (GOOD end)
void routeEnd6(){
    sleep(3);
    printf("You decide to get white tea and strawberry cake. That sounded like a nice, simple combination that\n");
    sleep(x);
    printf("would match %s.\n",friend2);
    sleep(y);
    printf("The light and sweet flavors wouldn't be too much for %s.\n",friend2Pronouns3);
    sleep(y);
    printf("You go back to your table and wait patiently. %s was reading %s book, very engaged in the story.\n",friend2,friend2Pronouns2);
    sleep(y);
    printf("You ask what %s what book %s's reading.\n",friend2Pronouns3,friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Rodenbach.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("Sounds interesting--and intelligent. Very fitting.\n");
    sleep(y);
    printf("You take a closer look at the book's cover and notice something.\n");
    sleep(y);
    printf("The book is upside down.\n");
    sleep(y);
    printf("You were wondering if you should point it out or just leave it alone.\n");
    sleep(y);
    printf("Maybe %s liked reading upside down? Maybe %s was just that smart.\n",friend2,friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s notices you staring at %s and blushes a little, looking away.\n",friend2,friend2Pronouns3);
    printf("-\n");
    sleep(y);
    printf("Oops. You didn't realize you were staring directly at %s and look away as well.\n",friend2Pronouns3);
    sleep(y);
    printf("The awkward silence ends when a waiter comes by with your food.\n");
    printf("-\n");
    sleep(y);
    printf("%s takes a look at the strawberry cake and %s eyes light up. %s looks genuinely excited, something you didn't see often.\n",friend2,friend2Pronouns2,friend2PronounCap);
    printf("-\n");
    sleep(y);
    printf("%s: \"How did you know?\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You ask what %s's talking about.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"...that strawberry cake is my favorite...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("In your mind, you went \"YES!\" You chose the right option. Good job, you!\n");
    sleep(y);
    printf("You tell %s that you just had a hunch since it seemed to match %s personality.\n",friend2Pronouns3,friend2Pronouns2);
    sleep(y);
    printf("You pat yourself on the back for being a good friend.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Personality...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s glances at the book %s was reading and then looks at you.\n",friend2,friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Thank you.\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s looks at %s book again. This time, %s seems to be studying something.\n",friend2,friend2Pronouns2,friend2Pronouns1);
    sleep(y);
    printf("The book was on %s lap, so you couldn't tell what %s was reading.\n",friend2Pronouns2,friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Um...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"There... there must be something wrong with my eyes..\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"I can't... I can't take them off you..\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("What?\n");
    sleep(y);
    printf("Did you hear that correctly?\n");
    sleep(y);
    printf("A really cheesy pickup line?\n");
    sleep(y);
    printf("You just gaped in silence. That was something very out-of-character for %s to say.\n",friend2);
    sleep(y);
    printf("%s looks down in what seems to be embarrassment.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"Uh...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"I-I was wondering...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s looked like %s was going to explode.\n",friend2,friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"If you had an extra heart...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"Because... mine was just stolen...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("Again?! Another cheesy pickup line! What the heck was going on?\n");
    printf("-\n");
    sleep(y);
    printf("You ask %s if %s's feeling alright.\n",friend2,friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s didn't look up at you. Instead, %s grabbed %s book, and handed it over to you.\n",friend2,friend2Pronouns1,friend2Pronouns2);
    printf("-\n");
    sleep(y);
    printf("You take a look at the book and its contents. There was another book, hidden inside the first book...\n");
    printf("-\n");
    sleep(y);
    printf("What???\n");
    printf("-\n");
    sleep(y);
    printf("\"Good Pickup Lines That Are Guaranteed to Spice Up the Conversation\"!??\n");
    printf("-\n");
    sleep(y);
    printf("This is...\n");
    printf("-\n");
    sleep(y);
    printf("You ask what this is about.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Um... This book said that these phrases... are good for making friends...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s's innocence kind of shocked you. How were you supposed to explain the true purpose of pickup lines??\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You tell %s that you didn't need to say these in order to make friends.\n",friend2Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Really?...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You tell %s that the best way to make friends was to just be yourself.\n",friend2Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I see...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"But when I am myself... no one talks to me..\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You tell %s that you talk to %s. You were %s friend! Right?\n",friend2Pronouns3,friend2Pronouns3,friend2Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s: \"Really? You're... My friend?\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("Wait. This whole time, %s didn't even consider you %s friend? You felt a bit sad, not being considered\n a friend after all this time.\n",friend2,friend2Pronouns2);
    sleep(y);
    printf("You said that yes, you were %s friend.\n",friend2Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s: \"...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s smiles for the first time. That was a rare occurrence.\n",friend2);
    sleep(y);
    printf("But you were glad %s was happy.\n",friend2Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Ah. We haven't eaten any of our food...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You realize that as well. You say that you two should probably finish it before you leave.\n");
    sleep(y);
    printf("%s nods and starts eating.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("As you ate, you realize that you really did make a good choice. The slight sweetness of the white tea\n went great with the strawberry cake.\n");
    sleep(y);
    printf("You could see that %s was enjoying it as well.\n",friend2);
    printf("==\n");
    sleep(y);
    printf("Outside the cafe, you and %s were getting ready to part ways.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"Can we come here together again someday?\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("You say that of course you can.\n");
    printf("-\n");
    sleep(y);
    printf("%s smiles again.\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"Thank you...\"\n",friend2);
    printf("-\n");
    sleep(y);
    printf("%s: \"For being my friend...\"\n",friend2);
    printf("-----\n");
    sleep(y);
    printf("Congratulations! You have finished the GOOD ending!\n");
    sleep(x);
    printf("Play again to try and get the other 8 endings!\n");
}

//*****************Route 3 (Option 3)

void route3(){
    printf("You accept %s's invitation and head to %s piano recital. You stop in\n",friend3,friend3Pronouns2);
    sleep(x);
    printf("front of the large theater and look around. It's 6 PM, and you're\n");
    sleep(x);
    printf("here 30 minutes early to meet %s and grab a good seat.\n",friend3);
    sleep(x);
    printf("Where was %s?\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"%s!\"\n",friend3,name);
    printf("-\n");
    sleep(y);
    printf("You turn around to see %s. %s was wearing a fancy %s. You couldn't\n",friend3,friend3PronounCap,friend3outfit);
    sleep(x);
    printf("help but stare.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Thanks for coming.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s smiles.\n",friend3);
    sleep(y);
    printf("You say that you couldn't miss such an event. You knew that %s was\n",friend3);
    sleep(x);
    printf("very talented at playing the piano, and you love watching %s play.\n",friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I'm honored, hearing you say such a thing. I hope I can live up to\n",friend3);
    sleep(x);
    printf("your expectations.\"\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Oh!\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s digs into %s bag for something. %s pulls out a ticket.\n",friend3,friend3Pronouns2,friend3PronounCap);
    printf("-\n");
    sleep(y);
    printf("%s: \"Here's a special ticket! I got to reserve a good seat for you.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You thank %s. Now you didn't have to worry about finding a seat.\n",friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"The show will be starting soon. I have to go get ready. I'll see you later!\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You wave goodbye and %s waves back. You watch %s disappear into the building.\n",friend3,friend3Pronouns3);
    printf("==\n");
    sleep(y);
    printf("You go into the theater and begin the search for your seat.\n");
    sleep(x);
    printf("Seat %d... in the front somewhere.\n",seat);
    printf("-\n");
    sleep(y);
    printf("After a lot of wandering around the aisles, you finally found your seat in the front and waited.\n");
    sleep(y);
    printf("6:20. The seats around you started to fill up. You were surprised by the size of the audience.\n");
    sleep(y);
    printf("You knew that %s was talented, but not that %s was this famous.\n",friend3,friend3Pronouns1);
    printf("==\n");
    sleep(y);
    printf("6:30\n");
    sleep(x);
    printf("Finally, the show begins.\n");
    sleep(y);
    printf("The crowd claps and cheers as the curtain slowly opens to reveal %s sitting at a piano.\n",friend3);
    sleep(y);
    printf("After the cheering and clapping ceases, %s beings to play.\n",friend3);
    sleep(y);
    printf("You watched in awe as %s played a variety of songs, from Beethoven's 'Moonlight'\n",friend3);
    sleep(x);
    printf("Sonata to Chopin's Nocturne.\n");
    printf("==\n");
    sleep(y);
    printf("After what seemed like forever, %s's performance ends, and the crowd cheers.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Before you all leave, I have one more song for you.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("The crowd is silent.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"For this song, I would like to invite a member of the audience to join me.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("Uh oh.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"%s, would you join me for a quatre mains?\"\n",friend3,name);
    printf("-\n");
    sleep(y);
    printf("You didn't know what to do. You weren't very skilled with a piano. You had\n");
    sleep(x);
    printf("played a duet with %s a couple times, but that was just for fun. This was\n",friend3);
    sleep(x);
    printf("a serious performance.\n");
    sleep(y);
    printf("But %s was looking at you with a gentle smile and puppy eyes.\n",friend3);
    printf("-----\n");
    sleep(y);
    printf("- What should you do?\n");
    sleep(3);
    printf("(A) politely decline\n");
    sleep(z);
    printf("(B) join %s\n",friend3);
    sleep(z);
    printf("(C) nothing\n");
    sleep(x);
    printf("Your response: ");
    scanf("%s",&answer);
    while (answer!="A" && answer!="B" && answer!="C" && answer!="a" && answer!="b" && answer!="c"){
    printf("Please enter one of the choices above.\n");
    printf("Your response: ");
    scanf("%s",&answer);
    }
    printf("-----\n");
    if (answer == "A" || answer == "a"){
        routeEnding = 7;
    }
    if (answer == "B" || answer == "b"){
        routeEnding = 8;
    }
    if (answer == "C" || answer == "c"){
        routeEnding = 9;
    }
}
//route 3 ending 1 (OK end)
void routeEnd7(){
    sleep(3);
    printf("You politely decline.\n");
    sleep(y);
    printf("%s, seeing the look on your face, understands and walks back on stage.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I apologize, but it seems that I will have to play this song on my own.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s sits back down at the piano. %s places %s fingers on the keys, and after a\n",friend3,friend3PronounCap,friend3Pronouns2);
    sleep(x);
    printf("short pause, begins playing.\n");
    printf("-\n");
    sleep(y);
    printf("You recognized the song instantly. It was the song you and %s would always play together.\n",friend3);
    sleep(y);
    printf("Except this time, %s was playing it on %s own. It sounded amazing as always, but incomplete.\n",friend3,friend3Pronouns2);
    sleep(y);
    printf("You started to regret your decision. Without you, the song almost felt lonely,\n");
    printf("-\n");
    sleep(y);
    printf("The performance ends, and %s bows. The curtain closes, and people begin to leave the building.\n",friend3);
    sleep(y);
    printf("After everyone else clears out, you finally leave.\n");
    printf("==\n");
    sleep(y);
    printf("Outside, you stood in front of the theater alone. You felt guilty for not playing with %s.\n",friend3);
    sleep(y);
    printf("It's not like you had to or anything, but you still feel like you let %s down. After thinking\n",friend3Pronouns3);
    sleep(y);
    printf("for a bit, you go back into the building and search for %s.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You walk down the halls for a bit, and then realize that you had no idea where you were going.\n");
    sleep(y);
    printf("You think that %s has already left, and give up. you turn around to head back when you\n",friend3);
    sleep(x);
    printf("hear a familiar voice.\n");
    printf("-\n");
    sleep(y);
    printf("\"%s?\"\n",name);
    printf("-\n");
    sleep(y);
    printf("You turn around and see %s. %s looks tired, but relieved to see you.\n",friend3,friend3PronounCap);
    printf("-\n");
    sleep(y);
    printf("%s: \"What's wrong? Did you forget something\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You nod your head no.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"What is it then?\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You say that you felt bad for not joining %s on stage earlier and that you wanted to make up for it.\n",friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"It's fine. I'm sorry for putting you on the spot like that. You don't have to if you don't want to.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You say that you do want to.\n");
    printf("-\n");
    sleep(y);
    printf("%s looks a bit surprised.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Really?\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("Yes, you really did.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"I'd be delighted to!\"\n",friend3);
    printf("==\n");
    sleep(y);
    printf("Alone in the theater, you two sat at the piano. Playing in front of an empty theater felt kind of awkward,\n");
    sleep(x);
    printf("but it was better than playing in front of hundreds of people. You felt a little nervous.\n");
    sleep(y);
    printf("%s plays a small melody to start. You decide to follow along, copying the tune.\n",friend3);
    sleep(y);
    printf("There's a short pause, and then %s quickly slams %s fingers down onto the keys and starts playing passionately.\n",friend3,friend3Pronouns2);
    sleep(y);
    printf("For a moment, you didn't know what to do, and then you realize that you should join in.\n");
    sleep(y);
    printf("You didn't really know what you were doing, but you were having fun. It felt like forever before the song finallly ended.\n");
    printf("==\n");
    sleep(y);
    printf("%s: \"Thank you.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You and %s stood outside.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"For playing with me. I really am grateful to you.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You say that it really wasn't that big of a deal; you were just doing what a good friend's supposed to do.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Actually, the truth is...\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s pauses for a moment.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I'm moving back to Germany. I've been accepted into a prestigious college.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You congratulate %s and say that you're happy for %s.\n",friend3,friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Thank you. But before I left, I wanted to play one more duet with you. So I'm glad I got to.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You were glad you made that decision to come back and play. %s looked sad.\n",friend3);
    sleep(y);
    printf("You promised to keep in touch with %s and told %s not to worry.\n",friend3Pronouns3,friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Thank you, again. I'm really glad to have you as a friend...\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Farewell, %s.\"\n",friend3,name);
    printf("-----\n");
    sleep(y);
    printf("You have completed the OK ending!\n");
    sleep(x);
    printf("Play again to get the GOOD ending, or the other 8 endings!\n");
}
//route 3 ending 2 (GOOD end)
void routeEnd8(){
    sleep(y);
    printf("Overcoming your anxiety, you stand up and walk onto the stage. Your legs felt weak as you saw the\n");
    sleep(x);
    printf("huge crowd of spectators. You look to %s for help.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Don't worry, it'll be fine. Just play as you always do.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You argue that if you don't do well, it'll affect %s performance.\n",friend3Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s: \"It won't. And I'm confident in your skills. I always love playing with you.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("That comforted you a bit.\n");
    printf("-\n");
    sleep(y);
    printf("Sitting beside %s, you place your hands above the keys and tense up. %s notices.\n",friend3,friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Relax. Don't worry about playing well. Just do what feels good.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("Taking %s advice, you relax your body.\n",friend3Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s: \"Alright, here we go.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s's fingers dive right into the keys, and for a second, you freeze up. You hesitate a bit, but jump in as well.\n",friend3);
    sleep(y);
    printf("It was amazing. Your anxieties disappeared as you played. Your mind drifted away from the crowd and onto %s.\n",friend3);
    sleep(y);
    printf("Playing with %s was always a pleasant experience, but this one felt different.\n",friend3Pronouns3);
    printf("==\n");
    sleep(y);
    printf("Before you knew it, the song was over, and your fingers were shaking. It took a moment for your mind to catch up.\n");
    sleep(y);
    printf("The crowd clapped and cheered, louder than it had before.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"You did great.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s smiles at you.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You say that %s was amazing, and thank %s for inviting you.\n",friend3Pronouns1,friend3Pronouns3);
    printf("==\n");
    sleep(y);
    printf("Outside, you and %s were talking about the performance.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You say that %s looked really cool playing the piano.\n",friend3Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"I'm flattered, but to be completely honest, I was incredibly nervous..\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"But seeing your face gave me courage.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("How cheesy. But %s was always the type of person to be poetic and cheesy, so you took it\n",friend3);
    sleep(x);
    printf("as a compliment.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Actually, the reason I invited you here tonight was...\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("Could it be?!! ");
    sleep(2);
    printf("A romantic confession!?!??\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"..Because I'm moving to Germany to pursue a career in music at a famous college,\n",friend3);
    sleep(x);
    printf("and I won't be back for a while.\n");
    printf("-\n");
    sleep(y);
    printf("%s had a sad smile on %s face.\n",friend3,friend3Pronouns2);
    printf("-\n");
    sleep(y);
    printf("%s: \"I wanted to see you before I left. That's why I'm glad I got to play a duet with you today.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You had a bunch of mixed feelings. You were happy for %s that %s was able to follow %s dreams,\n",friend3,friend3Pronouns1,friend3Pronouns2);
    sleep(x);
    printf("but you couldn't help but feel a bit sad. But the nice thing to do would be to put aside your own feelings\n");
    sleep(x);
    printf("and support %s.\n",friend3Pronouns3);
    sleep(y);
    printf("You congratulate %s and say that you're also glad you were able to see %s tonight.\n",friend3,friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Thank you... Really.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I think I can move on with confidence now. Just promise you'll stay in touch with me?\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You say that you definitely will.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Again, thank you so much...\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I'm glad I met you, %s.\"\n",friend3,name);
    printf("-----\n");
    sleep(y);
    printf("Congratulations! You have finished the GOOD ending!\n");
    sleep(x);
    printf("Play again to try and get the other 8 endings!\n");
}
//route 3 ending 3 (BAD end)
void routeEnd9(){
    sleep(3);
    printf("You were frozen. You didn't know what to do. You were torn between not wanting to let %s\n",friend3);
    sleep(x);
    printf("down and not wanting to embarrass both you and %s. You couldn't come up with a decision.\n",friend3);
    sleep(y);
    printf("Without saying anything, %s gave you a look that showed that %s understood and went back to the stage.\n",friend3,friend3Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"I apologize, but it seems that it won't be happening.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Thank you all for coming tonight.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("The curtain closes and %s was gone. You felt guilty, but it's not like you had to accept %s invitation.\n",friend3,friend3Pronouns2);
    sleep(y);
    printf("There's no way you could've played in front of hundreds of people.\n");
    sleep(y);
    printf("You quickly left with the crowd.\n");
    printf("==\n");
    sleep(y);
    printf("Outside, you were preparing to walk home.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"%s?\"\n",friend3,name);
    printf("-\n");
    sleep(y);
    printf("You turn around to see %s behind you.\n",friend3);
    sleep(y);
    printf("Oh no... you didn't know how to face %s after that incident.\n",friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Thank goodness you haven't left yet.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("Great. Now you were stuck with %s. This was awkward.\n",friend3Pronouns3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I'm sorry for putting you on the spot like that earlier. I should've considered your feelings.\n",friend3);
    sleep(y);
    printf("That was very selfish of me.\"\n");
    printf("-\n");
    sleep(y);
    printf("That just made you feel worse.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"Don't worry. I understand how you feel now. I shouldn't have assumed that we were so close.\n",friend3);
    sleep(y);
    printf("That was my own mistake\"\n");
    printf("-\n");
    sleep(y);
    printf("Every word %s said was like a stab to the heart. There was a big misunderstanding here!\n",friend3Pronouns1);
    printf("-\n");
    sleep(y);
    printf("%s: \"Actually...\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s's smile faded.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"I'm leaving to Germany.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("You couldn't say anything. You didn't know what to say.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"I was hoping I'd get to play a duet with you before I left, but its alright.\n",friend3);
    sleep(x);
    printf("Just getting to see you is enough for me.\"\n");
    printf("-\n");
    sleep(y);
    printf("Don't say that.\n");
    printf("-\n");
    sleep(y);
    printf("%s: \"I guess this is goodbye then.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s smiled again.\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s: \"Please don't forget about me.\"\n",friend3);
    printf("-\n");
    sleep(y);
    printf("%s disappeared into the night. You stood there, alone. You were mad at yourself for not\n",friend3);
    sleep(x);
    printf("saying anything. What kind of friend were you? You should've at least told %s that %s was wrong.\n",friend3Pronouns3,friend3Pronouns1);
    sleep(x);
    printf("You did care about %s, and you liked playing the piano with %s. And now %s was gone.\n",friend3Pronouns3,friend3Pronouns3,friend3Pronouns1);
    printf("-\n");
    sleep(y);
    printf("You sighed and looked at your phone. You wanted to clear things up over the phone, but you didn't know how.\n");
    sleep(y);
    printf("Maybe one day...\n");
    printf("-----\n");
    sleep(y);
    printf("Congratulations! You have finished... the BAD ENDING.\n");
    sleep(y);
    printf("Better luck next time! Try again to get the other 8 endings, including the good ending!\n");
}
//main program
int main(){
    intro();
    names();
    bg();
    question1();
    if (route == 1){
        route1();
        if (routeEnding == 1){
            routeEnd1();
        }
        if (routeEnding == 2){
            routeEnd2();
        }
        if (routeEnding == 3){
            routeEnd3();
        }
    }
    if (route == 2){
        route2();
        if (routeEnding == 4){
            routeEnd4();
        }
        if (routeEnding == 5){
            routeEnd5();
        }
        if (routeEnding == 6){
            routeEnd6();
        }
    }
    if (route == 3){
        route3();
        if (routeEnding == 7){
            routeEnd7();
        }
        if (routeEnding == 8){
            routeEnd8();
        }
        if(routeEnding == 9){
            routeEnd9();
        }
    }
}
