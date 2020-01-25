class RemoveDoseFromDoses < ActiveRecord::Migration[5.2]
  def change
    remove_column :doses, :dose, :integer
  end
end
