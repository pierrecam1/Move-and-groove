class AddTrickToSession < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :trick, :string

  end
end
