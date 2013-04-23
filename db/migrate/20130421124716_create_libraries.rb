class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.references :games
      t.references :user

      t.timestamps
    end
  end
end
