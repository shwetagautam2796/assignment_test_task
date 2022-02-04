class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :images, array: true, default: []
      t.string :tags, array: true, default: []
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
