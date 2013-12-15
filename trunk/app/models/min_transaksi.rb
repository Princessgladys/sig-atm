class MinTransaksi < ActiveRecord::Base
  attr_accessible :min_transaksi

  has_many :atms
end
