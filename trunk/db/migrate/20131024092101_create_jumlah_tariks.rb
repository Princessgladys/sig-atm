class CreateJumlahTariks < ActiveRecord::Migration
  def change
    create_table :jumlah_tariks do |t|
      t.string :nominal

      t.timestamps
    end
  end
end
