class CreateDeclarations < ActiveRecord::Migration[6.1]
  def change
    create_table :declarations do |t|
      t.string :declaration
      t.text :comment

      t.timestamps
    end
  end
end
