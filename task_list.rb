class Task_List
    def initialize
        @task_list = []
        @completed_tasks = []
    end

    def task_list
        @task_list
    end

    def add_tasks task
        @task_list << task
    end

    def complete_a_task

    end

    def completed_tasks status
        if @status == 'done'
            @completed_tasks << status

        end
    end


end
