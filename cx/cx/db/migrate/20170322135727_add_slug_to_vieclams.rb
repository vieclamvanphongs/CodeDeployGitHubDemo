class AddSlugToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :slug, :string
    add_index :vieclams, :slug, unique: true
  end
end
