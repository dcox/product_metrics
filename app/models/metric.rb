class Metric < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => { case_sensitive: false }
  belongs_to :feature
end
