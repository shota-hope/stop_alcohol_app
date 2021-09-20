class AddNicknameToDeclarations < ActiveRecord::Migration[6.1]
  def change
    add_column :declarations, :nickname, :string
  end
end
