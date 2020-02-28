require 'rspec'
require_relative 'task'


describe 'Task' do

  it 'has to be real' do
    expect{ Task.new }.to_not raise_error
  end

  it 'must have a title' do
      my_title = Task.new
      my_title.title = "Brushing Our Teeth"
      expect(my_title.title).to be_a String
      expect(my_title.title).to eq "Brushing Our Teeth"
  end

  it 'must have a description' do
      my_description = Task.new
      my_description.description = "Toothpaste on Toothbrush"
      expect(my_description.description).to be_a String
      expect(my_description.description).to eq "Toothpaste on Toothbrush"
  end

  it 'task must be marked as done & initialized' do
      my_status = Task.new
      expect(my_status.status).to eq 'in progress'
      expect(my_status.status).to be_a String
      my_completed_status = Task.new 'Done'
      expect(my_completed_status.status).to eq 'Done'
  end

end

describe 'Task_List' do
    it 'has to be real' do
      expect{ Task_List.new }.to_not raise_error
    end

    it 'task list will contain an array of tasks' do
        my_task_list = Task_List.new
        my_task = Task.new
        expect(my_task_list.task_list).to be_a Array
        my_task_list.add_tasks my_task
        expect(my_task_list.task_list).not_to be_empty
    end

    it 'completed tasks' do
        my_task_list =Task_List.new
        my_task = Task.new

        expect(my_task_list.task_list).to be_a Array
        my_task_list.complete_a_task my_task

        expect(my_task_list.completed_tasks).not_to be_empty
        expect(my_task_list.task_list).not_to be_empty
    end
end
