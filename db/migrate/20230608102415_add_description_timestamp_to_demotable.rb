class AddDescriptionTimestampToDemotable < ActiveRecord::Migration[7.0]
  def change
    add_column :demotables, :description, :text
    add_column :demotables, :created_at, :datetime
    add_column :demotables, :updated_at, :datetime
  end
end
