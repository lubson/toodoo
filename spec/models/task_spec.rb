require 'spec_helper'

describe Task do
  describe '.recent' do
    it 'returns recent tasks' do
      tasks = create_list :task_day_before, 2
      Task.recent.should eq tasks.reverse
    end
  end

  describe '.by_status' do
    it 'finds a task with existing status' do
      task = create(:task, status: :active)
      Task.by_status(:active).should include task
    end

    it 'does not find any task with non-existing status' do
      Task.by_status(:non_sense).should be_empty
    end
  end

  describe 'initialization' do
    it 'has an active status by default' do
      task = build :task
      task.status.should eq 'active'
    end
  end
end