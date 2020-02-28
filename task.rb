class Task
    def title
        @title = title
    end

    def title
        p @title = "peepee"
    end

    def description=description
        @description = description
    end

    def description
        @description
    end

    def initialize status='in progress'
        @status = status
    end

    def status
        @status
    end

    def finished
        @status = "done"
    end

end

class Task_List
    def initialize
        @task_list = []
        @completed_tasks = []
    end

    def task_list
        @task_list
    end

    def completed_tasks
        @completed_tasks
    end

    def add_tasks task
        @task_list << task
    end

    def complete_a_task task
        @task_list.shift
        @completed_tasks << task
    end

end

my_task_list = Task_List.new
my_task = Task.new
my_task.title
my_task_list.add_tasks my_task
p my_task_list.complete_a_task my_task
my_task.finished
p my_task_list.task_list
p my_task_list.completed_tasks
