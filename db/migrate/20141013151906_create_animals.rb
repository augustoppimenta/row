class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.integer :age
      t.integer :peso
      t.integer :race_id

      t.timestamps
    end
    add_index :animals, :race_id
  end
end
