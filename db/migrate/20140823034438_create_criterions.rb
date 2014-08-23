class CreateCriterions < ActiveRecord::Migration
  def change
    create_table :criterions do |t|

      t.timestamps
    end
  end
end
