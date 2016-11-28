require_relative 'array_list'

describe ArrayList do
	let(:new_list) { ArrayList.new(3) }

	describe "array list size" do
		# test for ArrayList.new(size)
		it "should have an initial size when a new object is made" do
			expect(new_list.length).to eq(3)
		end
	
		# test for ArrayList.add(element)
		it "should add elements to the array" do
			new_list.add("string")
			expect(new_list.length).to eq(4)
		end
		# test for ArrayList.get(index)
		it "should retrieve the elemnt at a given index" do
			new_list.add("new element")
			expect(new_list.get(3)).to eq("new element")
		end

		it "should throw an error when a given index isn't in the array" do
			expect{new_list.get(4)}.to raise_error(RangeError)
		end		

		# test for ArrayList.set(element, index)
		it "should assign new values to a given index" do
			new_list.set(1, "this is index one")
			expect(new_list.get(1)).to eq("this is index one")
		end

		it "should throw an error when an element doesn't exist" do
			expect{new_list.set(1)}.to raise_error(StandardError)
		end				
	end
end

