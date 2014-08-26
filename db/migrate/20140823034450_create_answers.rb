class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string  "text"
      t.integer "rating"

      t.timestamps
    end
  end
end
