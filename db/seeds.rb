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

# Create the Suits
major = Suit.find_or_create_by(name: "Major Arcana", description: "The major arcana")
swords = Suit.find_or_create_by(name: "Swords", description: "The Swords")
cups = Suit.find_or_create_by(name: "Cups", description: "The Cups")
wands = Suit.find_or_create_by(name: "Wands", description: "The Wands")
pentacles = Suit.find_or_create_by(name: "Pentacles", description: "The Pentacles")

suit_hash = {}
suit_hash["Major Arcana"] = major
suit_hash["Swords"] = swords
suit_hash["Cups"] = cups
suit_hash["Wands"] = wands
suit_hash["Pentacles"] = pentacles

tarot_cards = [
  {
    image_file: "00-TheFool.png",
    name: "The Fool",
    meaning: "New beginning, freedom",
    arcana: "Major",
    element: "Air",
    question: "What new beginning or sense of freedom is ready to enter your life today?",
    suit: "Major Arcana",
    value: "0",
    order: 0
  },
  {
    image_file: "01-TheMagician.png",
    name: "The Magician",
    meaning: "Manifestation, creator, inspired action",
    arcana: "Major",
    element: "Air",
    question: "Where can you channel your creativity and take inspired action right now?",
    suit: "Major Arcana",
    value: "I",
    order: 1
  },
  {
    image_file: "02-TheHighPriestess.png",
    name: "The High Priestess",
    meaning: "Intuition, self-knowledge",
    arcana: "Major",
    element: "Water",
    question: "How can you open yourself to receive more love or creative energy today?",
    suit: "Major Arcana",
    value: "II",
    order: 2
  },
  {
    image_file: "03-TheEmpress.png",
    name: "The Empress",
    meaning: "Receiving love, creativity",
    arcana: "Major",
    element: "Earth",
    question: "How can you open yourself to receive more love or creative energy today?",
    suit: "Major Arcana",
    value: "III",
    order: 3
  },
  {
    image_file: "04-TheEmperor.png",
    name: "The Emperor",
    meaning: "Inspired action, personal power",
    arcana: "Major",
    element: "Fire",
    question: "Where are you being called to step into your personal power?",
    suit: "Major Arcana",
    value: "IV",
    order: 4
  },
  {
    image_file: "05-TheHierophant.png",
    name: "The Hierophant",
    meaning: "Teacher, tradition",
    arcana: "Major",
    element: "Earth",
    question: "What traditions or teachings are guiding you at this moment?",
    suit: "Major Arcana",
    value: "V",
    order: 5
  },
  {
    image_file: "06-TheLovers.png",
    name: "The Lovers",
    meaning: "Relationship, alignment",
    arcana: "Major",
    element: "Air",
    question: "How can you bring more alignment or harmony into your relationships?",
    suit: "Major Arcana",
    value: "VI",
    order: 6
  },
  {
    image_file: "07-TheChariot.png",
    name: "The Chariot",
    meaning: "Inspired action, mementum",
    arcana: "Major",
    element: "Water",
    question: "What momentum is building in your life, and how can you support it?",
    suit: "Major Arcana",
    value: "VII",
    order: 7
  },
  {
    image_file: "08-Strength.png",
    name: "Strength",
    meaning: "Overcoming obstacles, endurance",
    arcana: "Major",
    element: "Fire",
    question: "Which obstacles are you ready to overcome through endurance and focus?",
    suit: "Major Arcana",
    value: "VIII",
    order: 8
  },
  {
    image_file: "09-TheHermit.png",
    name: "The Hermit",
    meaning: "Wisdom, solitude",
    arcana: "Major",
    element: "Earth",
    question: "Where could solitude help you access deeper wisdom?",
    suit: "Major Arcana",
    value: "IX",
    order: 9
  },
  {
    image_file: "10-WheelOfFortune.png",
    name: "WheelOfFortune",
    meaning: "Cycles, change",
    arcana: "Major",
    element: "Fire",
    question: "What changes or cycles are unfolding that you can embrace rather than resist?",
    suit: "Major Arcana",
    value: "X",
    order: 10
  },
  {
    image_file: "11-Justice.png",
    name: "Justice",
    meaning: "Truth, balance",
    arcana: "Major",
    element: "Air",
    question: "Where do you need to restore truth or balance in your life?",
    suit: "Major Arcana",
    value: "XI",
    order: 11
  },
  {
    image_file: "12-TheHangedMan.png",
    name: "The Hanged Man",
    meaning: "Waiting, shifted perspectives",
    arcana: "Major",
    element: "Water",
    question: "What new perspective could shift your understanding of a situation?",
    suit: "Major Arcana",
    value: "XII",
    order: 12
  },
  {
    image_file: "13-Death.png",
    name: "Death",
    meaning: "Transformation, release",
    arcana: "Major",
    element: "Water",
    question: "What is ready to be released so transformation can take place?",
    suit: "Major Arcana",
    value: "XIII",
    order: 13
  },
  {
    image_file: "14-Temperance.png",
    name: "Temperance",
    meaning: "Moderation, harmony, divine timing",
    arcana: "Major",
    element: "Fire",
    question: "Where is moderation or patience being requested of you?",
    suit: "Major Arcana",
    value: "XIV",
    order: 14
  },
  {
    image_file: "15-TheDevil.png",
    name: "The Devil",
    meaning: "Sabotage, addiction",
    arcana: "Major",
    element: "Earth",
    question: "What habits or attachments might be holding you back?",
    suit: "Major Arcana",
    value: "XV",
    order: 15
  },
  {
    image_file: "16-TheTower.png",
    name: "The Tower",
    meaning: "Upheaval, sudden change",
    arcana: "Major",
    element: "Fire",
    question: "What sudden change is reshaping things for the better?",
    suit: "Major Arcana",
    value: "XVI",
    order: 16
  },
  {
    image_file: "17-TheStar.png",
    name: "The Star",
    meaning: "Hope, healing",
    arcana: "Major",
    element: "Air",
    question: "Where are hope and healing trying to take root in your life?",
    suit: "Major Arcana",
    value: "XVII",
    order: 17
  },
  {
    image_file: "18-TheMoon.png",
    name: "The Moon",
    meaning: "Dreams, illusions",
    arcana: "Major",
    element: "Water",
    question: "What illusions or dreams need clarity today?",
    suit: "Major Arcana",
    value: "XVII",
    order: 18
  },
  {
    image_file: "19-TheSun.png",
    name: "The Sun",
    meaning: "Clarity, optimism",
    arcana: "Major",
    element: "Fire",
    question: "What clarity or renewed optimism is coming into focus?",
    suit: "Major Arcana",
    value: "XVIII",
    order: 19
  },
  {
    image_file: "20-Judgement.png",
    name: "Judgement",
    meaning: "Awakening, acceptance",
    arcana: "Major",
    element: "Fire",
    question: "Where are you awakening to a deeper truth or acceptance?",
    suit: "Major Arcana",
    value: "XIX",
    order: 20
  },
  {
    image_file: "21-TheWorld.png",
    name: "The World",
    meaning: "Successful completion, reaping rewards",
    arcana: "Major",
    element: "Earth",
    question: "What success or completion can you acknowledge and celebrate?",
    suit: "Major Arcana",
    value: "XX",
    order: 21
  },
  {
    image_file: "Cups01.png",
    name: "Ace of Cups",
    meaning: "New love, relationships",
    arcana: "Minor",
    element: "Water",
    question: "How can you invite new love or emotional openness today?",
    suit: "Cups",
    value: "Ace",
    order: 1
  },
  {
    image_file: "Cups02.png",
    name: "II of Cups",
    meaning: "Partnership, union",
    arcana: "Minor",
    element: "Water",
    question: "Where is partnership or collaboration bringing strength?",
    suit: "Cups",
    value: "II",
    order: 2
  },
  {
    image_file: "Cups03.png",
    name: "III of Cups",
    meaning: "Celebration, togetherness",
    arcana: "Minor",
    element: "Water",
    question: "What deserves celebration or gratitude in your life?",
    suit: "Cups",
    value: "III",
    order: 3
  },
  {
    image_file: "Cups04.png",
    name: "IV of Cups",
    meaning: "Apathy, stagnation",
    arcana: "Minor",
    element: "Water",
    question: "Where might apathy or stagnation be blocking your growth?",
    suit: "Cups",
    value: "IV",
    order: 4
  },
  {
    image_file: "Cups05.png",
    name: "V of Cups",
    meaning: "Grief, sadness",
    arcana: "Minor",
    element: "Water",
    question: "What grief or sadness needs gentle acknowledgment?",
    suit: "Cups",
    value: "V",
    order: 5
  },
  {
    image_file: "Cups06.png",
    name: "VI of Cups",
    meaning: "Harmony, memories",
    arcana: "Minor",
    element: "Water",
    question: "Which memories or past experiences bring harmony?",
    suit: "Cups",
    value: "VI",
    order: 6
  },
  {
    image_file: "Cups07.png",
    name: "VII of Cups",
    meaning: "Possibilities, daydreaming",
    arcana: "Minor",
    element: "Water",
    question: "What possibilities or daydreams are calling to you?",
    suit: "Cups",
    value: "VII",
    order: 7
  },
  {
    image_file: "Cups08.png",
    name: "VIII of Cups",
    meaning: "Walking away, moving on",
    arcana: "Minor",
    element: "Water",
    question: "What are you ready to walk away from for your wellbeing?",
    suit: "Cups",
    value: "VIII",
    order: 8
  },
  {
    image_file: "Cups09.png",
    name: "IX of Cups",
    meaning: "Satisfaction, abundance",
    arcana: "Minor",
    element: "Water",
    question: "Where can you recognize satisfaction or abundance right now?",
    suit: "Cups",
    value: "IX",
    order: 9
  },
  {
    image_file: "Cups10.png",
    name: "X of Cups",
    meaning: "Happiness, fulfillment",
    arcana: "Minor",
    element: "Water",
    question: "What brings you happiness and emotional fulfillment today?",
    suit: "Cups",
    value: "X",
    order: 10
  },
  {
    image_file: "Cups11.png",
    name: "Page of Cups",
    meaning: "Love messages, playfulness, emotional intelligence",
    arcana: "Minor",
    element: "Water",
    question: "What playful or loving message is trying to reach you?",
    suit: "Cups",
    value: "Page",
    order: 11
  },
  {
    image_file: "Cups12.png",
    name: "Knight of Cups",
    meaning: "Emotional offerings, speed",
    arcana: "Minor",
    element: "Water",
    question: "Where are emotions moving quickly or asking for expression?",
    suit: "Cups",
    value: "Knight",
    order: 12
  },
  {
    image_file: "Cups13.png",
    name: "Queen of Cups",
    meaning: "Nuturing, feminine engergy",
    arcana: "Minor",
    element: "Water",
    question: "How can you nurture your feminine energy or intuition today?",
    suit: "Cups",
    value: "Queen",
    order: 13
  },
  {
    image_file: "Cups14.png",
    name: "King of Cups",
    meaning: "Emotional stability, empathy",
    arcana: "Minor",
    element: "Water",
    question: "What emotional stability or empathy can you offer yourself?",
    suit: "Cups",
    value: "King",
    order: 14
  },
  {
    image_file: "Pentacles01.png",
    name: "Ace of Pentacles",
    meaning: "New beginnings, abundance",
    arcana: "Minor",
    element: "Earth",
    question: "What new beginning is leading toward abundance?",
    suit: "Pentacles",
    value: "Ace",
    order: 1
  },
  {
    image_file: "Pentacles02.png",
    name: "II of Pentacles",
    meaning: "Balance, stability",
    arcana: "Minor",
    element: "Earth",
    question: "Where can you cultivate balance and stability?",
    suit: "Pentacles",
    value: "II",
    order: 2
  },
  {
    image_file: "Pentacles03.png",
    name: "III of Pentacles",
    meaning: "Success, new doors opening",
    arcana: "Minor",
    element: "Earth",
    question: "What new doors or opportunities are opening for you?",
    suit: "Pentacles",
    value: "III",
    order: 3
  },
  {
    image_file: "Pentacles04.png",
    name: "IV of Pentacles",
    meaning: "Building stability, conserving resources",
    arcana: "Minor",
    element: "Earth",
    question: "How can you conserve resources and build long-term stability?",
    suit: "Pentacles",
    value: "IV",
    order: 4
  },
  {
    image_file: "Pentacles05.png",
    name: "V of Pentacles",
    meaning: "Focusing on lack, feeling physicall or financially depleted",
    arcana: "Minor",
    element: "Earth",
    question: "Where are you feeling depleted, and what support do you need?",
    suit: "Pentacles",
    value: "V",
    order: 5
  },
  {
    image_file: "Pentacles06.png",
    name: "VI of Pentacles",
    meaning: "Generorsity, sharing resources",
    arcana: "Minor",
    element: "Earth",
    question: "Where can you practice generosity or share your resources?",
    suit: "Pentacles",
    value: "VI",
    order: 6
  },
  {
    image_file: "Pentacles07.png",
    name: "VII of Pentacles",
    meaning: "Growth, patience",
    arcana: "Minor",
    element: "Earth",
    question: "What area of life is inviting patience and steady growth?",
    suit: "Pentacles",
    value: "VII",
    order: 7
  },
  {
    image_file: "Pentacles08.png",
    name: "VIII of Pentacles",
    meaning: "Hard work, productivity",
    arcana: "Minor",
    element: "Earth",
    question: "Where will hard work now lead to productivity later?",
    suit: "Pentacles",
    value: "VIII",
    order: 8
  },
  {
    image_file: "Pentacles09.png",
    name: "IX of Pentacles",
    meaning: "Success, enjoyment",
    arcana: "Minor",
    element: "Earth",
    question: "What success or enjoyment can you embrace today?",
    suit: "Pentacles",
    value: "IX",
    order: 9
  },
  {
    image_file: "Pentacles10.png",
    name: "X of Pentacles",
    meaning: "Wealth, family inheiritance",
    arcana: "Minor",
    element: "Earth",
    question: "How does family or legacy influence your choices today?",
    suit: "Pentacles",
    value: "X",
    order: 10
  },
  {
    image_file: "Pentacles11.png",
    name: "Page of Pentacles",
    meaning: "Manifestation, solid beginnings",
    arcana: "Minor",
    element: "Earth",
    question: "Where are solid beginnings forming in your material world?",
    suit: "Pentacles",
    value: "Page",
    order: 11
  },
  {
    image_file: "Pentacles12.png",
    name: "Knight of Pentacles",
    meaning: "Long term abundance, steady progress",
    arcana: "Minor",
    element: "Earth",
    question: "What steady progress are you making toward long-term abundance?",
    suit: "Pentacles",
    value: "Knight",
    order: 12
  },
  {
    image_file: "Pentacles13.png",
    name: "Queen of Pentacles",
    meaning: "Generosity, dependability",
    arcana: "Minor",
    element: "Earth",
    question: "Where can dependability or generosity shape your actions?",
    suit: "Pentacles",
    value: "Queen",
    order: 13
  },
  {
    image_file: "Pentacles14.png",
    name: "King of Pentacles",
    meaning: "Wealth, generosity",
    arcana: "Minor",
    element: "Earth",
    question: "Where is wealth, generosity, or stability present in your life?",
    suit: "Pentacles",
    value: "King",
    order: 14
  },
  {
    image_file: "Swords01.png",
    name: "Ace of Swords",
    meaning: "Clarity, new ideas",
    arcana: "Minor",
    element: "Air",
    question: "What new idea or moment of clarity is emerging?",
    suit: "Swords",
    value: "Ace",
    order: 1
  },
  {
    image_file: "Swords02.png",
    name: "II of Swords",
    meaning: "Indecision, self-protection",
    arcana: "Minor",
    element: "Air",
    question: "What indecision requires openness instead of self-protection?",
    suit: "Swords",
    value: "II",
    order: 2
  },
  {
    image_file: "Swords03.png",
    name: "III of Swords",
    meaning: "Sadness, pain",
    arcana: "Minor",
    element: "Air",
    question: "What pain needs acknowledgment before healing can begin?",
    suit: "Swords",
    value: "III",
    order: 3
  },
  {
    image_file: "Swords04.png",
    name: "IV of Swords",
    meaning: "Rest, introspection",
    arcana: "Minor",
    element: "Air",
    question: "Where do you need rest or introspection?",
    suit: "Swords",
    value: "IV",
    order: 4
  },
  {
    image_file: "Swords05.png",
    name: "V of Swords",
    meaning: "Conflict, arguments",
    arcana: "Minor",
    element: "Air",
    question: "How can you navigate conflict with clarity and patience?",
    suit: "Swords",
    value: "V",
    order: 5
  },
  {
    image_file: "Swords06.png",
    name: "VI of Swords",
    meaning: "Moving forward, embarking on a healing journey",
    arcana: "Minor",
    element: "Air",
    question: "What healing journey or transition are you ready to begin?",
    suit: "Swords",
    value: "VI",
    order: 6
  },
  {
    image_file: "Swords07.png",
    name: "VII of Swords",
    meaning: "Deception, strategy",
    arcana: "Minor",
    element: "Air",
    question: "Where is strategy or careful planning necessary?",
    suit: "Swords",
    value: "VII",
    order: 7
  },
  {
    image_file: "Swords08.png",
    name: "VIII of Swords",
    meaning: "Feeling trapped, restriction",
    arcana: "Minor",
    element: "Air",
    question: "What restriction or trapped feeling can you release?",
    suit: "Swords",
    value: "VIII",
    order: 8
  },
  {
    image_file: "Swords09.png",
    name: "IX of Swords",
    meaning: "Anxiety, worry",
    arcana: "Minor",
    element: "Air",
    question: "What anxiety can you soothe with truth and presence?",
    suit: "Swords",
    value: "IX",
    order: 9
  },
  {
    image_file: "Swords10.png",
    name: "X of Swords",
    meaning: "Endings, new beginnings",
    arcana: "Minor",
    element: "Air",
    question: "What ending is making space for a new beginning?",
    suit: "Swords",
    value: "X",
    order: 10
  },
  {
    image_file: "Swords11.png",
    name: "Page of Swords",
    meaning: "Enthusiasm, eagerness to learn",
    arcana: "Minor",
    element: "Air",
    question: "Where can you channel enthusiasm and curiosity?",
    suit: "Swords",
    value: "Page",
    order: 11
  },
  {
    image_file: "Swords12.png",
    name: "Knight of Swords",
    meaning: "Truth seeking, assertive",
    arcana: "Minor",
    element: "Air",
    question: "What truth needs to be spoken with clarity and assertiveness?",
    suit: "Swords",
    value: "Knight",
    order: 12
  },
  {
    image_file: "Swords13.png",
    name: "Queen of Swords",
    meaning: "Decisivness, honesty",
    arcana: "Minor",
    element: "Air",
    question: "What decisive action can bring honesty into a situation?",
    suit: "Swords",
    value: "Queen",
    order: 13
  },
  {
    image_file: "Swords14.png",
    name: "King of Swords",
    meaning: "Intellectual ambition, leadership",
    arcana: "Minor",
    element: "Air",
    question: "Where is intellectual leadership being asked of you?",
    suit: "Swords",
    value: "King",
    order: 14
  },
  {
    image_file: "Wands01.png",
    name: "Ace of Wands",
    meaning: "Inspiration, creativity",
    arcana: "Minor",
    element: "Fire",
    question: "What inspiration or creativity wants expression today?",
    suit: "Wands",
    value: "Ace",
    order: 1
  },
  {
    image_file: "Wands02.png",
    name: "II of Wands",
    meaning: "Choice, future plans",
    arcana: "Minor",
    element: "Fire",
    question: "What future plans require vision and choice?",
    suit: "Wands",
    value: "II",
    order: 2
  },
  {
    image_file: "Wands03.png",
    name: "III of Wands",
    meaning: "Expansion, growth",
    arcana: "Minor",
    element: "Fire",
    question: "Where is expansion or personal growth unfolding?",
    suit: "Wands",
    value: "III",
    order: 3
  },
  {
    image_file: "Wands04.png",
    name: "IV of Wands",
    meaning: "Celebration, special events",
    arcana: "Minor",
    element: "Fire",
    question: "What special moment deserves celebration?",
    suit: "Wands",
    value: "IV",
    order: 4
  },
  {
    image_file: "Wands05.png",
    name: "V of Wands",
    meaning: "Competition, rivalry",
    arcana: "Minor",
    element: "Fire",
    question: "What competition or challenge is sharpening your skills?",
    suit: "Wands",
    value: "V",
    order: 5
  },
  {
    image_file: "Wands06.png",
    name: "VI of Wands",
    meaning: "Victory, recognition",
    arcana: "Minor",
    element: "Fire",
    question: "Where are you being recognized for your efforts?",
    suit: "Wands",
    value: "VI",
    order: 6
  },
  {
    image_file: "Wands07.png",
    name: "VII of Wands",
    meaning: "Definsiveness, assertiveness",
    arcana: "Minor",
    element: "Fire",
    question: "Where is assertiveness or boundary-keeping needed?",
    suit: "Wands",
    value: "VII",
    order: 7
  },
  {
    image_file: "Wands08.png",
    name: "VIII of Wands",
    meaning: "Movement, quick action",
    arcana: "Minor",
    element: "Fire",
    question: "Where is quick action required to move things forward?",
    suit: "Wands",
    value: "VIII",
    order: 8
  },
  {
    image_file: "Wands09.png",
    name: "IX of Wands",
    meaning: "Persistence, self-reliance",
    arcana: "Minor",
    element: "Fire",
    question: "What requires persistence or self-reliance right now?",
    suit: "Wands",
    value: "IX",
    order: 9
  },
  {
    image_file: "Wands10.png",
    name: "X of Wands",
    meaning: "Overwhelm, burdens",
    arcana: "Minor",
    element: "Fire",
    question: "What burden can you set down to lighten your path?",
    suit: "Wands",
    value: "X",
    order: 10
  },
  {
    image_file: "Wands11.png",
    name: "Page of Wands",
    meaning: "Impulsiveness, sense of adventure",
    arcana: "Minor",
    element: "Fire",
    question: "Where is adventure calling you to be bold?",
    suit: "Wands",
    value: "Page",
    order: 11
  },
  {
    image_file: "Wands12.png",
    name: "Knight of Wands",
    meaning: "Fast action, passion",
    arcana: "Minor",
    element: "Fire",
    question: "What passion or fast-moving energy is pushing you forward?",
    suit: "Wands",
    value: "Knight",
    order: 12
  },
  {
    image_file: "Wands13.png",
    name: "Queen of Wands",
    meaning: "Creativity, ambition",
    arcana: "Minor",
    element: "Fire",
    question: "How can you express creativity or ambition today?",
    suit: "Wands",
    value: "Queen",
    order: 13
  },
  {
    image_file: "Wands14.png",
    name: "King of Wands",
    meaning: "Power, authority",
    arcana: "Minor",
    element: "Fire",
    question: "Where are you being called into your power or authority?",
    suit: "Wands",
    value: "King",
    order: 14
  }
]


