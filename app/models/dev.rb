class Dev < ActiveRecord::Base
  has_many :companies
  has_many :companies, through :freebies

  def received_one?(item_name)
    freebies.any? do |freebie|
      freebie.item_name == item_name
    end
  end

  def give_away(freebie, dev)
    freebie.update(dev: dev) unless freebie.dev != self
  end

end
