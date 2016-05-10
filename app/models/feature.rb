class Feature < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  belongs_to :user
  has_many :metrics
end
