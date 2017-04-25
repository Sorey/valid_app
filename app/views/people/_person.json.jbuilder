json.extract! person, :id, :name, :email, :town, :birth_day, :created_at, :updated_at
json.url person_url(person, format: :json)
