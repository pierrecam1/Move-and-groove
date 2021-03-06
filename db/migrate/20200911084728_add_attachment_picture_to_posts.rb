class AddAttachmentPictureToPosts < ActiveRecord::Migration[6.0]
  def self.up
    change_table :posts do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :posts, :picture
  end
end
