
require "rails_helper"

RSpec.describe Project do
    let(:project) { Project.new }
    let(:task) { Task.new }
    
    it "consider a project with no task to be done" do
        expect(project.done?).to be_truthy
    end

    it "knows that a project with an incomplete task is not done" do
        project.tasks << task
        expect(project).not_to be_done
    end

    it "marks a project done if its tasks are done" do
        project.tasks << task
        task.mark_completed
        expect(project).to be_done
    end
end