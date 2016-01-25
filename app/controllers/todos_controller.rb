class TodosController < ApplicationController
  def index
    @todos = Todo.all

    render json: { todos: @todos.as_json }
  end

  def create
    @todo = Todo.new()
  end

  def update
  end

  def destroy
  end
end
