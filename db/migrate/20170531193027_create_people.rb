class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :hair_color
      t.string :race
      t.boolean :alive

      t.timestamps
    end
  end
end
