require_relative 'array_list'

describe ArrayList do
	let(:new_list) { ArrayList.new(3) }

	# test for ArrayList.new(size)
	describe "array list size" do
		it "should have an initial size when a new object is made" do
			expect(new_list.length).to eq(3)
		end
	end

	# test for ArrayList.add(element)

	# test for ArrayList.get(index)

	# test for ArrayList.set(element, index)

	# test for ArrayList.length
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