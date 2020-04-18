class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.references :book, null: false, foreign_key: true
      t.references :person, null: false, foreign_key: true
      t.string :status, default: "ongoing"

      t.timestamps
    end
  end
end
