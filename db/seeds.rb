require 'csv'

CSV.foreach('db/municipality.csv', headers: true) do |row|
  Municipality.find_or_create_by(name: row['区市町名'])
end

CSV.foreach('db/chome.csv', headers: true) do |row|
  Chome.find_or_create_by(
    name: row['町丁目名'],
    municipality_id: row['区市町名'],
  )
end
