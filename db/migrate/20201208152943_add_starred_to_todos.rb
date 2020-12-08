class AddStarredToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :starred, :boolean, default: false
  end
end
