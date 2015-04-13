class CreateGeneratedNames < ActiveRecord::Migration
  def change
    create_table :generated_names do |t|
      t.string :first_name
      t.string :surname

      t.timestamps null: false
    end
  end
end
