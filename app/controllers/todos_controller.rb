class ToDosController < ApplicationController

  def index
    @todos = ToDo.all
  end

  def show
    @todo = ToDo.find(params[:id])
  end

  def create
    @todo = Todo.create(todo_params)
  end

  def update
    @todo = ToDo.find(params[:id])
    @todo.update(todo_params)
  end

  def destroy
    @todo = ToDo.find(params[:id])
    @todo.destroy!
  end

  private

    def todo_params
      params.require(:todo).permit(:user_id, :todo_id, :taskname, :body, :finished)
    end

end
