class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :n
      t.string :narray, :array => true

      t.timestamps
    end
  end
end
