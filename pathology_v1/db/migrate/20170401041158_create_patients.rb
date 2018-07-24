class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :age
      t.string :gender
      t.string :bloodgroup
      t.string :address
      t.string :mobileno
      t.string :email
      t.string :test_name

      t.timestamps
    end
  end
end
