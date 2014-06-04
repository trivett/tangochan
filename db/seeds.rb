require 'csv'

Word.delete_all
Badge.delete_all
List.delete_all


# badges

ten_words = Badge.create(name: "Ten Words", description: "You have practiced 10 words. Congratulations!", image_url: "http://static.lalawag.com/wp-content/uploads/adventurer1.png")

fifty_words = Badge.create(name: "Fifty Words", description: "You have practiced 50 words. Congratulations!", image_url: "http://www.wikinoticia.com/images2//s3.alt1040.com/files/2011/07/superstar.jpg")
one_hundred_words = Badge.create(name: "One Hundred Words", description: "You have practiced 100 words. Congratulations!", image_url: "http://drspikecook.com/files/2014/04/100days-2apxw9x.jpg")
five_hundred_words = Badge.create(name: "Five Hundred Words", description: "You have practiced 500 words. Congratulations!", image_url: "https://www.buzzmath.com/Medias_Collection/Badges/achievement-class-500-gold-stars/badge_l.png")

one_hour = Badge.create(name: "One Hour", description: "You have practiced for 1 hour. Congratulations!", image_url: "http://static.lalawag.com/wp-content/uploads/adventurer1.png")

five_hours = Badge.create(name: "Five Hours", description: "You have practiced for 5 hours. Congratulations!", image_url: "http://www.wikinoticia.com/images2//s3.alt1040.com/files/2011/07/superstar.jpg")

twenty_five_hours = Badge.create(name: "Twenty Five Hours", description: "You have practiced for 25 hours. Congratulations!", image_url: "http://drspikecook.com/files/2014/04/100days-2apxw9x.jpg")

one_hundred_hours = Badge.create(name: "One Hundred Hours", description: "You have practiced for 100 hours. Congratulations!", image_url: "https://www.buzzmath.com/Medias_Collection/Badges/achievement-class-500-gold-stars/badge_l.png")


CSV.parse(File.read('lib/assets/data.csv'), headers: true) do |row|
  x = Word.new(kanji: row[0], kana: row[1], english: row[2])
  x.save
end

# User.create(name: "Vincent", native_language: "English", learning_language: "Japanese", city: "Brooklyn", country: "United States", words_practiced: nil, minutes_practiced: nil, email: "vincent@http://gmail.com", password: "12345678", password_confirmation: "12345678")
# User.create(name: "Joseph", native_language: "English", learning_language: "Japanese", city: "London", country: "United Kingdom", words_practiced: nil, minutes_practiced: nil, email: "joseph@http://gmail.com", password: "12345678", password_confirmation: "12345678")
# User.create(name: "Marie", native_language: "French", learning_language: "Japanese", city: "Paris", country: "France", words_practiced: nil, minutes_practiced: nil, email: "marie@http://gmail.com", password: "12345678", password_confirmation: "12345678")
hiragana = List.create(title: "Learn Hiragana", category: "hiragana")

hiragana.words << Word.create(kana: "あ", english: "a")
hiragana.words << Word.create(kana: "い", english: "i")
hiragana.words << Word.create(kana: "う", english: "u")
hiragana.words << Word.create(kana: "え", english: "e")
hiragana.words << Word.create(kana: "お", english: "o")

hiragana.words << Word.create(kana: "か", english: "ka")
hiragana.words << Word.create(kana: "き", english: "ki")
hiragana.words << Word.create(kana: "く", english: "ku")
hiragana.words << Word.create(kana: "け", english: "ke")
hiragana.words << Word.create(kana: "こ", english: "ko")

hiragana.words << Word.create(kana: "さ", english: "sa")
hiragana.words << Word.create(kana: "し", english: "shi")
hiragana.words << Word.create(kana: "す", english: "su")
hiragana.words << Word.create(kana: "せ", english: "se")
hiragana.words << Word.create(kana: "そ", english: "so")

hiragana.words << Word.create(kana: "た", english: "ta")
hiragana.words << Word.create(kana: "ち", english: "chi")
hiragana.words << Word.create(kana: "つ", english: "tsu")
hiragana.words << Word.create(kana: "て", english: "te")
hiragana.words << Word.create(kana: "と", english: "to")

hiragana.words << Word.create(kana: "な", english: "na")
hiragana.words << Word.create(kana: "に", english: "ni")
hiragana.words << Word.create(kana: "ぬ", english: "nu")
hiragana.words << Word.create(kana: "ね", english: "ne")
hiragana.words << Word.create(kana: "の", english: "no")

hiragana.words << Word.create(kana: "は", english: "ha")
hiragana.words << Word.create(kana: "ひ", english: "hi")
hiragana.words << Word.create(kana: "ふ", english: "hu")
hiragana.words << Word.create(kana: "へ", english: "he")
hiragana.words << Word.create(kana: "ほ", english: "ho")

