class RoomtypesController < ApplicationController

  def index
    @roomtypes = Roomtype.all
  end

  def new
    @roomtype = Roomtype.new
  end

  def create
    @roomtype = Roomtype.new(roomtype_params)
    if @roomtype.save
      flash[:success] = 'Product has been added Successfully!'   

      redirect_to  "/"
    else
      render :new, status: :unprocessable_entity
    end
  end

   def show
      @roomtype = Roomtype.find(params[:id])
      flash[:notice] = 'This is Your Product List'
    end

    def edit
      @roomtype = Roomtype.find(params[:id])
     end
  

     def update
      @roomtype = Roomtype.find(params[:id])
      if @roomtype.update(roomtype_params)
        flash[:notice] = 'Product has been Updated Successfully!'   


        redirect_to "/"

      else
        render :edit, status: :unprocessable_entity
      end
    end
    
private
def roomtype_params
  params.require(:roomtype).permit(:roomtype, :roomimg, :description, :cost, :status)
end

end