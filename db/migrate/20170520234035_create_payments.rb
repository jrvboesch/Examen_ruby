class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :loan_id
      t.integer :pay

      t.timestamps
    end
  end
end