hiragana.words << Word.create(kana: "ま", english: "ma")
hiragana.words << Word.create(kana:'み', english: "mi")
hiragana.words << Word.create(kana:'む', english: "mu")
hiragana.words << Word.create(kana:'め', english: "me")
hiragana.words << Word.create(kana:'も', english: "mo")
hiragana.words << Word.create(kana:'や', english: "ya")
hiragana.words << Word.create(kana:'ゆ', english: "yu")
hiragana.words << Word.create(kana:'よ', english: "yo")
hiragana.words << Word.create(kana:'ら', english: "ra")
hiragana.words << Word.create(kana:'り', english: "ri")
hiragana.words << Word.create(kana:'る', english: "ru")
hiragana.words << Word.create(kana:'れ', english: "re")
hiragana.words << Word.create(kana:'ろ', english: "ro")
hiragana.words << Word.create(kana:'わ', english: "wa")
hiragana.words << Word.create(kana:'を', english: "wo")
hiragana.words << Word.create(kana:'ん', english: "n'")

katakana = List.create(title: "Learn Katakana", category: "katakana")



katakana.words << Word.create(kana: "ア", english: "a")
katakana.words << Word.create(kana: "イ", english: "i")
katakana.words << Word.create(kana: "ウ", english: "u")
katakana.words << Word.create(kana: "エ", english: "e")
katakana.words << Word.create(kana: "お", english: "o")

katakana.words << Word.create(kana: "カ", english: "ka")
katakana.words << Word.create(kana: "キ", english: "ki")
katakana.words << Word.create(kana: "ク", english: "ku")
katakana.words << Word.create(kana: "ケ", english: "ke")
katakana.words << Word.create(kana: "コ", english: "ko")

katakana.words << Word.create(kana: "サ", english: "sa")
katakana.words << Word.create(kana: "シ", english: "shi")
katakana.words << Word.create(kana: "ス", english: "su")
katakana.words << Word.create(kana: "セ", english: "se")
katakana.words << Word.create(kana: "ソ", english: "so")

katakana.words << Word.create(kana: "タ", english: "ta")
katakana.words << Word.create(kana: "チ", english: "chi")
katakana.words << Word.create(kana: "ツ", english: "tsu")
katakana.words << Word.create(kana: "テ", english: "te")
katakana.words << Word.create(kana: "ト", english: "to")

katakana.words << Word.create(kana: "ナ", english: "na")
katakana.words << Word.create(kana: "ニ", english: "ni")
katakana.words << Word.create(kana: "ヌ", english: "nu")
katakana.words << Word.create(kana: "ネ", english: "ne")
katakana.words << Word.create(kana: "ノ", english: "no")

katakana.words << Word.create(kana: "ハ", english: "ha")
katakana.words << Word.create(kana: "ヒ", english: "hi")
katakana.words << Word.create(kana: "フ", english: "hu")
katakana.words << Word.create(kana: "ヘ", english: "he")
katakana.words << Word.create(kana: "ホ", english: "ho")

katakana.words << Word.create(kana: "マ", english: "ma")
katakana.words << Word.create(kana:'ミ', english: "mi")
katakana.words << Word.create(kana:'ム', english: "mu")
katakana.words << Word.create(kana:'メ', english: "me")
katakana.words << Word.create(kana:'モ', english: "mo")

katakana.words << Word.create(kana:'ヤ', english: "ya")
katakana.words << Word.create(kana:'ユ', english: "yu")
katakana.words << Word.create(kana:'ヨ', english: "yo")
katakana.words << Word.create(kana:'ラ', english: "ra")
katakana.words << Word.create(kana:'リ', english: "ri")
katakana.words << Word.create(kana:'ル', english: "ru")
katakana.words << Word.create(kana:'レ', english: "re")
katakana.words << Word.create(kana:'ロ', english: "ro")
katakana.words << Word.create(kana:'ワ', english: "wa")
katakana.words << Word.create(kana:'ヲ', english: "wo")
katakana.words << Word.create(kana:'ン', english: "n'")




animals = List.create(title: "Animals Challenge", category: "animals")

animals.words << Word.where(:english => "dog")
animals.words << Word.where(:english => "cat")
animals.words << Word.where(:english => "cow")
animals.words << Word.where(:english => "tiger")
animals.words << Word.where(:english => "fish")
animals.words << Word.where(:english => "bird")
animals.words << Word.where(:english => "ant")

occupations = List.create(title: "Occupations Challenge", category: "occupations")
occupations.words << Word.where(:english => "medical doctor")
occupations.words << Word.where(:english => "teacher (classroom)")
occupations.words << Word.where(:english => "pilot")
occupations.words << Word.where(:english => "fisherman")
occupations.words << Word.where(:english => "captain")

things = List.create(title: "Random things", category: "things")
things.words << Word.where(:kanji => "建物")
things.words << Word.where(:kanji => "木")
things.words << Word.where(:kanji => "階段")
things.words << Word.where(:kanji => "石")
things.words << Word.where(:kanji => "歩道")
things.words << Word.where(:kanji => "湖")
things.words << Word.where(:kanji => "川")
things.words << Word.where(:kanji => "動物")
things.words << Word.where(:kanji => "自動車")
