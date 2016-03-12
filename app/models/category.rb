class Category < ActiveRecord::Base
  belongs_to :venue
  has_many :sub_categories
end
