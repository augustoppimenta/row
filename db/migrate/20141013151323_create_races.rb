class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :nome

      t.timestamps
    end
  end
end
