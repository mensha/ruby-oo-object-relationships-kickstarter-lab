require 'pry'
class Backer
attr_reader :name
@@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        project = ProjectBacker.new(project, self)
    end

    def backed_projects
         back = ProjectBacker.all.select do |projectbacker| projectbacker.backer == self   
               
        end
        back.map do |b| 
            b.project 
        end
    end

    


end