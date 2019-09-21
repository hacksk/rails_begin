class Add < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :feedback, :string
  end
end
