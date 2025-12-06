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

question_tarot_cards = [
  {
    name: "The Fool",
    question: "What new beginning or sense of freedom is ready to enter your life today?"
  },
  {
    name: "The Magician",
    question: "Where can you channel your creativity and take inspired action right now?"
  },
  {
    name: "The High Priestess",
    question: "What intuition or inner knowing is asking for your attention?"
  },
  {
    name: "The Empress",
    question: "How can you open yourself to receive more love or creative energy today?"
  },
  {
    name: "The Emperor",
    question: "Where are you being called to step into your personal power?"
  },
  {
    name: "The Hierophant",
    question: "What traditions or teachings are guiding you at this moment?"
  },
  {
    name: "The Lovers",
    question: "How can you bring more alignment or harmony into your relationships?"
  },
  {
    name: "The Chariot",
    question: "What momentum is building in your life, and how can you support it?"
  },
  {
    name: "Strength",
    question: "Which obstacles are you ready to overcome through endurance and focus?"
  },
  {
    name: "The Hermit",
    question: "Where could solitude help you access deeper wisdom?"
  },
  {
    name: "WheelOfFortune",
    question: "What changes or cycles are unfolding that you can embrace rather than resist?"
  },
  {
    name: "Justice",
    question: "Where do you need to restore truth or balance in your life?"
  },
  {
    name: "The Hanged Man",
    question: "What new perspective could shift your understanding of a situation?"
  },
  {
    name: "Death",
    question: "What is ready to be released so transformation can take place?"
  },
  {
    name: "Temperance",
    question: "Where is moderation or patience being requested of you?"
  },
  {
    name: "The Devil",
    question: "What habits or attachments might be holding you back?"
  },
  {
    name: "The Tower",
    question: "What sudden change is reshaping things for the better?"
  },
  {
    name: "The Star",
    question: "Where are hope and healing trying to take root in your life?"
  },
  {
    name: "The Moon",
    question: "What illusions or dreams need clarity today?"
  },
  {
    name: "The Sun",
    question: "What clarity or renewed optimism is coming into focus?"
  },
  {
    name: "Judgement",
    question: "Where are you awakening to a deeper truth or acceptance?"
  },
  {
    name: "The World",
    question: "What success or completion can you acknowledge and celebrate?"
  },
  {
    name: "Ace of Cups",
    question: "How can you invite new love or emotional openness today?"
  },
  {
    name: "II of Cups",
    question: "Where is partnership or collaboration bringing strength?"
  },
  {
    name: "III of Cups",
    question: "What deserves celebration or gratitude in your life?"
  },
  {
    name: "IV of Cups",
    question: "Where might apathy or stagnation be blocking your growth?"
  },
  {
    name: "V of Cups",
    question: "What grief or sadness needs gentle acknowledgment?"
  },
  {
    name: "VI of Cups",
    question: "Which memories or past experiences bring harmony?"
  },
  {
    name: "VII of Cups",
    question: "What possibilities or daydreams are calling to you?"
  },
  {
    name: "VIII of Cups",
    question: "What are you ready to walk away from for your wellbeing?"
  },
  {
    name: "IX of Cups",
    question: "Where can you recognize satisfaction or abundance right now?"
  },
  {
    name: "X of Cups",
    question: "What brings you happiness and emotional fulfillment today?"
  },
  {
    name: "Page of Cups",
    question: "What playful or loving message is trying to reach you?"
  },
  {
    name: "Knight of Cups",
    question: "Where are emotions moving quickly or asking for expression?"
  },
  {
    name: "Queen of Cups",
    question: "How can you nurture your feminine energy or intuition today?"
  },
  {
    name: "King of Cups",
    question: "What emotional stability or empathy can you offer yourself?"
  },
  {
    name: "Ace of Pentacles",
    question: "What new beginning is leading toward abundance?"
  },
  {
    name: "II of Pentacles",
    question: "Where can you cultivate balance and stability?"
  },
  {
    name: "III of Pentacles",
    question: "What new doors or opportunities are opening for you?"
  },
  {
    name: "IV of Pentacles",
    question: "How can you conserve resources and build long-term stability?"
  },
  {
    name: "V of Pentacles",
    question: "Where are you feeling depleted, and what support do you need?"
  },
  {
    name: "VI of Pentacles",
    question: "Where can you practice generosity or share your resources?"
  },
  {
    name: "VII of Pentacles",
    question: "What area of life is inviting patience and steady growth?"
  },
  {
    name: "VIII of Pentacles",
    question: "Where will hard work now lead to productivity later?"
  },
  {
    name: "IX of Pentacles",
    question: "What success or enjoyment can you embrace today?"
  },
  {
    name: "X of Pentacles",
    question: "How does family or legacy influence your choices today?"
  },
  {
    name: "Page of Pentacles",
    question: "Where are solid beginnings forming in your material world?"
  },
  {
    name: "Knight of Pentacles",
    question: "What steady progress are you making toward long-term abundance?"
  },
  {
    name: "Queen of Pentacles",
    question: "Where can dependability or generosity shape your actions?"
  },
  {
    name: "King of Pentacles",
    question: "Where is wealth, generosity, or stability present in your life?"
  },
  {
    name: "Ace of Swords",
    question: "What new idea or moment of clarity is emerging?"
  },
  {
    name: "II of Swords",
    question: "What indecision requires openness instead of self-protection?"
  },
  {
    name: "III of Swords",
    question: "What pain needs acknowledgment before healing can begin?"
  },
  {
    name: "IV of Swords",
    question: "Where do you need rest or introspection?"
  },
  {
    name: "V of Swords",
    question: "How can you navigate conflict with clarity and patience?"
  },
  {
    name: "VI of Swords",
    question: "What healing journey or transition are you ready to begin?"
  },
  {
    name: "VII of Swords",
    question: "Where is strategy or careful planning necessary?"
  },
  {
    name: "VIII of Swords",
    question: "What restriction or trapped feeling can you release?"
  },
  {
    name: "IX of Swords",
    question: "What anxiety can you soothe with truth and presence?"
  },
  {
    name: "X of Swords",
    question: "What ending is making space for a new beginning?"
  },
  {
    name: "Page of Swords",
    question: "Where can you channel enthusiasm and curiosity?"
  },
  {
    name: "Knight of Swords",
    question: "What truth needs to be spoken with clarity and assertiveness?"
  },
  {
    name: "Queen of Swords",
    question: "What decisive action can bring honesty into a situation?"
  },
  {
    name: "King of Swords",
    question: "Where is intellectual leadership being asked of you?"
  },
  {
    name: "Ace of Wands",
    question: "What inspiration or creativity wants expression today?"
  },
  {
    name: "II of Wands",
    question: "What future plans require vision and choice?"
  },
  {
    name: "III of Wands",
    question: "Where is expansion or personal growth unfolding?"
  },
  {
    name: "IV of Wands",
    question: "What special moment deserves celebration?"
  },
  {
    name: "V of Wands",
    question: "What competition or challenge is sharpening your skills?"
  },
  {
    name: "VI of Wands",
    question: "Where are you being recognized for your efforts?"
  },
  {
    name: "VII of Wands",
    question: "Where is assertiveness or boundary-keeping needed?"
  },
  {
    name: "VIII of Wands",
    question: "Where is quick action required to move things forward?"
  },
  {
    name: "IX of Wands",
    question: "What requires persistence or self-reliance right now?"
  },
  {
    name: "X of Wands",
    question: "What burden can you set down to lighten your path?"
  },
  {
    name: "Page of Wands",
    question: "Where is adventure calling you to be bold?"
  },
  {
    name: "Knight of Wands",
    question: "What passion or fast-moving energy is pushing you forward?"
  },
  {
    name: "Queen of Wands",
    question: "How can you express creativity or ambition today?"
  },
  {
    name: "King of Wands",
    question: "Where are you being called into your power or authority?"
  }
]

