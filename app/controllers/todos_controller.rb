class TodosController < ApplicationController
  before_action :set_todo, only: [:update, :destroy]
  def index
    @todos = Todo.all

    render json: { todos: @todos.as_json }
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: { todo: @todo.as_json }
    else
      render json: { error: "Could not save todo item" }
    end
  end

  def update
    @todo.update(todo_params)
    if @todo.save
      render json: { todo: @todo.as_json }
    else
      render json: { error: "Could not save todo item" }
    end
  end

  def destroy
    @todo.destroy
    render json: {}
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :is_completed)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
