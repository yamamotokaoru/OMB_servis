class AddStartTimeToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :start_time, :datetime
  end
end
