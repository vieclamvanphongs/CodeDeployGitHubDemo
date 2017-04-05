class AddTencvurlDiadiemurlToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :tencvurl, :string
    add_column :vieclams, :diadiemurl, :string
  end
end
