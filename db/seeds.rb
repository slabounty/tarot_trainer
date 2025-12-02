# This file should ensure the existence of records required
# to run the application in every environment (production,
# development, test). The code here should be idempotent so
# that it can be executed at any point in every
# environment.  The data can then be loaded with the
# bin/rails db:seed command (or created alongside the
# database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do
#   |genre_name| MovieGenre.find_or_create_by!(name:
#   genre_name) end

tarot_cards = [
  {
    image_file: "00-TheFool.png",
    name: "The Fool",
    meaning: "New beginning, freedom",
    arcana: "Major",
    element: "Air"
  },
  {
    image_file: "01-TheMagician.png",
    name: "The Magician",
    meaning: "Manifestation, creator, inspired action",
    arcana: "Major",
    element: "Air"
  },
  {
    image_file: "02-TheHighPriestess.png",
    name: "The High Priestess",
    meaning: "Intuition, self-knowledge",
    arcana: "Major",
    element: "Water"
  },
  {
    image_file: "03-TheEmpress.png",
    name: "The Empress",
    meaning: "Receiving love, creativity",
    arcana: "Major",
    element: "Earth"
  },
  {
    image_file: "04-TheEmperor.png",
    name: "The Emperor",
    meaning: "Inspired action, personal power",
    arcana: "Major",
    element: "Fire"
  },
  {
    image_file: "05-TheHierophant.png",
    name: "The Hierophant",
    meaning: "Teacher, tradition",
    arcana: "Major",
    element: "Earth"
  },
  {
    image_file: "06-TheLovers.png",
    name: "The Lovers",
    meaning: "Relationship, alignment",
    arcana: "Major",
    element: "Air"
  },
  {
    image_file: "07-TheChariot.png",
    name: "The Chariot",
    meaning: "Inspired action, mementum",
    arcana: "Major",
    element: "Water"
  },
  {
    image_file: "08-Strength.png",
    name: "Strength",
    meaning: "Overcoming obstacles, endurance",
    arcana: "Major",
    element: "Fire"
  },
  {
    image_file: "09-TheHermit.png",
    name: "The Hermit",
    meaning: "Wisdom, solitude",
    arcana: "Major",
    element: "Earth"
  },
  {
    image_file: "10-WheelOfFortune.png",
    name: "WheelOfFortune",
    meaning: "Cycles, change",
    arcana: "Major",
    element: "Fire"
  },
  {
    image_file: "11-Justice.png",
    name: "Justice",
    meaning: "Truth, balance",
    arcana: "Major",
    element: "Air"
  },
  {
    image_file: "12-TheHangedMan.png",
    name: "The Hanged Man",
    meaning: "Waiting, shifted perspectives",
    arcana: "Major",
    element: "Water"
  },
  {
    image_file: "13-Death.png",
    name: "Death",
    meaning: "Transformation, release",
    arcana: "Major",
    element: "Water"
  },
  {
    image_file: "14-Temperance.png",
    name: "Temperance",
    meaning: "Moderation, harmony, divine timing",
    arcana: "Major",
    element: "Fire"
  },
  {
    image_file: "15-TheDevil.png",
    name: "The Devil",
    meaning: "Sabotage, addiction",
    arcana: "Major",
    element: "Earth"
  },
  {
    image_file: "16-TheTower.png",
    name: "The Tower",
    meaning: "Upheaval, sudden change",
    arcana: "Major",
    element: "Fire"
  },
  {
    image_file: "17-TheStar.png",
    name: "The Star",
    meaning: "Hope, healing",
    arcana: "Major",
    element: "Air"
  },
  {
    image_file: "18-TheMoon.png",
    name: "The Moon",
    meaning: "Dreams, illusions",
    arcana: "Major",
    element: "Water"
  },
  {
    image_file: "19-TheSun.png",
    name: "The Sun",
    meaning: "Clarity, optimism",
    arcana: "Major",
    element: "Fire"
  },
  {
    image_file: "20-Judgement.png",
    name: "Judgement",
    meaning: "Awakening, acceptance",
    arcana: "Major",
    element: "Fire"
  },
  {
    image_file: "21-TheWorld.png",
    name: "The World",
    meaning: "Successful completion, reaping rewards",
    arcana: "Major",
    element: "Earth"
  },
  {
    image_file: "Cups01.png",
    name: "Ace of Cups",
    meaning: "New love, relationships",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups02.png",
    name: "II of Cups",
    meaning: "Partnership, union",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups03.png",
    name: "III of Cups",
    meaning: "Celebration, togetherness",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups04.png",
    name: "IV of Cups",
    meaning: "Apathy, stagnation",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups05.png",
    name: "V of Cups",
    meaning: "Grief, sadness",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups06.png",
    name: "VI of Cups",
    meaning: "Harmony, memories",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups07.png",
    name: "VII of Cups",
    meaning: "Possibilities, daydreaming",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups08.png",
    name: "VIII of Cups",
    meaning: "Walking away, moving on",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups09.png",
    name: "IX of Cups",
    meaning: "Satisfaction, abundance",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups10.png",
    name: "X of Cups",
    meaning: "Happiness, fulfillment",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups11.png",
    name: "Page of Cups",
    meaning: "Love messages, playfulness, emotional intelligence",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups12.png",
    name: "Knight of Cups",
    meaning: "Emotional offerings, speed",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups13.png",
    name: "Queen of Cups",
    meaning: "Nuturing, feminine engergy",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Cups14.png",
    name: "King of Cups",
    meaning: "Emotional stability, empathy",
    arcana: "Minor",
    element: "Water"
  },
  {
    image_file: "Pentacles01.png",
    name: "Ace of Pentacles",
    meaning: "New beginnings, abundance",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles02.png",
    name: "II of Pentacles",
    meaning: "Balance, stability",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles03.png",
    name: "III of Pentacles",
    meaning: "Success, new doors opening",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles04.png",
    name: "IV of Pentacles",
    meaning: "Building stability, conserving resources",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles05.png",
    name: "V of Pentacles",
    meaning: "Focusing on lack, feeling physicall or financially depleted",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles06.png",
    name: "VI of Pentacles",
    meaning: "Generorsity, sharing resources",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles07.png",
    name: "VII of Pentacles",
    meaning: "Growth, patience",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles08.png",
    name: "VIII of Pentacles",
    meaning: "Hard work, productivity",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles09.png",
    name: "IX of Pentacles",
    meaning: "Success, enjoyment",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles10.png",
    name: "X of Pentacles",
    meaning: "Wealth, family inheiritance",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles11.png",
    name: "Page of Pentacles",
    meaning: "Manifestation, solid beginnings",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles12.png",
    name: "Knight of Pentacles",
    meaning: "Long term abundance, steady progress",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles13.png",
    name: "Queen of Pentacles",
    meaning: "Generosity, dependability",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Pentacles14.png",
    name: "King of Pentacles",
    meaning: "Wealth, generosity",
    arcana: "Minor",
    element: "Earth"
  },
  {
    image_file: "Swords01.png",
    name: "Ace of Swords",
    meaning: "Clarity, new ideas",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords02.png",
    name: "II of Swords",
    meaning: "Indecision, self-protection",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords03.png",
    name: "III of Swords",
    meaning: "Sadness, pain",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords04.png",
    name: "IV of Swords",
    meaning: "Rest, introspection",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords05.png",
    name: "V of Swords",
    meaning: "Conflict, arguments",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords06.png",
    name: "VI of Swords",
    meaning: "Moving forward, embarking on a healing journey",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords07.png",
    name: "VII of Swords",
    meaning: "Deception, strategy",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords08.png",
    name: "VIII of Swords",
    meaning: "Feeling trapped, restriction",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords09.png",
    name: "IX of Swords",
    meaning: "Anxiety, worry",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords10.png",
    name: "X of Swords",
    meaning: "Endings, new beginnings",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords11.png",
    name: "Page of Swords",
    meaning: "Enthusiasm, eagerness to learn",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords12.png",
    name: "Knight of Swords",
    meaning: "Truth seeking, assertive",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords13.png",
    name: "Queen of Swords",
    meaning: "Decisivness, honesty",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Swords14.png",
    name: "King of Swords",
    meaning: "Intellectual ambition, leadership",
    arcana: "Minor",
    element: "Air"
  },
  {
    image_file: "Wands01.png",
    name: "Ace of Wands",
    meaning: "Inspiration, creativity",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands02.png",
    name: "II of Wands",
    meaning: "Choice, future plans",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands03.png",
    name: "III of Wands",
    meaning: "Expansion, growth",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands04.png",
    name: "IV of Wands",
    meaning: "Celebration, special events",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands05.png",
    name: "V of Wands",
    meaning: "Competition, rivalry",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands06.png",
    name: "VI of Wands",
    meaning: "Victory, recognition",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands07.png",
    name: "VII of Wands",
    meaning: "Definsiveness, assertiveness",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands08.png",
    name: "VIII of Wands",
    meaning: "Movement, quick action",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands09.png",
    name: "IX of Wands",
    meaning: "Persistence, self-reliance",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands10.png",
    name: "X of Wands",
    meaning: "Overwhelm, burdens",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands11.png",
    name: "Page of Wands",
    meaning: "Impulsiveness, sense of adventure",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands12.png",
    name: "Knight of Wands",
    meaning: "Fast action, passion",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands13.png",
    name: "Queen of Wands",
    meaning: "Creativity, ambition",
    arcana: "Minor",
    element: "Fire"
  },
  {
    image_file: "Wands14.png",
    name: "King of Wands",
    meaning: "Power, authority",
    arcana: "Minor",
    element: "Fire"
  }
]

tarot_cards.each do |tarot_card|
  TarotCard.find_or_create_by!(
    image_file: tarot_card[:image_file],
    name: tarot_card[:name],
    meaning: tarot_card[:meaning],
    arcana: tarot_card[:arcana],
    element: tarot_card[:element]
  )
end
