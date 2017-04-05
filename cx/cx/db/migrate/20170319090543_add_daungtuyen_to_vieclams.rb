class AddDaungtuyenToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :daungtuyen, :string
  end
end
