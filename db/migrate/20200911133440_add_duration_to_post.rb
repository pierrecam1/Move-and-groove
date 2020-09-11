class AddDurationToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :duration, :time
  end
end
