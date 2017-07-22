require_relative "../../exercises/get_anagram_indices"

RSpec.describe "get_anagram_indices", :type => :request do
  it "should find the needle positions in the haystack" do
    haystack = "asd1das1asd"
    needle = "asd"

    expect(get_anagram_indices(haystack, needle)).to eq([0, 4, 8])
  end

  it "shouldn't find any needles in the haystack" do
    haystack = "asd1das1asd"
    needle = "ppp"

    expect(get_anagram_indices(haystack, needle)).to eq([])
  end

  it "should raise an exception if haystack is not a string" do
    expect { get_anagram_indices(nil, "ppp") }.to raise_exception(ArgumentError)
  end

  it "should raise an exception if needle is not a string" do
    expect { get_anagram_indices("ppp", nil) }.to raise_exception(ArgumentError)
  end

end
