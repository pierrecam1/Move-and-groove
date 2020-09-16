class ChangeTypeOfActivityAndDifficultyInChallenge < ActiveRecord::Migration[6.0]
  def change
    change_column :challenges, :activity, :integer
    change_column :challenges, :difficulty, :integer
  end
end