tarot_cards.each do |tarot_card|
  suit = suit_hash[tarot_card[:suit]]
  TarotCard.find_or_create_by!(
    image_file: tarot_card[:image_file],
    name: tarot_card[:name],
    meaning: tarot_card[:meaning],
    arcana: tarot_card[:arcana],
    element: tarot_card[:element],
    card_of_the_day_question: tarot_card[:question],
    value: tarot_card[:value],
    order: tarot_card[:order],
    suit: suit
  )
end

################## Add spreads here
# ---- Past / Present / Future -----------------------------

ppf = Spread.find_or_create_by!(name: "Past / Present / Future")
ppf.update!(
  description: "A classic 3-card spread showing past influences, present circumstances, and future possibilities."
)

[
  [ "Past",     1 ],
  [ "Present",  2 ],
  [ "Future",   3 ]
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
  [ "You",          1 ],
  [ "Them",         2 ],
  [ "Relationship", 3 ]
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
  [ "Situation", 1 ],
  [ "Obstacle",  2 ],
  [ "Solution",  3 ]
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
  [ "Mind",   1 ],
  [ "Body",   2 ],
  [ "Spirit", 3 ]
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
  [ "Path 1", 1 ],
  [ "Path 2", 2 ],
  [ "Path 3", 3 ]
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
  [ "Accept",    1 ],
  [ "Embrace",   2 ],
  [ "Let Go",    3 ]
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


reversed_tarot_cards = [
  {
    name: "The Fool",
    reversed_meaning: "Naivete, fear of change"
  },
  {
    name: "The Magician",
    reversed_meaning: "Disconnection from personal power, manipulative"
  },
  {
    name: "The High Priestess",
    reversed_meaning: "Disconnection from intuition, refusal to look within"
  },
  {
    name: "The Empress",
    reversed_meaning: "Disconnection, creative blocks"
  },
  {
    name: "The Emperor",
    reversed_meaning: "Inability to take action, defensive/reactive"
  },
  {
    name: "The Hierophant",
    reversed_meaning: "Rigid beliefs, refusal to learn"
  },
  {
    name: "The Lovers",
    reversed_meaning: "Disharmony, imbalance"
  },
  {
    name: "The Chariot",
    reversed_meaning: "Inability to move forward, stagnation"
  },
  {
    name: "Strength",
    reversed_meaning: "Apprehension, lack of confidence"
  },
  {
    name: "The Hermit",
    reversed_meaning: "Lonliness, isolation"
  },
  {
    name: "WheelOfFortune",
    reversed_meaning: "Delays, setbacks"
  },
  {
    name: "Justice",
    reversed_meaning: "Imbalance, unfair treatment"
  },
  {
    name: "The Hanged Man",
    reversed_meaning: "Impatience, inertia"
  },
  {
    name: "Death",
    reversed_meaning: "Clinging to the past, refusing to change"
  },
  {
    name: "Temperance",
    reversed_meaning: "Imbalance, pushing for results"
  },
  {
    name: "The Devil",
    reversed_meaning: "Release, liberation"
  },
  {
    name: "The Tower",
    reversed_meaning: "Hanging on, fear of letting go"
  },
  {
    name: "The Star",
    reversed_meaning: "Loss of faith, disconnection from source"
  },
  {
    name: "The Moon",
    reversed_meaning: "Bypassing difficulties, refusing to acknowledge the truth"
  },
  {
    name: "The Sun",
    reversed_meaning: "Pessimism, confusion"
  },
  {
    name: "Judgement",
    reversed_meaning: "Self-doubt, resentment"
  },
  {
    name: "The World",
    reversed_meaning: "Incomplete action, delayed celebration"
  },
  {
    name: "Ace of Cups",
    reversed_meaning: "Depletion, disappointment"
  },
  {
    name: "II of Cups",
    reversed_meaning: "Disharmony, breakup"
  },
  {
    name: "III of Cups",
    reversed_meaning: "Feeling emotionally drained, overindulgence"
  },
  {
    name: "IV of Cups",
    reversed_meaning: "Refusal to change, stuck in a bad mood"
  },
  {
    name: "V of Cups",
    reversed_meaning: "Silver linings, moving on"
  },
  {
    name: "VI of Cups",
    reversed_meaning: "Nostalgia, living in the past"
  },
  {
    name: "VII of Cups",
    reversed_meaning: "Illusions, confusion"
  },
  {
    name: "VIII of Cups",
    reversed_meaning: "Hanging on, avoiding change"
  },
  {
    name: "IX of Cups",
    reversed_meaning: "Overindulgence, arrogance"
  },
  {
    name: "X of Cups",
    reversed_meaning: "Disharmony"
  },
  {
    name: "Page of Cups",
    reversed_meaning: "Immaturity, oversensitivity"
  },
  {
    name: "Knight of Cups",
    reversed_meaning: "Perfection, disappointment"
  },
  {
    name: "Queen of Cups",
    reversed_meaning: "Suspicion, emotional distance"
  },
  {
    name: "King of Cups",
    reversed_meaning: "Unreliability, lack of boundries"
  },
  {
    name: "Ace of Pentacles",
    reversed_meaning: "Delayed abundance"
  },
  {
    name: "II of Pentacles",
    reversed_meaning: "Tension, irresponsibility"
  },
  {
    name: "III of Pentacles",
    reversed_meaning: "Burnout, lack of confidence"
  },
  {
    name: "IV of Pentacles",
    reversed_meaning: "Materialism, controlling behaviors"
  },
  {
    name: "V of Pentacles",
    reversed_meaning: "Moving on from challenges"
  },
  {
    name: "VI of Pentacles",
    reversed_meaning: "Generorsity with strings attached, inequality"
  },
  {
    name: "VII of Pentacles",
    reversed_meaning: "Impatience, procrastination"
  },
  {
    name: "VIII of Pentacles",
    reversed_meaning: "Burnout, overworking, being undervalued"
  },
  {
    name: "IX of Pentacles",
    reversed_meaning: "Materialism, lack of appreciation"
  },
  {
    name: "X of Pentacles",
    reversed_meaning: "Loss, breaking with tradition"
  },
  {
    name: "Page of Pentacles",
    reversed_meaning: "Procrastination, lacking a solid plan"
  },
  {
    name: "Knight of Pentacles",
    reversed_meaning: "Hesitation, complacency"
  },
  {
    name: "Queen of Pentacles",
    reversed_meaning: "Materialism, unreliability"
  },
  {
    name: "King of Pentacles",
    reversed_meaning: "Greed, self-centeredness"
  },
  {
    name: "Ace of Swords",
    reversed_meaning: "Confusion, indecision"
  },
  {
    name: "II of Swords",
    reversed_meaning: "Manipulation, blocked intuition"
  },
  {
    name: "III of Swords",
    reversed_meaning: "Recovery, releasing pain"
  },
  {
    name: "IV of Swords",
    reversed_meaning: "Restlessness, avoiding self-reflection"
  },
  {
    name: "V of Swords",
    reversed_meaning: "Releasing, letting go grudges"
  },
  {
    name: "VI of Swords",
    reversed_meaning: "Difficulties in moving on, staying in place"
  },
  {
    name: "VII of Swords",
    reversed_meaning: "Disorganization, paranoia"
  },
  {
    name: "VIII of Swords",
    reversed_meaning: "Release, hesitation"
  },
  {
    name: "IX of Swords",
    reversed_meaning: "Hopelessness, despair"
  },
  {
    name: "X of Swords",
    reversed_meaning: "Delayed endings, hanging on to the past"
  },
  {
    name: "Page of Swords",
    reversed_meaning: "Gossip, defensiveness"
  },
  {
    name: "Knight of Swords",
    reversed_meaning: "Pushy, aggressive"
  },
  {
    name: "Queen of Swords",
    reversed_meaning: "Criticism, defensiveness"
  },
  {
    name: "King of Swords",
    reversed_meaning: "Control, judgement"
  },
  {
    name: "Ace of Wands",
    reversed_meaning: "Hesitation, delays"
  },
  {
    name: "II of Wands",
    reversed_meaning: "Impatience, lack of planning"
  },
  {
    name: "III of Wands",
    reversed_meaning: "Delays, disappointment"
  },
  {
    name: "IV of Wands",
    reversed_meaning: "Returning to the joy of the present"
  },
  {
    name: "V of Wands",
    reversed_meaning: "Exaggeration, finding a solution"
  },
  {
    name: "VI of Wands",
    reversed_meaning: "Delayed success"
  },
  {
    name: "VII of Wands",
    reversed_meaning: "Hypervigalance, feeling defeated"
  },
  {
    name: "VIII of Wands",
    reversed_meaning: "Slowing down, exercising patience"
  },
  {
    name: "IX of Wands",
    reversed_meaning: "Giving up, delays"
  },
  {
    name: "X of Wands",
    reversed_meaning: "Pressure, exhaustion"
  },
  {
    name: "Page of Wands",
    reversed_meaning: "Unreliability, hastiness"
  },
  {
    name: "Knight of Wands",
    reversed_meaning: "Self-doubt, hesitation"
  },
  {
    name: "Queen of Wands",
    reversed_meaning: "Feeling unworthy, creative blocks"
  },
  {
    name: "King of Wands",
    reversed_meaning: "Abuse of power, bullying"
  }
]

reversed_tarot_cards.each do |reversed_tarot_card|
  tarot_card = TarotCard.find_by!(name: reversed_tarot_card[:name])
  if tarot_card.reversed_meaning.nil?
    tarot_card.reversed_meaning = reversed_tarot_card[:reversed_meaning]
    tarot_card.save
  end
end
