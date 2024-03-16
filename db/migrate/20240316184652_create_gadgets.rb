class CreateGadgets < ActiveRecord::Migration[5.2]
  def change
    create_table :gadgets do |t|
      t.string :title
      t.text :body
      t.string :gadget_image_id
      t.string :user_id

      t.timestamps
    end
  end
end
