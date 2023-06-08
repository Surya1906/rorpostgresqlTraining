class DropDemotable < ActiveRecord::Migration[7.0]
  def change
    drop_table :demotables
  end
end
