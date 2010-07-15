module ListingsHelper
  def category_list_item(category, selected_categories)
  	if !selected_categories.nil? and selected_categories.include?(category.name)
  		checked = true
		else
			checked = false
		end
		
		ret = ""
  	ret += check_box_tag('categories[]', category.name, checked) 
  	ret += category.name
  	ret += ""
	end
end
