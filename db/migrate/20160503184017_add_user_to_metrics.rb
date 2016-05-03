class AddUserToMetrics < ActiveRecord::Migration
  def change
    add_reference :metrics, :user, index: true, foreign_key: true
  end
end
