class ChangeActivityToBeIntegerInPost < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :activity, :integer
  end
end
