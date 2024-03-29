class Atm < ActiveRecord::Base
  attr_accessible :lat, :lng, :nama_atm, :icon, :picture, :bank_id, :lokasi_atm_id, :kategori_atm_id, :min_transaksi_id, :user_id, :is_approved

  belongs_to :bank
  belongs_to :lokasi_atm
  belongs_to :kategori_atm
  belongs_to :min_transaksi
  belongs_to :user

  mount_uploader :icon, ImageUploader
  mount_uploader :picture, ImageUploader

  def self.filtering(filter)
    results = Atm
    return results if filter.nil?

    results = results.where("is_approved =?", filter[:is_approved]) if !filter[:is_approved].blank?

    results
  end
end
