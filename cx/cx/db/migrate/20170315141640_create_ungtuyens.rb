class CreateUngtuyens < ActiveRecord::Migration[5.0]
  def change
    create_table :ungtuyens do |t|
      t.string :hoso

      t.timestamps
    end
  end
end
