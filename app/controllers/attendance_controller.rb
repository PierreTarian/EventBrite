class AttendanceController < ApplicationController
    def new
        @total = Event.find(params[:event_id]).price
      end
    
      def create
        # Amount in cents
        
        redirect_to event_path(params[:event_id])
      end
    end
