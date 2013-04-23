class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :display_name
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.string :sex
      t.references :library
      t.references :profiles

      t.timestamps
    end
  end
end
