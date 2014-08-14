class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.references :ingredient, index: true
      t.references :cocktail, index: true
      t.string :amount

      t.timestamps
    end
  end
end
