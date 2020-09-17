class AddWakeboardTricksToChallenge < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :trick, :string
  end
end