question_tarot_cards.each do |tarot_card|
  card = TarotCard.find_by!(
    name: tarot_card[:name],
  )
  if card.card_of_the_day_question == nil
    card.card_of_the_day_question = tarot_card[:question]
    card.save!
  end
end


################## Add spreads here
# ---- Past / Present / Future -----------------------------

ppf = Spread.find_or_create_by!(name: "Past / Present / Future")
ppf.update!(
  description: "A classic 3-card spread showing past influences, present circumstances, and future possibilities."
)

[
  ["Past",     1],
  ["Present",  2],
  ["Future",   3]
].each do |(position_name, pos)|
  position = ppf.spread_positions.find_or_initialize_by(position: pos)
  position.update!(name: position_name)
end

puts "Seeded spread: #{ppf.name}"


# ---- You / Them / Relationship -----------------------------

ytr = Spread.find_or_create_by!(name: "You / Them / Relationship")
ytr.update!(
  description: "A 3-card relational spread showing your energy, their energy, and the connection between you."
)

[
  ["You",          1],
  ["Them",         2],
  ["Relationship", 3]
].each do |(position_name, pos)|
  position = ytr.spread_positions.find_or_initialize_by(position: pos)
  position.update!(name: position_name)
end

puts "Seeded spread: #{ytr.name}"


