json.data do
  json.entries do
    json.array! @entries do |entry|
      json.call(entry, :fever, :cough, :chest_pain, :sore_throat, :lack_air, :tired, :smell, :taste,
                :nausea, :bone_ache, :covid_contact, :medical_personel)
    end
  end
end
