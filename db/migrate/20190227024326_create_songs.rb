class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :singer
      t.string :genre
      t.string :picture

      t.timestamps
    end
  end
end
