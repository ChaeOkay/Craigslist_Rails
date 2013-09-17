class CreatePosts < ActiveRecord::Migration

  def change
    create_table :posts do |t|
      t.references :category
      t.string :title
      t.string :description
      t.string :email
      t.string :secure_email
      t.string :key
      t.integer :rent
      t.integer :area
      t.timestamps
    end
  end

end
