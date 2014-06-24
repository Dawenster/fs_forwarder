class PagesController < ApplicationController
  def index
    date = Date.parse(params[:departure_time])
    @link = "http://www.travelocity.com/Flights-Search?trip=oneway&leg1=from:#{params[:departure_airport_code]},to:#{params[:arrival_airport_code]},departure:#{date.strftime('%m') + '%2f' + date.strftime('%d') + '%2f' + date.strftime('%Y')}TANYT&passengers=children:0,adults:1,seniors:0,infantinlap:Y&options=cabinclass:coach,nopenalty:N,sortby:price&mode=search"
    redirect_to @link
  end
end