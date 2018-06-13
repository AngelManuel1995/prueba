json.extract! curso, :id, :id_materia, :nombre, :num_creditos, :cupo_max, :cupo_min, :created_at, :updated_at
json.url curso_url(curso, format: :json)
