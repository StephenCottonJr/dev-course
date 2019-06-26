class QuotesController < ApplicationController

# Explanation
# --------------------

# < ApplicationController
## < specifies inheritence functionality
## ApplicationController is then inheriting from: < ActionController::Base
## ActionController is a Module
## Base is a class
## Both are defined by Rails framework


# Code
# --------------------
  def index
    @quote = Quote.order("RANDOM()").first
  end

# Explanation
# --------------------

# Narative
## Whenever a view wants to display something from Quote Object (Table)
## We need an instance variable to 'hold' this data
## 

# def index
## index is an 'ACTION' / 'Method'
## code is defining action when controller#Action: "Quotes#index" is called

# @quote =
## this is an Instance Variable
## it is required to temporarily store a value by the VIEW
## ANY variable set by controller, which is used by VIEW, MUST begin @....

# = Quote
## Quote is the Class / Model / Object / (table) -- on which activity is performed

# .order("RANDOM()").first
## both .order & .first are built-in methods coming from rails
## "RANDOM" is a known function in SQL


# Code
# --------------------
  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong> Could not save </strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

# Explanation
# --------------------

# Narative

# def create
## create is an 'ACTION' / 'Method'
## code is defining what occurs when controller#action 'quotes#create' is called

# @quote =
## @quote is an Instance Variable
## This is required for View to temporarily hold a value

# = Quote.
## This is the Class / Model / Object / (table) on which activity will take place

# .create()
## This is a method -- (likely built-in to rails) ------------> Confirm

# (quote_params)
## This is method / v



  private

  def quote_params
    params.require(:quote).permit(:saying, :author)

  end

end
