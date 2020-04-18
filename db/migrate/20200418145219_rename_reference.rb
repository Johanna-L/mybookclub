class RenameReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference :books, :owner
  end
end
