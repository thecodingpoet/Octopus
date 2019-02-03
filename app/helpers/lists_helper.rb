module ListsHelper
  def format_list(list)
    # return list in correct format for select_tag
    list.map{|n| [n[1], "#{n[0]}::#{n[1]}"]}
  end
end
