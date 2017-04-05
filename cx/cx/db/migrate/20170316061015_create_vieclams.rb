class CreateVieclams < ActiveRecord::Migration[5.0]
  def change
    create_table :vieclams do |t|
      t.string :tencv
      t.string :congty
      t.string :nghanhnghe
      t.string :vitri
      t.text :mota
      t.text :yeucau
      t.string :mucluong
      t.text :quyenloi
      t.string :diadiem
      t.date :ngaydangtuyen
      t.date :ngayhethan
      t.string :email
      t.string :nophoso

      t.timestamps
    end
  end
end
