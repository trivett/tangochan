
Category.delete_all
Word.delete_all

number_category = Category.create(name: "Numbers")
food_category = Category.create(name: "Foods")
greeting_category = Category.create(name: "Greetings")
place_name_category = Category.create(name: "Place Names")
business_terms_category = Category.create(name: "Business Terms")
slang_category = Category.create(name: "Slang")



number_category.words.create(kanji: "一", kana: "いち", english: "one")
number_category.words.create(kanji: "二", kana: "に", english: "two")
number_category.words.create(kanji: "三", kana: "さん", english: "three")
number_category.words.create(kanji: "四", kana: "よん", english: "four")
number_category.words.create(kanji: "五", kana: "ご", english: "five")
number_category.words.create(kanji: "六", kana: "ろく", english: "six")
number_category.words.create(kanji: "七", kana: "しち", english: "seven")
number_category.words.create(kanji: "八", kana: "はち", english: "eight")
number_category.words.create(kanji: "九", kana: "きゅう", english: "nine")
number_category.words.create(kanji: "十", kana: "じゅう", english: "ten")
number_category.words.create(kanji: "十一", kana: "じゅういち", english: "eleven")
number_category.words.create(kanji: "十二", kana: "じゅうに", english: "twelve")
number_category.words.create(kanji: "十三", kana: "じゅうさん", english: "thirteen")
number_category.words.create(kanji: "十四", kana: "じゅうよん", english: "fourteen")
number_category.words.create(kanji: "十五", kana: "じゅうご", english: "fifteen")
number_category.words.create(kanji: "十六", kana: "じゅうろく", english: "sixteen")
number_category.words.create(kanji: "十七", kana: "じゅうなな", english: "seventeen")
number_category.words.create(kanji: "十八", kana: "じゅうはち", english: "eighteen")
number_category.words.create(kanji: "十九", kana: "じゅうきゅう", english: "ninteen")
number_category.words.create(kanji: "二十", kana: "にじゅうに", english: "twenty")

