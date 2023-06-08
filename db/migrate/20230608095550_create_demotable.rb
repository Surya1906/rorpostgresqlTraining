class CreateDemotable < ActiveRecord::Migration[7.0]
  def change
    create_table :demotables do |t|

      t.timestamps
    end
  end
end
