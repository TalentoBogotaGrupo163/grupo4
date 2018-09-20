json.extract! course, :id, :name, :description, :initial_date, :final_date, :cost, :locations_id, :entities_id, :people_id, :created_at, :updated_at
json.url course_url(course, format: :json)
