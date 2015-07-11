//trumpify

main: intro campaign
;

campaign: speech thx |
speech campaign | speech campaign | speech campaign |
speech campaign
;

intro: "\n \n" name ispeech "My Father, Donald Trump." wow
;

name: family ": "
;

ispeech: ilines | ilines ispeech | ilines ispeech
;

ilines: "Today, I introduce a " adjective " man. " | "My father is " superhero ". "
;

wow: "\n \n(APPLAUSE)\n \n"  | "\n \nAudience Member : We want Trump!\n \n" thx speech | "\n \n(APPLAUSE)\n \n" speech
;

speech: p | p | wow
;

p: countryrant "\n \n"
;
//countryrant module
countryrant: "Trump: " countryliner(country)
;

countryliner(c): countryline(c) | countryline(c) countryliner(c)
;

countryline(c): c "'s leaders are whipping our leaders. "
| "How stupid are our leaders? How stupid are these politicians to allow this to happen? How stupid are they? "
| "Hey, I'm not saying they're stupid. I like " c ". I sell apartments for -- I just sold an apartment for $15 million to somebody from " c ". "
| "Am I supposed to dislike them? I own a big chunk of "building", that I got from " c " in a war. Very valuable. "
| "I love " c ". The biggest bank in the world is from " c ". You know where their United States headquarters is located? In " building". I love " c ". People say, \"Oh, you don't like " c "?\" "
;
//end countryrant
thx: "\n \nTrump: Thank you.\n \n"
;
//word bank================================================

adjective: "great" | "successful" | "smart" | "truly great"
;

superhero: "Batman" | "Superman" | "Wonder Woman" | "Spider-Man" | "Deadpool"
;


family: "Melania" | "Barron" | "Kai" | "Donnie" | "Don" | "Vanessa" | "Tiffany" | "Evanka"
;

country: "China" | "Mexico" | "Japan"
;

building: "the White House" | "the Bank of America Building" | "the Bank of America Building at 1290 Avenue of the Americas"
;
