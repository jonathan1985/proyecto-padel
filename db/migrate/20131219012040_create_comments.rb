class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :content
      t.integer :user_id
      t.references :palas, index: true

      t.timestamps
    end
  end
end
