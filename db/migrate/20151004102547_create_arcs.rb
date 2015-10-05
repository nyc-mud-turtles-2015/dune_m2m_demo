class CreateArcs < ActiveRecord::Migration
  def change
    create_table :arcs do |t|
      t.string :summary, null: false
      t.references :appearance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
