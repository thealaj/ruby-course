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

Rspec.describe ".ex5" do
   xit "iterates through and puts each element in an array" do
    result = Exercises.ex5(["party"])
 specify { expect { print('party') }.to output.to_stdout }
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


end













