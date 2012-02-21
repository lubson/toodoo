require 'spec_helper'

describe Task do
  describe '.recent' do
    it 'returns recent tasks' do
      tasks = create_list :task_day_before, 2
      tasks.reverse.should eq Task.recent
    end
  end

  describe '.by_status' do
    it 'finds a task with existing status' do
      task = create(:task, status: :active)
      task.should be_in Task.by_status(:active)
    end

    it 'does not find any task with non-existing status' do
      Task.by_status(:non_sense).should be_empty
    end
  end

  describe 'initialization' do
    it 'has an active status by default' do
      task = build :task
      task.status.should eql 'active'
    end
  end
end