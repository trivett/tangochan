require 'csv'

Category.delete_all
Word.delete_all
Badge.delete_all

number_category = Category.create(name: "Numbers")
food_category = Category.create(name: "Foods")
greeting_category = Category.create(name: "Greetings")
place_name_category = Category.create(name: "Place Names")
business_terms_category = Category.create(name: "Business Terms")
slang_category = Category.create(name: "Slang")




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




