class CreateTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :types do |t|

      t.timestamps
    end
  end
end
