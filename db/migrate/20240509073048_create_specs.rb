class CreateSpecs < ActiveRecord::Migration[7.1]
  def change
    create_table :specs do |t|
      t.references :specs_type, null: false, foreign_key: true
      t.string :front
      t.string :left
      t.string :right
      t.string :back

      t.timestamps
    end
  end
end
