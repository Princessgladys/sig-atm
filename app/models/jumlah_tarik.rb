class JumlahTarik < ActiveRecord::Base
  attr_accessible :nominal

  has_many :lokasi_atms
end
