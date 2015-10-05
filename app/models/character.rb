class Character < ActiveRecord::Base
  has_many :character_appearances, class_name: :Appearance
  has_many :books, through: :character_appearances
  has_many :arcs, through: :character_appearances
end
