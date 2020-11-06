class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :image_id
      t.references :user, foreign_key: true
      t.text :title
      t.text :body
      t.timestamps
    end
  end
end
