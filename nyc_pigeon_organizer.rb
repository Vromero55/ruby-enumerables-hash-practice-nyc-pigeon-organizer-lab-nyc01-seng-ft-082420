def nyc_pigeon_organizer(data)
final_hash = data.each_with_object({}) do |(key, value), final_array|
  value.each do |innerkeys, names|
    names.each do |name|
      final_array[name].uniq
      final_array[name][key].uniq
      final_array[name][key].push(innerkeys.to_s)
    end
  end
end 
