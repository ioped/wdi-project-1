class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :description
      t.string :avatar
      t.references :user

      t.timestamps
    end
  end
end
