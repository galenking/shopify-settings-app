class Theme < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :user_id, :settings_attributes
  has_many :settings
  accepts_nested_attributes_for :settings, allow_destroy: true
end
