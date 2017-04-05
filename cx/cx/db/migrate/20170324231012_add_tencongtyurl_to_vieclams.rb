class AddTencongtyurlToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :tencongtyurl, :string
  end
end
