# Goal:
## Add a link to the navigation bar
## Link will navigate to contact page
## Add second link to navigation bar
## Navigate to another page which will display authors
## Do this now.

class PagesController < ApplicationController

  def contact
  end

  def author
    @author = Quote.order("RANDOM()").first
  end

  def about
  end

end