# ---- Situation / Obstacle / Solution -----------------------------

sos = Spread.find_or_create_by!(name: "Situation / Obstacle / Solution")
sos.update!(
  description: "A 3-card spread that highlights where things currently stand, what blocks you, and the best way forward."
)

[
  ["Situation", 1],
  ["Obstacle",  2],
  ["Solution",  3]
].each do |(position_name, pos)|
  position = sos.spread_positions.find_or_initialize_by(position: pos)
  position.update!(name: position_name)
end

puts "Seeded spread: #{sos.name}"


# ---- Mind / Body / Spirit -----------------------------

mbs = Spread.find_or_create_by!(name: "Mind / Body / Spirit")
mbs.update!(
  description: "A holistic 3-card spread examining mental, physical, and spiritual influences."
)

[
  ["Mind",   1],
  ["Body",   2],
  ["Spirit", 3]
].each do |(position_name, pos)|
  position = mbs.spread_positions.find_or_initialize_by(position: pos)
  position.update!(name: position_name)
end

puts "Seeded spread: #{mbs.name}"


# ---- Path 1 / Path 2 / Path 3 -----------------------------

p123 = Spread.find_or_create_by!(name: "Path 1 / Path 2 / Path 3")
p123.update!(
  description: "A 3-card spread showing different paths or options available to you."
)

[
  ["Path 1", 1],
  ["Path 2", 2],
  ["Path 3", 3]
].each do |(position_name, pos)|
  position = p123.spread_positions.find_or_initialize_by(position: pos)
  position.update!(name: position_name)
end

puts "Seeded spread: #{p123.name}"


# ---- Accept / Embrace / Let Go -----------------------------

aelg = Spread.find_or_create_by!(name: "Accept / Embrace / Let Go")
aelg.update!(
  description: "A reflective spread for understanding what to accept, what to embrace, and what to release."
)

[
  ["Accept",    1],
  ["Embrace",   2],
  ["Let Go",    3]
].each do |(position_name, pos)|
  position = aelg.spread_positions.find_or_initialize_by(position: pos)
  position.update!(name: position_name)
end

puts "Seeded spread: #{aelg.name}"

def add_prompts(spread_name, prompts)
  spread = Spread.find_by!(name: spread_name)

  prompts.each do |p|
    SpreadPrompt.find_or_create_by!(spread: spread, prompt: p)
  end

  puts "Added #{prompts.count} prompts to #{spread.name}"
end

# ---------------------
# Past / Present / Future
# ---------------------
add_prompts("Past / Present / Future", [
  "What past influence is shaping my current situation?",
  "What should I understand about my present circumstances?",
  "What future direction am I currently headed toward?",
  "What lesson from the past do I still need to integrate?",
  "How can I best navigate my present to influence my future?"
])

# ---------------------
# You / Them / Relationship
# ---------------------
add_prompts("You / Them / Relationship", [
  "What energy am I bringing to this connection?",
  "What is the other person’s true emotional state?",
  "What is the current dynamic between us?",
  "What do I need to understand about their perspective?",
  "How can the relationship be improved?"
])

# ---------------------
# Situation / Obstacle / Solution
# ---------------------
add_prompts("Situation / Obstacle / Solution", [
  "What is the heart of my current situation?",
  "What hidden obstacle is influencing things?",
  "What is the best solution available to me?",
  "How can I overcome the major challenge I'm facing?",
  "What perspective will help me resolve this situation?"
])

# ---------------------
# Mind / Body / Spirit
# ---------------------
add_prompts("Mind / Body / Spirit", [
  "What is currently occupying my mind?",
  "What does my body need most right now?",
  "What message is my spirit trying to convey?",
  "How can I bring my mind, body, and spirit into balance?",
  "Where is the greatest energetic imbalance in my life?"
])

# ---------------------
# Path 1 / Path 2 / Path 3
# ---------------------
add_prompts("Path 1 / Path 2 / Path 3", [
  "What does the first path represent for me?",
  "What potential lies in the second path?",
  "What long-term outcome does the third path offer?",
  "What guides me in choosing between these paths?",
  "What am I not considering as I evaluate my options?"
])

# ---------------------
# Accept / Embrace / Let Go
# ---------------------
add_prompts("Accept / Embrace / Let Go", [
  "What do I need to accept about my current reality?",
  "What should I embrace to move forward?",
  "What is it time for me to release?",
  "How can acceptance help me grow?",
  "What am I holding onto that no longer serves me?"
])

