class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :email
      t.string      :display_name
      t.string      :steamid
      t.string      :steam64id
      t.text        :description
      t.string      :avatar_url
      t.string      :first_name
      t.string      :last_name
      t.date        :date_of_birth
      t.string      :sex
      t.string      :password_salt
      t.string      :password_hash

      t.timestamps
    end

  end
end
