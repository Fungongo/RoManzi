module NovelsHelper
	def has_next_page
		if @novels.count <= @page_num.to_i * 6
			return false
		end
		
		return true
	end
	
	def has_previous_page
		if @page_num.to_i != 1
			return true
		end
		return false
	end
end

