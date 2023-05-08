class RoomsController < ApplicationController

    def index
      @rooms = Room.all
    end
  
    def new
      @room = Room.new
    end
  
    def create
      @room = Room.new(room_params)
      if @room.save
        flash[:success] = 'Product has been added Successfully!'   
  
        redirect_to  rooms_path	
      else
        render :new, status: :unprocessable_entity
      end
    end
  
     def show
        @room = Room.find(params[:id])
        flash[:notice] = 'This is Your Product List'
      end
  
      def edit
        @room = Room.find(params[:id])
       end
    
  
       def update
        @room = Room.find(params[:id])
        if @room.update(room_params)
          flash[:notice] = 'Product has been Updated Successfully!'   
  
  
          redirect_to rooms_path
  
        else
          render :edit, status: :unprocessable_entity
        end
      end
      
  private

  def room_params
    params.require(:room).permit(:roomtype_id, :roomnumber, :description, :status)
  end
  
  end
