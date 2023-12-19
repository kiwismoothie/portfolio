class CreatePros < ActiveRecord::Migration[7.1]
  def change
    create_table :pros do |t|

      t.timestamps
    end
  end
end
