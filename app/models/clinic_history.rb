class ClinicHistory < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  has_many :personal_histories
  has_many :physical_exams
  has_many :system_reviews
  has_many :additional_informations
end
