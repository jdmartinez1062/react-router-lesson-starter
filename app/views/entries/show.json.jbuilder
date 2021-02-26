json.data do
  json.entry do
    json.call(@entry, :fever, :cough, :chest_pain, :sore_throat, :lack_air, :tired, :smell, :taste,
              :nausea, :bone_ache, :covid_contact, :medical_personel)
  end
end
