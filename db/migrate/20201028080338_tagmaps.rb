class Tagmaps < ActiveRecord::Migration[6.0]
  def change
    drop_table :tag_maps
  end
end
