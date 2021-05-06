class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :nome
      t.integer :skin
      t.integer :life_time, :default => 0
      t.integer :hungry, :default => 100
      t.integer :clean, :default => 100
      t.integer :sleep, :default => 100
      t.integer :happiness, :default => 100
      t.integer :helthy, :default => 100
      t.string :atual_state, :default => "STATE_NORMAL"

      t.timestamps
    end
  end
end
