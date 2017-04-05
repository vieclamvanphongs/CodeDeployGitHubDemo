class AddMotacongtyTrangwebToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :motacongty, :text
    add_column :vieclams, :trangweb, :string
  end
end
