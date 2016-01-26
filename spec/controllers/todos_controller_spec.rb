require 'rails_helper'

RSpec.describe TodosController, type: :controller do
  let(:todo){ create(:todo) }
  let!(:todos){ create_list(:todo, 10) }

  let(:valid_attributes){ { title: "Valid title", is_completed: false } }

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

  describe "POST #create" do
    let(:params){ { todo: valid_attributes } }
    let(:send_request){ post :create, params }

    it "creates a new Todo" do
      expect { send_request }.to change(Todo, :count).by(1)
    end

    it "returns the new Todo as JSON" do
      send_request
      expect(response_json).to include(
        todo: {
          id: Todo.last.id,
          title: "Valid title",
          is_completed: false
        }
      )
    end
  end

  describe "PUT #update" do
    let(:params){ { id: todo.id, todo: valid_attributes  } }
    let(:send_request){ put :update, params }

    it "should update a todo's data" do
      send_request
      expect(todo.reload.title).to eq("Valid title")
    end

    it "should return the updated todo" do
      send_request
      expect(response_json).to include(
        todo: {
          id: todo.id,
          title: "Valid title",
          is_completed: todo.is_completed
        }
      )
    end
  end

  describe "DELETE #destroy" do
    let(:params){ { id: Todo.last.id } }
    let(:send_request){ delete :destroy, params }

    it "should delete a specified todo and return an empty hash" do
      expect { send_request }.to change(Todo, :count).by(-1)
      expect(response_json).to include({})
    end
  end
end
