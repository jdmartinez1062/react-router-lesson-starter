class Entry < ApplicationRecord
  belongs_to :user

  validates :fever, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :cough, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :chest_pain, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :sore_throat, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :lack_air, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :tired, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :smell, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :taste, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :nausea, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :bone_ache, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :covid_contact, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
  validates :medical_personel, presence: true, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
end
