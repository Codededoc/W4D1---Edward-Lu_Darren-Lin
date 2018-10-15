class UpdateArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_index :artworks, :artist_id
    remove_index :artworks, :title

    add_index(:artworks, [:artist_id, :title], unique: true)
    # you can look up artist_id, now all titles are nested under this artist_id
    # but does not provide an option to look up title by index
  end
end
