class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.datetime :date
      t.string :activity
      t.decimal :distance
      t.time :time
      t.decimal :elevation
      t.string :picture

      t.timestamps
    end
  end
end
