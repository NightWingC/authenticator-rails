class CreateJoinTableTagsPhotosTags < ActiveRecord::Migration[7.2]
  def change
    create_join_table :photos, :tags do |t|
      t.index [:photo_id, :tag_id]
      t.index [:tag_id, :photo_id]
    end
  end
end
