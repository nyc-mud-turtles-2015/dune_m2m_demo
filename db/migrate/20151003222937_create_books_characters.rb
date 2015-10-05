class CreateBooksCharacters < ActiveRecord::Migration
  def change
    create_table :books_characters, id: false do |t|
      t.belongs_to :book, index: true
      t.belongs_to :character, index: true
    end
  end
end
