class Setting < ActiveRecord::Base
  belongs_to :theme
  has_many :values
  attr_accessible :name, :properties, :field_type, :theme_id, :values_attributes
  accepts_nested_attributes_for :values, allow_destroy: true
  
  def key
    name.gsub(" ","_").downcase
  end
end
