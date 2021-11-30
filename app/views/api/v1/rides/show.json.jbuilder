# simple json extractof
# json.array! @restaurants do |restaurant|
#   json.extract! restaurant, :id, :name, :address
# end

json.extract! @ride, :id, :from, :spot, :start_time, :end_time, :title, :description, :nb_of_place, :date