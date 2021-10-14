module ApplicationHelper

  def title(page_title ='')
    base = "themini.blog"
    if page_title.empty?
      base
    else
      page_title + " | " + base
    end
  end
end
