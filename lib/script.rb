class TransformArray
  def self.index_by_id input
    output = Hash.new
    input.each do |interior_hash|
      output[interior_hash[:id]] = interior_hash
    end
    output
  end

  def self.index_by_country input
    output = Hash.new
    input.each do |interior_hash|
      if output.has_key?(interior_hash[:country])
        output[interior_hash[:country]] << interior_hash
      else
        output[interior_hash[:country]] = [interior_hash]
      end
    end
    output
  end

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
