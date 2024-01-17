class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end


  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to root_path, notice: "Contact was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :project)
  end

end
