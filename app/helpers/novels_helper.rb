module NovelsHelper
	def has_next_page(page_num)
		@novel_count = Novel.all.length
		if @novel_count <= page_num * 6
			return false
		end
		
		return true
	end
	
	def has_previous_page(page_num)
		if page_num != 1
			return true
		end
		return false
	end
end

