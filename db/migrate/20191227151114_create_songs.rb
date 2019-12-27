class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :artrist
      t.string :name
      t.string :album

      t.timestamps
    end
  end
end
