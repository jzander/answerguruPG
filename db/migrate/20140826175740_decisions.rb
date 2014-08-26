class Decisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.string  "text"
    end
    add_reference :decisions, :user, index: true
  end
end
