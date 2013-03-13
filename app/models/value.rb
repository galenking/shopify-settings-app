class Value < ActiveRecord::Base
  belongs_to :setting
  attr_accessible :properties, :name, :setting_id
end
