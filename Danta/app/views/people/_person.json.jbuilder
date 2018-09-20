json.extract! person, :id, :identification, :name, :address, :phone, :email, :age, :curriculum_vitae, :created_at, :updated_at
json.url person_url(person, format: :json)
