require 'csv'
require 'prawn'
class Post < ApplicationRecord
  
  belongs_to :user
  
  def self.done
    where(done_homework: true)
  end

  def self.pending
    where(done_homework: false)
  end

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
