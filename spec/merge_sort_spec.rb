require "minitest/autorun"
require "minitest/spec"

require_relative "../lib/mergeSort.rb"

describe "It Sorts an un ordered array" do

  before do
  end

  describe "The object sorts an array upon initialization" do
    # array = Array.new(rand(1000))
    # array.size.times {array << rand(1000)}
    # @unsorted_array = array.compact
    @unsorted = [4,2,7,1,9,8,3,5,0]
  sorted = MergeSort.new.sort(@unsorted)
    print sorted
    # sorted.must_be_same_as @unsorted_array.sort!
  end

  after do
    @unsorted_array.destroy
  end
end
