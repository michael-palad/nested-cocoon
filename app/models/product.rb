class Product < ApplicationRecord
  has_many :parts
  
  accepts_nested_attributes_for :parts, reject_if:
    lambda {|attributes| attributes["name"].blank? }, allow_destroy: true
end
