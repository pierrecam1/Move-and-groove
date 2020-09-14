class FixDurationToPost < ActiveRecord::Migration[6.0]
  def up
    remove_column :posts, :time
    remove_column :posts, :duration
  end
end
