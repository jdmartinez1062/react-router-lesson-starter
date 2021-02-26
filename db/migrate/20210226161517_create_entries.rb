class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :user, null: false, foreign_key: true

      t.boolean :fever, null: false, default: false
      t.boolean :cough, null: false, default: false
      t.boolean :chest_pain, null: false, default: false
      t.boolean :sore_throat, null: false, default: false
      t.boolean :lack_air, null: false, default: false
      t.boolean :tired, null: false, default: false
      t.boolean :smell, null: false, default: false
      t.boolean :taste, null: false, default: false
      t.boolean :nausea, null: false, default: false
      t.boolean :bone_ache, null: false, default: false
      t.boolean :covid_contact, null: false, default: false
      t.boolean :medical_personel, null: false, default: false

      t.timestamps
    end
    
  end
end
