require 'csv'

class Post < ApplicationRecord
    def self.to_csv
        attributes = %w{title body done_homework}
    
        CSV.generate(headers: true) do |csv|
          csv << attributes
    
          all.each do |posts|
            csv << attributes.map{ |attr| posts.send(attr) }
          end
        end
    end
end
