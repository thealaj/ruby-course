require "rspec"
require "pry-byebug"
require "rubygems"
require_relative "../exercises.rb"

describe "Exercise O" do 
  it "triples length of a string" do
  result = Exercises.ex0("ha")

  expect(result).to eq ("hahaha")
  end

  it "returns nope for the string wishes" do
    result = Exercises.ex0("wishes")

    expect(result).to eq("nope")
  end
end

# decribe "Exercise 1" do
#   it "returns the number of elements in an array" do
#     