class LokasiAtm < ActiveRecord::Base
  attr_accessible :bank_id, :jumlah_tarik_id, :lat, :lng, :nama_atm
end
