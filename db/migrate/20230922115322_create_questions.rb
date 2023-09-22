class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.body :string
      t.tests :references, null: false

      t.timestamps
    end
  end
end
