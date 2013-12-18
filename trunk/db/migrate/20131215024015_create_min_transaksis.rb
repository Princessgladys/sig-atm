class CreateMinTransaksis < ActiveRecord::Migration
  def change
    create_table :min_transaksis do |t|
    	t.string :nominal

      t.timestamps
    end
  end
end
