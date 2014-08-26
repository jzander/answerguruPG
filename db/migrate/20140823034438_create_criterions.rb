class CreateCriterions < ActiveRecord::Migration
  def change
    create_table :criterions do |t|
      t.string  "text"
      t.integer "importance"

      t.timestamps
    end
  end
end
