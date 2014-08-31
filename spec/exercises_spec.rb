require "rspec"
require "pry-byebug"
require "rubygems"
require_relative "../exercises.rb"

describe Exercises do

describe ".ex0" do 
  it "triples length of a string" do
  result = Exercises.ex0("ha")

  expect(result).to eq ("hahaha")
  end

  it "returns nope for the string wishes" do
    result = Exercises.ex0("wishes")

    expect(result).to eq("nope")
  end
end

describe ".ex1" do
  it "returns the number of elements in an array" do
    result = Exercises.ex1([1, "alex", 56, "danny"])

    expect(result).to eq(4)
  end
end

describe ".ex2" do
  it "returns second element in array" do
    result = Exercises.ex2([1, "alex", 77, "danny"])

    expect(result).to eq("alex")
  end
end

describe ".ex3" do
  it "sums the elements in an array" do
    result = Exercises.ex3([1, 3, 5, 7, 9])

    expect(result).to eq(25)
  end

  # it "returns false if given an array with strings" do
  #   result = Exercises.ex3([1, "alex", 77, "danny"])

  #   expect(result).to eq(false)
  # end
end

describe ".ex4" do
   it "returns the max number in a given array" do
    result = Exercises.ex4([1, 3, 5, 7, 9])

    expect(result).to eq(9)
  end
end

RSpec.describe ".ex5" do #Saw solution in class
   it "iterates through and puts each element in an array" do
    arr = %w(party party party)
    result = Exercises.ex5(arr)
    STDOUT.should_receive(:puts).with("party")
    STDOUT.should_receive(:puts).with("party")
    STDOUT.should_receive(:puts).with("party")
    Exercises.ex5(arr)
  end
  end
end

describe ".ex6" do
  it "updates the last item in an array to panda" do
  result = Exercises.ex6(["lions", "tigers", "bears"])

  expect(result[-1]).to eq("panda")
  end

  it "updates the last item to GODZILLA if panda is already last in the array" do
  result1 = Exercises.ex6(["lions", "panda", "tigers", "bears"])
  result2 = Exercises.ex6(["lions", "tigers", "bears", "panda"])

    expect(result1[-1]).to eq("panda")
    expect(result2[-1]).to eq("GODZILLA")
  end
end

describe ".ex7" do
  it "checks if a string exists in an array" do
  array = ["Garbage Lady", 8, 6, 7]
  result = Exercises.ex7(array, "Garbage Lady")

  expect(array[-1]).to eq("Garbage Lady") 
  end
end

RSpec.describe ".ex8" do #Saw solution in class
  it "iterates through an array of hashes to print name an occupation " do
  hasharr = [{:name => "Jane", :occupation => "Garbage Lady"}]
  result = Exercises.ex8(hasharr)
  Exercises.should_receive(:print).with("Jane is a Garbage Lady")
  Exercises.ex8(result)
  end
end

describe ".ex9" do #Saw solution in class
  it "should return true if the year is a leap year" do
    a = 2000
    b = 1900
    c = 2016
    result1 = Exercises.ex9(a)
    result2 = Exercises.ex9(b)
    result3 = Exercises.ex9(c)

    expect(result1).to be_true 
    expect(result2).to be_false
    expect(result3).to be_true
  end
end

describe ".ex10" do #Saw solution in class
  it "should return happy hour from 4-6 p.m." do
    eleven = Time.parse("11 am")
    fivethirty = Time.parse("5:30 pm")

    Time.stub(:now).and_return(fivethirty)
    expect(Exercises.ex10).to eq("happy hour")

    Time.stub(:now).and_return(eleven)
    expect(Exercises.ex10).to eq("normal")

  end
end













