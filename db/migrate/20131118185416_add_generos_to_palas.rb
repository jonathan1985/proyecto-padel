class AddGenerosTopalas < ActiveRecord::Migration
  def change
    add_column :palas, :generos, :text
  end
end
