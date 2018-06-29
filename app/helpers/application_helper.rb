module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "SuiteSparse Matrix Collection"
    if page_title.empty? || page_title == "Index"
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def paginate(collection, params= {})
    will_paginate collection, params.merge(:renderer => WillPaginateHelper::LinkRenderer)
  end

  def filterrific_options()
    opts = {
        :ascending_indicator => '<span class="fas fa-sort-up"></span>'.html_safe,
        :descending_indicator => '<span class="fas fa-sort-down"></span>'.html_safe,
        :html_attrs => {}
      }
  end

end
