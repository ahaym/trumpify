//trumpify

main: "<br>" line campaign
;

campaign: speech thx |
speech campaign | speech campaign | speech campaign
;

intro: "<br> <br>" name ispeech "My Father, Donald Trump." wow "Trump: Our country is in serious trouble. <br> <br>"
;

name: family ": "
;

ispeech: ilines | ilines ispeech
;

ilines: "Today, I introduce a " adjective " man. " | "My father is " superhero ". "
;

wow: "<br> <br>(APPLAUSE)<br> <br>"  | "<br> <br>Audience Member : We want Trump!<br> <br>" thx | "<br> <br>(APPLAUSE)<br> <br>" | "<br> <br> Audience Member: Yes we can! Yes we can! <br> <br>"
;

speech: p | p | wow | p | p | line | line | line
;

p: countryrant(country) wow | rich wow | isisrant wow
;
//countryrant module
countryrant(c): "Trump: " countryintro(c) countryline(c)
;

countryintro(c): "When was the last time we beat " c "? "
| "We don't have victories anymore. We used to have victories, but we don't have them. When was the last time anybody saw us beating, let's say, "c" in a trade deal? "
;


countryline(c): c "'s leaders are whipping our leaders. "
| "How stupid are our leaders? "
| "Hey, I'm not saying they're stupid. I like " c ". I sell apartments for -- I just sold an apartment for $15 million to somebody from " c ". "
| "Am I supposed to dislike them? I own a big chunk of "building", that I got from " c " in a war. Very valuable. "
| "I love " c ". The biggest bank in the world is from " c ". You know where their United States headquarters is located? In " building". "
| "They are sending over their " criminallist+ criminallist+ "everybody. "
| "I would build a great wall, and nobody builds walls better than me, believe me, and I'll build them very inexpensively, I will build a great, great wall on our southern border. And I will have " c " pay for that wall. "
;
//end countryrant

//rich module
rich: "<br> Trump: I'm really rich. " richstory rich | "<br> Trump: I'm really rich. " richstory wow
;
richstory: "I made it the old-fashioned way." | "And I have assets -- big accounting firm, one of the most highly respected -- 9 billion 240 million dollars. " wow
| "I'm not doing that to brag, because you know what? I don't have to brag. "
| "I've employed tens of thousands of people over my lifetime. "
;
//end rich

//isis module
isisrant: "<br> Trump: " isis "<br> <br>";
isis: isisline wow isis | isisline | isisline
;

isisline:
"Nobody would be tougher on ISIS than Donald Trump. Nobody. " |
"I will find -- within our military, I will find the General Patton or I will find General MacArthur, I will find the right guy." |
"Our president doesn't have a clue. He's a bad negotiator. He's the one that did Bergdahl. We get Bergdahl, they get five killer " criminallist " that everybody wanted over there."
;

//misc
line: "<br> Trump: " linelist "<br> <br>";
linelist:
"We have losers. We have losers. We have people that don't have it. We have people that are morally corrupt. We have people that are selling this country down the drain. "
| "Mark my words. "
| "So nice, thank you very much. That's really nice. Thank you. It's great to be at " building ". It's great to be in a wonderful city, New York. And it's an honor to have everybody here. This is beyond anybody's expectations. There's been no crowd like this."
| "Our country needs a " adjective " leader."
;
thx: "<br> <br>Trump: Thank you.<br> <br>"
;
//word bank================================================

adjective: "great" | "successful" | "smart" | "truly great"
;

superhero: "Batman" | "Superman" | "Wonder Woman" | "Spider-Man" | "Deadpool"
;


family: "Melania" | "Barron" | "Kai" | "Donnie" | "Don" | "Vanessa" | "Tiffany" | "Evanka"
;

country: "China" | "Mexico" | "Japan" | "Saudi Arabia" | "Sealand"
;

building: "the White House" | "the Bank of America Building" | "the Bank of America Building at 1290 Avenue of the Americas" | "The Trump Tower, here in New York"
;

criminallist: "rapists, " | "money launderers, " | "drug dealers, " | "racists, " | "racists, " | "property magnates, " | "murderers, " | "people with bad hair, " | "robbers, " | "brown people, " | "terrorists, " | "weeaboos, " | "burglars, "
;
