class AddOwnerToBook < ActiveRecord::Migration[6.0]
  def change
    add_reference :books, :owner, foreign_key: {to_table: :people}
  end
end
