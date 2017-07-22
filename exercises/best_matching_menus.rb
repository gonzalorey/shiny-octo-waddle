def best_matching_menus(people_preferences, menu_options)
  output = []

  people_preferences.each do |person, person_preference|
    menu_options.each do |menu, menu_type|
      output << [person, menu] if person_preference == menu_type || person_preference == "*"
    end
  end

  return output
end
