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

		# test for ArrayList.set(element, index)
		it "should assign new values to a given index" do
			new_list.set("this is index one", 1)
			expect(new_list.get(1)).to eq("this is index one")
		end
	end
end



	# let(:new_array) { FixedArray.new(3) }

	# describe "fixed array size" do
	# 	it "should have a set length" do
	# 		# p new_array.array.length
	# 		expect(new_array.array.length).to eq(3)
	# 	end

	# 	it "should not be a different length" do
	# 		expect(new_array.array.length).not_to eq(4)
	# 	end
	# end