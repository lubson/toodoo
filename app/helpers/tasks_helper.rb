module TasksHelper

  def checked_input(task)
     if task.status == 'completed'
      tag(:input, type: 'checkbox', checked: 'checked')
    else
      tag(:input, type: 'checkbox')
    end
  end

  def checked_paragraph(task)
    if task.status == 'completed'
      content_tag(:p, task.name, class: 'checked')
    else
      content_tag(:p, task.name)
    end
  end
end
