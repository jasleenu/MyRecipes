class CreateRecipeStyles < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_styles do |t|
      t.integer :recipe_id, :style_id
      t.timestamps
    end
  end
end
