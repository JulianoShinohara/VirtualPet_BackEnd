class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :nome
      t.integer :life_time
      t.integer :hungry
      t.integer :clean
      t.integer :sleep
      t.integer :happiness
      t.integer :helthy
      t.string :atual_state

      t.timestamps
    end
  end
end
