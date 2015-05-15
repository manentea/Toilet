require 'csv'
require 'active_support'
require_relative 'model'

module Parser
  def self.parse(filename)
    CSV.open(filename, :headers => true, :header_converters => :symbol) do |csv|
      csv.map { |row| RestRoom.new(row.to_hash.except(:OpenYearRound, :Comments))}
    end
  end

  def self.save(filename, thing_to_save)
    # thing_to_save.each {|row| row.name + 'Park' if !row.name.include?('Park')}
    CSV.open(filename, 'wb') do |csv|
      csv << ['name','location','handicap','borough']
      thing_to_save.each {|row| csv << [(row.name.include?('Park') ? row.name : (row.name + ' Park')), row.location, row.handicap, row.borough]}
    end
  end

  def self.coord_save(filename, thing_to_save)
    CSV.open(filename, 'wb') do |csv|
    end

  end
end

# p Parser.parse('test.csv')

# p arr.map {|toilet| toilet.location}
