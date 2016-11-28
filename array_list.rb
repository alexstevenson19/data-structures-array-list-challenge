class ArrayList

	attr_reader :array_list

	def initialize(size)
		@array_list = FixedArray.new(size)
	end

	def add(element)
		@array_list.array.push(element)
	end

	def get(index)
		if index > self.size
			raise RangeError, "out of bounds"
		else
			@array_list.array[index]
		end
	end

	def set(index, element)
		if element == nil
			raise RangeError, "element doesn't exist"
		else
			@array_list.array[index] = element
		end
	end

	def insert(index, element)
		if index > self.size.to_i + 1
			raise RangeError, "out of bounds"
		else
			@array_list.array.insert(index, element)
		end
	end

	def size
		@array_list.array.length
	end

end



# Below is Fixed Array class from previous challenge---------------------

class FixedArray

	attr_reader :array

	def initialize(size)
		@array = Array.new(size)
	end

	def set(indx, value)
		index_limit = @array.length - 1
		if indx > index_limit
		 raise RangeError, "out of bounds"
	 else
	 	@array[indx] = value
	 end 
	end

	def get(indx)
		index_limit = @array.length - 1
		if indx > index_limit
		 raise RangeError, "out of bounds"
	 else
	 	@array[indx]
	 end 
	end

end
