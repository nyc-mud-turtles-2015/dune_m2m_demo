class Appearance < ActiveRecord::Base
  belongs_to :book
  belongs_to :character
  has_one :arc

  def self.of(char_name = nil, args = {})
    find_by(book: Book.find_by(title: args[:in]), character: Character.find_by(name: char_name))
  end
end
