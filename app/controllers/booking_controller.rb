class BookingController < ApplicationController

	def one
    @newBooking = Booking.new() #Creates a new booking object to be edited
    session[:step] = 1 #Sets the step to 1 for the session.
  end
  def two
    @newCustomer = Customer.new() #Creates a new customer object to be edited.
    if session[:step] == 1 #Check to see if the sessions step is 1. 
      @allBookings = Booking.all #Selects all the bookings and assigns them to the object.
      @newCustomer = Customer.new() #Creates a new customer object to be edited. 
      @booking = params[:booking] #Creates a booking object with the attributes of the entered booking information.
      boatID = @booking.fetch("boat_id") #Sets boatID to the boat_id of the selected boat.
      @boat = Boat.find_by_id(boatID) #Finds the boat that was selected by the user for booking.
      boatBirths = @boat.births #Finds the birth of the selected boat and assigns it to boatBirths
      @numberInParty = @booking.fetch("numberInParty") #Gets the number in party from the entered data.
      @startDate = @booking.fetch("startDate(1i)") + "-" + @booking.fetch("startDate(2i)") + "-" + @booking.fetch("startDate(3i)") #Puts the start date in the format DD-MM-YYY in a string.
      if @numberInParty == "" #Checks to see if the numberInParty was blank.
        flash[:numberError] = "Number of people cannot be blank." #Creates a numberError to be displayed when it is redirected.
        error = true #Sets error to true.
      elsif @numberInParty.to_i > boatBirths #Checks to see if the number of people would be able to fit on the boat they are trying to book.
        flash[:numberError] = "That boat cannot take that many people." #Creates a numberError to be displayed when it is redirected.
        error = true #Sets error to true.
      end
      if @booking.fetch("startDate(1i)") == "" or @booking.fetch("startDate(2i)") == "" or @booking.fetch("startDate(3i)") == "" #Checks to see if any of the date fields weren't filled in.
        flash[:dateError] = "The date fields must be fully filled in." #Creates a dateError to be displayed when it is redirected.
        error = true #Sets the error to true. 
      else
        day = (Date.parse(@startDate)).strftime("%a") #Gets the day from the selected date.
        if @boat.startMonday == true #Checks to see if the boat selected can start on a Monday.
          if day != "Mon" and day != "Fri" #Checks to see if the selected day not a Monday or a Friday. 
            error = true #Sets the error to true.
            flash[:dayError] = "You cannot book that boat on the selected day of the week." #Creates a dateError to be displayed when it is redirected.
          end
        elsif @boat.startThursday == true #Checks to see if the boat selected can start on a Thursday.
          if day != "Thu" and day != "Sun" #
            error = true #Sets the error to true. 
            flash[:dayError] = "You cannot book that boat on the selected day of the week." #Creates a dateError to be displayed when it is redirected.
          end
        elsif @boat.startSaturday == true
          if day != "Sat"
            error = true #Sets the error to true. 
            flash[:dayError] = "You cannot book that boat on the selected day of the week." #Creates a dateError to be displayed when it is redirected.
          end
        end
        if Date.parse(@startDate) < Date.today()
          flash[:dateError] = "You cannot book a boat for in the past."
          error = true
        else
          dateFirst = (Date.parse(@startDate)- 6.days).strftime("%Y/%m/%d")
          dateLast = (Date.parse(@startDate)+ 6.days).strftime("%Y/%m/%d")
          @bookedDate = Booking.where(:startDate => dateFirst..dateLast)
          @bookedDate.each do |booked| 
            if booked.boat_id == boatID.to_i
              flash[:conflict] = "That boat is already booked for the selected date."
              error = true
            end
          end
        end
      end
      if error
        redirect_to :back
      else
        session[:booking] = params[:booking]
        session[:add] = true
        flash[:confirm] = true
        session[:step] = 2
      end
    end
  end
  
  def three
    error = false
    @customer = params[:customer]
    @dateOfBirth = @customer.fetch("dateOfBirth(1i)") + "-" + @customer.fetch("dateOfBirth(2i)") + "-" + @customer.fetch("dateOfBirth(3i)")
  	params[:customer].each do |key, value|
      if value == ""
        flash[:presenceError] = "Please fill out all sections of the form."
        error = true
      end
      if key == "dateOfBirth(1i)"
        if Date.parse(@dateOfBirth) > Date.today()
          flash[:dateError] = "You cannot be born in the future."
          error = true
        end
      end
      if key == "telephoneNumber"
        phoneNum = value.gsub(/\s+/, "")
        if phoneNum.length != 11
          value = phoneNum
          flash[:phoneError] = "Please enter the correct number of digits for your phone number."
          error = true
        end
        if phoneNum.to_i == 0
          flash[:phoneError] = "Telephone numbers cannot contain letters."
          error = true
        end
      end
    end    
    if error
      redirect_to :back
    else
      if session[:add] == true
        session[:customer] = params[:customer]
        @newBooking = Booking.create(session[:booking])
        @newBooking.save()
        session[:bookingID] = @newBooking.id
      	@booking = Booking.find_by_id(session[:bookingID])
      	@customer = @booking.customers.create(params[:customer])
        session[:mainCustomerID] = @customer.id
        @newCustomer = Customer.new()
        session[:partyMembersAdded] = 1
        session[:partyMembers] = @booking.numberInParty
        flash[:confirm] = "Booking created. Please add another party member below."
        if session[:partyMembersAdded] == session[:partyMembers]
          redirect_to "/booking/confirmationEmail"
        end
    	else
      	@newCustomer = Customer.new()
      end
    end
  end
  def addMembers
    error = false
    @customer = params[:customer]
    @dateOfBirth = @customer.fetch("dateOfBirth(1i)") + "-" + @customer.fetch("dateOfBirth(2i)") + "-" + @customer.fetch("dateOfBirth(3i)")
    params[:customer].each do |key, value| 
      if value == ""
        flash[:presenceError] = "Please fill out all sections of the form."
        error = true
      end
      if key == "dateOfBirth(1i)"
        if Date.parse(@dateOfBirth) > Date.today()
          flash[:dateError] = "You cannot be born in the future."
          error = true
        end
      end
    end
    if error
      redirect_to :back
    else
      @booking = Booking.find_by_id(session[:bookingID])
      @customer = @booking.customers.create(params[:customer])
      session[:add] = false
      session[:partyMembersAdded] += 1
      flash[:confirm] = "Party member added. Add next party member."
      if session[:partyMembersAdded] == session[:partyMembers]
        redirect_to "/booking/confirmationEmail"
      end
    end
  end
  def confirmationEmail
    @booking = Booking.find_by_id(session[:bookingID])
    @customer = Customer.find_by_id(session[:mainCustomerID])
    @boat = Boat.find_by_id(@booking.boat_id)
    flash[:email] = @customer.emailAddress
    respond_to do |format|
      CustomerMailer.confirmationEmail(@customer, @booking, @boat)
      format.html { redirect_to("/booking/finished", :notice => 'User was successfully created.') }
      format.json { render :json => "/booking/finished", :status => :created, :location => @user }
    end
  end
  def finished
  end
end