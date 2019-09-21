class Change < ActiveRecord::Migration[6.0]
  def up
    change_column :students, :feedback, :text
  end
  def down
    change_column :students, :feedback, :string
  end
end
