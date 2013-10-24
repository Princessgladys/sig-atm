class Bank < ActiveRecord::Base
  attr_accessible :nama_bank

  has_many :lokasi_atms
end
