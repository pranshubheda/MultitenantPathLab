json.extract! patient, :id, :name, :age, :gender, :bloodgroup, :address, :mobileno, :email, :test_name, :created_at, :updated_at
json.url patient_url(patient, format: :json)
