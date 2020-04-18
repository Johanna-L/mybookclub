class RenameReferences < ActiveRecord::Migration[6.0]
  def change
    remove_reference :books, :owner

    add_reference :books, :owner, foreign_key: {to_table: :people}
  end
end
