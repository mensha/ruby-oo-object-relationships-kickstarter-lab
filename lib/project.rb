require 'pry'
class Project
    attr_reader :title
    attr_accessor :backer
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        backer = ProjectBacker.new(self, backer)
    end

    def backers
      projects = ProjectBacker.all.select do |projectbacker| projectbacker.project == self   
    end
        projects.map do |p|
             p.backer
        end
        


end
    

end



