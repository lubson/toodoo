module ProjectsHelper

  def deadline_format(date)
    if Date.today > date
      'label-important'
    else
     'label-info'
    end
  end

  def project_completness(project)
    active = project.tasks.by_status('active').count + 0.0
    complete = project.tasks.by_status('complete').count
    (complete / (active + complete))*100
  end
end
