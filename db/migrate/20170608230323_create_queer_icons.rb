class CreateQueerIcons < ActiveRecord::Migration[5.1]
  def change
    create_table :queer_icons do |t|
      t.string :name
      t.string :quote
      t.string :img_url

      t.timestamps
    end
  end
end
