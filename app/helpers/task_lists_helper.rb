module TaskListsHelper
  def list_task_lists(project,task_lists)
    render :partial => 'task_lists/task_list', 
      :collection => task_lists,
      :locals => {
        :project => project }
  end
  
  def new_task_list_link(project)
    link_to t('.add_link'), new_project_task_list_path(project)
  end
  
  def task_list_fields(f)
    render :partial => 'task_lists/fields', :locals => { :f => f }
  end
  
  def task_list_link(task_list)
    link_to h(task_list.name), project_task_list_path(task_list.project,task_list)
  end
  
  def new_task_link(task_list)
    link_to 'New Task', new_project_task_list_task_path(task_list.project,task_list)
  end
end