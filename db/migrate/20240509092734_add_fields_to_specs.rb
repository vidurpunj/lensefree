class AddFieldsToSpecs < ActiveRecord::Migration[7.1]
  def change
    add_column :specs, :title, :string 
    add_column :specs, :description, :text 
  end
end
