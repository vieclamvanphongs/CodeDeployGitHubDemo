class AddKichhoatToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :kichhoat, :string
  end
end
