class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :word
      t.integer :level
      t.boolean :done, default: false
      t.references :games, foreign_key: true

      t.timestamps
    end
  end
end
