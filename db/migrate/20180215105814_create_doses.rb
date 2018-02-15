class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.string :description
      t.references :cocktail, foreign_key: true
      t.refrences :ingredient

      t.timestamps
    end
  end
end
