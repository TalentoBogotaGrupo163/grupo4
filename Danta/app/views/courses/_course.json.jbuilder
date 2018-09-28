json.extract! course, :id, :name, :description, :initial_date, :final_date, :cost, :location_id, :entity_id, :person_id, :created_at, :updated_at
json.url course_url(course, format: :json)
