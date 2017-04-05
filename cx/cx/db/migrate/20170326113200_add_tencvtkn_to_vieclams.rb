class AddTencvtknToVieclams < ActiveRecord::Migration[5.0]
  def change
    add_column :vieclams, :tencvtkn, :string
  end
end
