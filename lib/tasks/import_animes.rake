namespace :import do
    desc "importing animes from csv file"
    task animes: :environment do
        require 'csv'

        csv_text = File.read('anime.csv')
        puts csv_text
        csv = CSV.parse(csv_text, headers: true)
        csv.each do |row|
            Anime.create!(row.to_hash)
        end
    end
end