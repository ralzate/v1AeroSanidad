json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :second_name, :first_surname, :second_surname, :email, :type_document, :document, :days_age, :months_age, :years_age, :birthdate, :gender, :profession, :blood_type, :nacionality, :eps_id, :arl_id, :address, :condition, :accompanist_name, :relationship, :phone, :city_id, :user_id
  json.url patient_url(patient, format: :json)
end
