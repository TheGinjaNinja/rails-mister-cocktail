class DropRemoveDescriptionFromIngredientsTableAttemptTwo < ActiveRecord::Migration[5.2]
  def up
    drop_table :remove_description_from_ingredients
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
