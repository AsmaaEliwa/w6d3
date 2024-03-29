class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :body , null:false 
      t.timestamps
      t.references :author , null:false ,foreign_key: {to_table: :users}
      t.references :artwork , null:false , foreign_key:true
    end

  end
end
