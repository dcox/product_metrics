class AddFeatureToMetrics < ActiveRecord::Migration
  def change
    add_reference :metrics, :feature, index: true, foreign_key: true
  end
end
