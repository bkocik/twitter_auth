module NavigationHelpers

  def path_to(page_name)
    case page_name
    
    when /the auth complete page/
      auth_complete_path

    when /the auth page/
      auth_path

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in features/support/paths.rb"
    end
  end
end

World(NavigationHelpers)
