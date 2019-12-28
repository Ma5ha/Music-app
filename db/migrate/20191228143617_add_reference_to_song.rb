class AddReferenceToSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :conteiner, foreign_key: true
  end
end
