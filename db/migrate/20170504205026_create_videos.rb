class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
