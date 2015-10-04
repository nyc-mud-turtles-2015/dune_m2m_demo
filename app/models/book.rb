class Book < ActiveRecord::Base
  has_many :character_appearances, class_name: :Appearance
  has_many :characters, through: :character_appearances
end
