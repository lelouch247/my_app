class PeopleController < ApplicationController
  def index
    @people = Person.all
    render :index
  end

  def edit
    @people = Person.find(params[:id])
  end

  def update
    @people = Person.find(params[:id])
    if @people.update(person_params)
      redirect_to person_path(@people)
    else
      render :edit
    end
  end

  def show
    @people = Person.find(params[:id])
  end

  def new
    @people = Person.new
  end

  def create
    @people = Person.new(person_params)
    if @people.save
      redirect_to person_path(@people)
    else
      render :new
    end
  end

  def destroy
    @people = Person.find(params[:id])
    @people.destroy
    redirect_to root_path
  end

  private
  def person_params
    params.require(:person).permit(:name, :age, :hair_color, :race, :alive)
  end
end
