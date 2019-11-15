class TrelloController < ApplicationController
    def show
        # get all of the cards
        # pass them to the view
        # so the view can draw them

        # SELECT * FROM Cards ORDER BY [Order]
        @reader = Card.all
    end

    def save
        # get the title of the card from the form
        # get the current date/time for the date field
        # maybe set order to 0?

        # INSERT INTO Cards (Title, Date, Order) VALUES (..., ..., ...)
        # Card.new(title: "Some title", date: "some date", order: 5)
        mycard = Card.new
        mycard.title = params["title"]
        mycard.date = Time.new
        mycard.order = 0

        mycard.save

        # Go back to show or index or root, whatever you want to call it
        redirect_to "/"
    end

    def reorder
        # get a string that looks like "1", "2", "3", "5", "4"
        # get each card with that ID
        # set the order of that card to the place in the string
        # save it all
        id_array = params["cardids"].split(",")
        puts "**************************", id_array
        id_array.each_with_index do |id, order|
            # Grab a card with SELECT * FROM Card WHERE Id=id
            # Update the order
            # Save it
            mycard = Card.find(id)
            mycard.order = order
            mycard.save
        end
        
    end
end