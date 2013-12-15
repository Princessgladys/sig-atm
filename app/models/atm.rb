class Atm < ActiveRecord::Base
  attr_accessible :lat, :lng, :nama_atm, :icon, :picture, :bank_id, :lokasi_atm_id, :kategori_atm_id, :min_transaksi_id

  belongs_to :bank
  belongs_to :lokasi_atm
  belongs_to :kategori_atm
  belongs_to :min_transaksi
end
