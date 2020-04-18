class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :summary
      t.integer :year
      t.string :status, default: "available"
      t.references :owner, null: false, foreign_key: {to_table: :people}

      t.timestamps
    end
  end
end
