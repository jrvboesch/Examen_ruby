class ChangeType < ActiveRecord::Migration[5.0]
  def change
     rename_column :table_name, :type, :loantype
  end
end
