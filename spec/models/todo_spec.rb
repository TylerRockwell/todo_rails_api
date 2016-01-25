require 'rails_helper'

RSpec.describe Todo do
  describe "#as_json" do
    let(:todo){ create(:todo) }
    it "should return id, title, and is_completed" do
      expect(todo.as_json).to eq(
        {
          id: todo.id,
          title: todo.title,
          is_completed: todo.is_completed
        }
      )
    end
  end
end
