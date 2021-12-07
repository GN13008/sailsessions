json.array! @rides do |ride|
  json.extract ride, :id, :from, :spot, :title, :description, :nb_of_place, :date
end