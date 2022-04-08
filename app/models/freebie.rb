class Freebie < ActiveRecord::Base
  belongs_to :dev
  has_many:company

  def prints_details
    "#{dev} owns a #{item_name} from #{company.name}"
  end
end
