class CreateCorrectChoices < ActiveRecord::Migration
  def change
    create_table :correct_choices do |t|
      t.references :choice, index: true
      t.references :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :correct_choices, :choices
    add_foreign_key :correct_choices, :questions
  end
end
