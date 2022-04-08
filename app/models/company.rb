class Companies < ActiveRecord::Base
  has_many :freebies
  has_many :devs through: :freebies

  def give_freebie(dev, time, value)
    Freebies.create(item_name: item_name, value: value, dev: dev, company: self)
  end

  def self.oldest_company
    Company.order(:founding_year).first
  end

end
