class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :category
      t.integer :calportion
      t.integer :numportions
      t.date :date
      t.string :name
      t.integer :profile_id

      t.timestamps

    end
  end
end
