#!/usr/bin/env ruby

# file: weeklyplanner_template.rb


require 'planner_template'


class WeeklyplannerTemplate < PlannerTemplate  
  
  attr_reader :no
  
  def initialize(src, template: 'default')
    
    super(src, template: template)
    @no = @xmldoc.root.text('summary/no')    
    @template = 'landscape1' if @template == 'default'
        
  end  

  def to_h()
    
    layout, style = fetch_css

    {
      'week' + @no + '_planner.html' => self.to_html, 
      'week_layout.css' => layout, 
      'week.css' => style
    }    
  end
    
end
