class CreateBundles < ActiveRecord::Migration[7.0]
  def change
    create_table :bundles do |t|
      t.string :name

      t.timestamps
    end
  end
end
