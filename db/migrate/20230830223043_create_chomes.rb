class CreateChomes < ActiveRecord::Migration[7.0]
  def change
    create_table :chomes do |t|
      t.string :name, null: false
      t.references :municipality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
