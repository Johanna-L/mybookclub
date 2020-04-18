class RenameColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :status
    remove_column :exchanges, :status

    add_column :books, :available, :boolean, default: true
    add_column :exchanges, :ongoing, :boolean, default: true
  end
end
