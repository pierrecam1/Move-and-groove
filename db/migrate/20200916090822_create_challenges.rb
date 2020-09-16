class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.decimal :number_of_day
      t.string :activity
      t.string :difficulty
      t.decimal :distance
      t.string :deadline
      t.decimal :elevation

      t.timestamps
    end
  end
end
