class AddStatusToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :status, :integer, default: 0, null:false
  end
end
