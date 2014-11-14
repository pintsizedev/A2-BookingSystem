class HomeController < ApplicationController
  def index
  end
  def searching
  end
  def boatInfo
    @boats = Boat.order("boatName")
  end
  def search
    boatQuery = ""
    dateQuery = ""
    @boats = nil
    @booked = nil
    startDay = params[:startDay].to_i
    if startDay == 1
      boatQuery += "startMonday = 1 AND "
    elsif startDay == 2
      boatQuery += "startThursday = 1 AND "
    elsif startDay == 3
      boatQuery += "startFriday = 1 AND "
    elsif startDay == 4
      boatQuery += "startSaturday = 1 AND "
    elsif startDay == 5
      boatQuery += "startSunday = 1 AND "
    end
    params.each do |key, value|
      if Boat.column_names.include? key and not value.blank?
        if key == "births"
          boatQuery += "births >= " + params[:births] + " AND "
        else
         boatQuery += "#{key} = #{value} AND "
       end
      else
        if key == "datepicker"
          if not value.blank?
            dateQuery = true
          end
        end
      end
    end
    if boatQuery.length > 0
      @boats = Boat.order("boatName").where(boatQuery[0..-5])
      if dateQuery == true
        dateRaw = Date.parse(params[:datepicker])
        dateLast = dateRaw + 6.days
        dateLast = dateLast.strftime("%Y/%m/%d")
        dateFirst = dateRaw - 6.days
        dateFirst = dateFirst.strftime("%Y/%m/%d")
        @booked = Booking.where(:startDate => dateFirst..dateLast)
        @dateSearch = true
      end
    else
      flash[:error] = "You didn't select anything to search for."
      redirect_to :back
    end
  end
  def viewBoat
    query = "id = " + params[:id]
    @boats = Boat.order("boatName").where(query)
    flash[:boatID] = params[:id]
  end
end
