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
    p active
    p complete
    p (complete / (active + complete))*100
    (complete / (active + complete))*100
  end

  def generate_projects_menu(status)
    options = { active: 'Active', postponed: 'Postponed', completed: 'Completed'}
    list = []
    options.each do |attribute, value|
      html_class = status == attribute.to_s ? "span3 active" : "span3 status-#{attribute}"
      list << (content_tag(:li, link_to(value, projects_path(status: attribute)), class: html_class))
    end
    list.first + list.second + list.third
  end

  def heading_based_on(status)
    options = { active: 'Active', postponed: 'Postponed', complete: 'Completed'}
    "#{options[status.to_sym]} projects"
  end
end


