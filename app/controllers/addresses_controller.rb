class AddressesController < ApplicationController

    def new
      @student = Student.new
      @address = Address.new
    end

    def create
      @address = student.address(address_params)
      if @address.save
        redirect_to student_path(@address)
      else
        render :new
      end
    end

    private

    def address_params
      params.require(:address).permit(:description, :street_address, :city, :state, :zipcode, :student_id)
    end

end
