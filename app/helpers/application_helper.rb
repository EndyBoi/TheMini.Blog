module ApplicationHelper

  def title(page_title ='')
    base = "Iron Twitter"
    if page_title.empty?
      base
    else
      page_title + " | " + base
    end
  end
end
