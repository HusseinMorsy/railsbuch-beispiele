class Product < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validate :price_must_be_greater_than_purchase_price

  default_scope where(enabled: true).order("created_at")
  scope :preiswert, where("price < 500").reorder("price")
  scope :deaktiviert, unscoped.where(enabled: false)
  scope :neuste, lambda { |anzahl=7| where("created_at >= ?", Date.today - anzahl.days) }
   # def self.preiswert
  #   where("price < 500").order("price")
  # end
  #   
  # def self.neuste
  #   where(["created_at > ?", Date.today - 7.days])
  # end
  
  private
  
  def price_must_be_greater_than_purchase_price
    if price.present?  && purchase_price.present? &&  purchase_price > price
      errors.add(:purchase_price, "can't be higher than price")
    end
  end
end