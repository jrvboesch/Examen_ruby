class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.string :name
      t.integer :loan
      t.string :type

      t.timestamps
    end
  end
end
