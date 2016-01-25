class TodosController < ApplicationController
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
  end

  def destroy
  end

  def todo_params
    params.require(:todo).permit(:title, :is_completed)
  end
end
