class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user, index: true
      t.references :choice, index: true

      t.timestamps null: false
    end
    add_foreign_key :answers, :users
    add_foreign_key :answers, :choices
  end
end
