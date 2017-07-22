require_relative "../../exercises/best_matching_menus"

RSpec.describe "best_matching_menus", :type => :request do
  it "should find the correct menus" do
    people_preferences = [["Phil", "Italian"], ["Carol", "*"]]
    menu_options = [["Spaghetti", "Italian"], ["Milanesas", "Argentinian"]]

    expect(best_matching_menus(people_preferences, menu_options)).
      to include(
        ["Phil", "Spaghetti"],
        ["Carol", "Spaghetti"],
        ["Carol", "Milanesas"])
  end

  # it "shouldn't find any needles in the haystack" do
  #   haystack = "asd1das1asd"
  #   needle = "ppp"
  #
  #   expect(get_anagram_indices(haystack, needle)).to eq([])
  # end
  #
  # it "should raise an exception if haystack is not a string" do
  #   expect { get_anagram_indices(nil, "ppp") }.to raise_exception(ArgumentError)
  # end
  #
  # it "should raise an exception if needle is not a string" do
  #   expect { get_anagram_indices("ppp", nil) }.to raise_exception(ArgumentError)
  # end

end
