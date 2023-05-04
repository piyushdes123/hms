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
  
        redirect_to "/"
      else
        render :new, status: :unprocessable_entity
      end
    end
  

    # def create
    #   @roomtype = Roomtype.find(params[:roomtype_id])
    #   @room = @roomtype.rooms.create(room_params)
    #   redirect_to roomtype_path(@roomtype)
    # end




     def show
        @room = Room.find(params[:id])
        flash[:notice] = 'This is Your Product List'
      end
  
      def edit
        @room = Room.find(params[:id])
       end
    
  
       def update
        @room = Room.find(params[:id])
        if @room.update(roomtype_params)
          flash[:notice] = 'Product has been Updated Successfully!'   
  
  
          redirect_to "/"
  
        else
          render :edit, status: :unprocessable_entity
        end
      end
      
  private

  def room_params
    params.require(:room).permit(:roomtype_id, :roomnumber, :description, :status)
  end
  
  end
