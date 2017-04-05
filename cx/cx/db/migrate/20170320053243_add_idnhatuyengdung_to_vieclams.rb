class AddIdnhatuyengdungToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :idnhatuyendung, :string
  end
end
