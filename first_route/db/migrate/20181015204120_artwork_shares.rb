class ArtworkShares < ActiveRecord::Migration[5.2]
  def change
    create_table :artwork_shares do |t|
      t.integer :artwork_id, null: false
      t.integer :viewer_id, null: false
      t.timestamps
    end
    add_index(:artwork_shares, [:viewer_id, :artwork_id], unique: true)
    # allows you to look up view_id by index, with artwork_ids nested
    # does not allow you to look up artwork_id by index
  end
end
