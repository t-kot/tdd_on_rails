#coding: utf-8
module NavigationHelpers

  def path_to(page_name)
    case page_name

    when /トップページ/
      '/'
    else
      raise "\"#{page_name}\"にあたるpathが見当たりませんでした．"
    end
  end
end

World(NavigationHelpers)

