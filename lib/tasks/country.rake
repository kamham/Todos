require 'csv'
namespace :country do
  desc "pull Countries data into database"
  task seed_countries: :environment do

    Country.destroy_all

    CSV.foreach("lib/assets/country.csv", :headers =>true) do |row |
      puts row.inspect
      #create new model instances with the data

    
     
      #create new model instances with the data
          Country.create!(
          country: row[1].to_i,
          code: row[2].to_i,
         latitude: row[3].to_i,
         longitude: row[4].to_i,
      
      )
      
    end
  end

end
