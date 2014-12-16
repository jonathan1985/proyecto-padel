class Episode < ActiveRecord::Base
  belongs_to :palas
  has_many :links
end
