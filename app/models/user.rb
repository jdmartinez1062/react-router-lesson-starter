class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :rememberable, :jwt_authenticatable, jwt_revocation_strategy: self

  has_many :entries
  validates :name, presence: true
  validates :id_type, presence: true, inclusion: { in: %w[CC TI] }, exclusion: { in: [nil] }
  validates :personal_id, inclusion: { in: [true, false] }, exclusion: { in: [nil] }
end
