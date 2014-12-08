require 'yaml'

class TransformArray
  def self.index_by_country_and_state input
    output = Hash.new
    input.each do |interior_hash|
      if output.has_key?("#{interior_hash[:state]}, #{interior_hash[:country]}")
        output["#{interior_hash[:state]}, #{interior_hash[:country]}"] << interior_hash
      else
        output["#{interior_hash[:state]}, #{interior_hash[:country]}"] = [interior_hash]
      end
    end
    output
  end
end

print TransformArray.index_by_country_and_state YAML.load_file('../data/amusement_parks.yml')
