class AddDurationToChallenge < ActiveRecord::Migration[6.0]
  def change
    add_column :challenges, :duration, :string

  end
end
