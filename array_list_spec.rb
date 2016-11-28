require_relative 'array_list'

describe ArrayList do
	let(:new_list) { ArrayList.new(3) }

	describe "array list" do

		it "should have an initial size when a new object is made" do
			expect(new_list.size).to eq(3)
		end
	
		it "should add elements to the array" do
			new_list.add("string")
			expect(new_list.size).to eq(4)
		end

		it "should retrieve the elemnt at a given index" do
			new_list.add("new element")
			expect(new_list.get(3)).to eq("new element")
		end

		it "should throw an error when a given index isn't in the array" do
			expect{new_list.get(4)}.to raise_error(RangeError)
		end		

		it "should assign new values to a given index" do
			new_list.set(1, "this is index one")
			expect(new_list.get(1)).to eq("this is index one")
		end

		it "should throw an error when an element doesn't exist" do
			expect{new_list.set(1, nil)}.to raise_error(RangeError)
		end

		it "should inject an element into the middle of a list" do
			new_list.set(1, "this is index one")
			new_list.insert(1, "new number one")
			expect(new_list.get(1)).to eq("new number one")
		end		
	end
end

