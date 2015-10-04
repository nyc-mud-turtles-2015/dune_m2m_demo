class Appearance < ActiveRecord::Base
  belongs_to :book
  belongs_to :character
  has_one :arc
end
