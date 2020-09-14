class ReaddDurationToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :duration, :string
  end
end
