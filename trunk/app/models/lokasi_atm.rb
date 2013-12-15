class LokasiAtm < ActiveRecord::Base
  attr_accessible :nama_lokasi

  has_many :atms
end
