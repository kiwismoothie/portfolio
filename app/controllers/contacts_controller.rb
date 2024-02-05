class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end


  def index
    @contact = Contact.new
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:success] = "Thank you"
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :project)
  end

end
