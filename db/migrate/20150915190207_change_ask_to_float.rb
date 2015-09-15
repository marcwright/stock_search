class ChangeAskToFloat < ActiveRecord::Migration
  def change
    change_column :stocks, :ask, :float
  end
end
