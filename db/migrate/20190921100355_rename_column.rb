class RenameColumn < ActiveRecord::Migration[6.0]
  def up
    rename_column :students, :feedback, :feed
  end
  def down
    rename_column :students, :feed, :feedback
  end
end
