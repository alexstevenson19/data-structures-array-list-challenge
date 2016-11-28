class ArrayList

	attr_reader :array_list

	def initialize(size)
		@array_list = FixedArray.new(size)
	end

	def add(element)
		@array_list.array.push(element)
	end

	def get(index)
		@array_list.array[index]
	end

	def set(element, index)
	end

	def length
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
