class CreateMetrics < ActiveRecord::Migration
  def change
    create_table :metrics do |t|
      t.string :name
      t.string :definition

      t.timestamps null: false
    end
  end
end
