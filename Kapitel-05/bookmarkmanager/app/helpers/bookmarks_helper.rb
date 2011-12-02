# encoding: utf-8
module BookmarksHelper
  def back_to_list
    content_tag(:p, link_to(I18n.t("links.back_to_bookmarks"), bookmarks_path), class: "subNavigation")
  end
end
