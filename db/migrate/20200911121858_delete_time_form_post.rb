class DeleteTimeFormPost < ActiveRecord::Migration[6.0]
  def change
    remove_attachment :posts, :time
  end
end
