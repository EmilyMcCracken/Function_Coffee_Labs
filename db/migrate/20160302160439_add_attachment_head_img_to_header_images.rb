class AddAttachmentHeadImgToHeaderImages < ActiveRecord::Migration
  def self.up
    change_table :header_images do |t|
      t.attachment :head_img
    end
  end

  def self.down
    remove_attachment :header_images, :head_img
  end
end
