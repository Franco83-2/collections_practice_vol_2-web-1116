def begins_with_r(array)
  array.each do |language|
    if language[0] != "r"
      return false
    end
  end
  true
end

def contain_a(array)
  array.select { |element| element.include?("a")}
end

def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
    strings = []
    array.each do |item|
      strings << item if item.is_a?(String)
    end
  strings
end

def count_elements(array)
  array.each do |hashes|
    hashes[:count] = 0
    name = hashes[:name]
    array.each do |hash|
      if hash[:name] == name
        hashes[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  list = []
  array.collect do |element|
    list << element if element[:temperature] == "cool"
  end
  list
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
