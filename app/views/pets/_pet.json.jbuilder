json.extract! pet, :id, :name, :owner_id, :born_on, :species, :breed, :image_url, :created_at, :updated_at
json.url pet_url(pet, format: :json)
