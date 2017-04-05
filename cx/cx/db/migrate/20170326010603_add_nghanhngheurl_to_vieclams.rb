class AddNghanhngheurlToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :nghanhngheurl, :string
  end
end
