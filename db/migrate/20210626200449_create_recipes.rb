class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :recipename
      t.text :description
      t.text :summary
      t.references :chef, null: false, foreign_key: true

      t.timestamps
    end
  end
end
