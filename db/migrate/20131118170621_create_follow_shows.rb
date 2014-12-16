class CreateFollowShows < ActiveRecord::Migration
  def change
    create_table :follow_shows do |t|
      t.references :user, index: true
      t.references :palas, index: true

      t.timestamps
    end
  end
end
