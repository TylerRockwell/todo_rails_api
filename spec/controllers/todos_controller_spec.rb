require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  let(:todo){ create(:todo) }
  let!(:todos){ create_list(:todo, 10) }

  describe "GET #index" do
    it "responds with all todos as JSON" do
      get :index
      expect(response_json).to include(
        todos: Todo.all.map do |todo|
          {
            id: todo.id,
            title: todo.title,
            is_completed: todo.is_completed
          }
        end
      )
    end
  end
end
