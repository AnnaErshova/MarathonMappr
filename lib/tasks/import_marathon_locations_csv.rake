require 'csv'
namespace :import_marathon_locations_csv do
  task :create_locations => :environment do
    csv_text = File.read('//Users/annaershova/Desktop/Mappr/lib/assets/marathon_oct_15.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Marathon.create!(row.to_hash)
    end
  end
end 