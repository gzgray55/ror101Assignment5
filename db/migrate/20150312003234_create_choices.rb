class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.references :question, index: true
      t.string :text

      t.timestamps null: false
    end
    add_foreign_key :choices, :questions
  end
end
