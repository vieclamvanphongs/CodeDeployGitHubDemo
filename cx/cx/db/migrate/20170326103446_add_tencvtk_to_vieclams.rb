class AddTencvtkToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :tencvtk, :string
  end
end
