class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.date :date
      t.string :category
      t.string :name
      t.integer :lengthhrs
      t.integer :lengthmins
      t.integer :calburned
      t.string :intensity
      t.integer :profile_id

      t.timestamps

    end
  end
end
