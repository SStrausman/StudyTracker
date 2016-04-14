module ApplicationHelper

	def sort_by_column(column, title = nil)
	  title ||= column.titleize
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  link_to title, {:sort => column, :direction => direction}
	end

end
