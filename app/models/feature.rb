class Feature < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { case_sensitive: false }
  belongs_to :user
  has_many :metrics
end
