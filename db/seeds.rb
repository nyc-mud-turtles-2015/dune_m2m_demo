AWESOME_BOOKS = ["Dune", "Dune Messiah", "Children of Dune", "God Emperor of Dune"]
COOL_CHARACTERS = [
  "Paul Muad'Dib Atriedes",
  "Princess Irulan",
  "Chani",
  "Saint Alia of the Knife Atriedes",
  "Lady Jessica",
  "Feyd-Rautha Harkonnen",
  "Baron Vladimir Harkonnen",
]

CHILDREN_OF_DUNE = ["Leto II Atriedes", "Ghanima Atriedes" ]

AWESOME_BOOKS.each do |title|
  Book.create!(title: title, author: "Frank Herbert")
end

COOL_CHARACTERS.each do |name|
  Character.create!(name: name)
end

dune = Book.first
dune.characters << Character.all

CHILDREN_OF_DUNE.each do |name|
  Character.create!(name: name)
end

dm = Book.find_by(title: "Children of Dune")
dm.characters << Character.where(name: CHILDREN_OF_DUNE)

Appearance.of("Chani", in: "Dune").create_arc(summary: "Meets Offworld boy; falls in love; becomes concubine.")
Appearance.of("Baron Vladimir Harkonnen", in: "Dune").create_arc(summary: "Plays pop-pop paw-paw with granddaughter")
