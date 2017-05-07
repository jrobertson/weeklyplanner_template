# Introducing the weeklyplanner_template gem

    require 'weeklyplanner_template'

    xml = '/tmp/week.xml'
    wpt = WeeklyplannerTemplate.new xml, template: 'default'
    wpt.to_h.each {|filename, content| File.write filename, content}

The weeklyplanner_template gem accepts an XML file (Polyrex format) and generates an HTML page complete with CSS files.

Here's an example of the XML file used:

<pre>
&lt;week&gt;
  &lt;summary&gt;
    &lt;mon&gt;May&lt;/mon&gt;
    &lt;no&gt;18&lt;/no&gt;
    &lt;label/&gt;
  &lt;/summary&gt;
  &lt;records&gt;
    &lt;day id='126'&gt;
      &lt;summary&gt;
        &lt;sdate&gt;2017-May-01&lt;/sdate&gt;
        &lt;xday&gt;1&lt;/xday&gt;
        &lt;event/&gt;
        &lt;bankholiday/&gt;
        &lt;title&gt;Monday&lt;/title&gt;
        &lt;sunrise/&gt;
        &lt;sunset/&gt;
        &lt;schema&gt;day[sdate, xday, event, bankholiday, title, sunrise, sunset]/entry[time_start, time_end, duration, title]&lt;/schema&gt;
        &lt;format_mask&gt;[!sdate] [!xday] [!event] [!bankholiday] [!title] [!sunrise] [!sunset]&lt;/format_mask&gt;
        &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
      &lt;/summary&gt;
      &lt;records&gt;
        &lt;entry&gt;
          &lt;summary&gt;
          &lt;time_start&gt;9:00am&lt;/time_start&gt;
          &lt;title&gt;fun time&lt;/title&gt;
          &lt;/summary&gt;
          &lt;records/&gt;
        &lt;/entry&gt;
      &lt;/records&gt;
    &lt;/day&gt;
    &lt;day id='127'&gt;
      &lt;summary&gt;
        &lt;sdate&gt;2017-May-02&lt;/sdate&gt;
        &lt;xday&gt;2&lt;/xday&gt;
        &lt;event/&gt;
        &lt;bankholiday/&gt;
        &lt;title&gt;Tuesday&lt;/title&gt;
        &lt;sunrise/&gt;
        &lt;sunset/&gt;
        &lt;schema&gt;day[sdate, xday, event, bankholiday, title, sunrise, sunset]/entry[time_start, time_end, duration, title]&lt;/schema&gt;
        &lt;format_mask&gt;[!sdate] [!xday] [!event] [!bankholiday] [!title] [!sunrise] [!sunset]&lt;/format_mask&gt;
        &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
      &lt;/summary&gt;
      &lt;records/&gt;
    &lt;/day&gt;
    &lt;day id='128'&gt;
      &lt;summary&gt;
        &lt;sdate&gt;2017-May-03&lt;/sdate&gt;
        &lt;xday&gt;3&lt;/xday&gt;
        &lt;event/&gt;
        &lt;bankholiday/&gt;
        &lt;title&gt;Wednesday&lt;/title&gt;
        &lt;sunrise/&gt;
        &lt;sunset/&gt;
        &lt;schema&gt;day[sdate, xday, event, bankholiday, title, sunrise, sunset]/entry[time_start, time_end, duration, title]&lt;/schema&gt;
        &lt;format_mask&gt;[!sdate] [!xday] [!event] [!bankholiday] [!title] [!sunrise] [!sunset]&lt;/format_mask&gt;
        &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
      &lt;/summary&gt;
      &lt;records/&gt;
    &lt;/day&gt;
    &lt;day id='129'&gt;
      &lt;summary&gt;
        &lt;sdate&gt;2017-May-04&lt;/sdate&gt;
        &lt;xday&gt;4&lt;/xday&gt;
        &lt;event/&gt;
        &lt;bankholiday/&gt;  
        &lt;title&gt;Thursday&lt;/title&gt;
        &lt;sunrise/&gt;
        &lt;sunset/&gt;
        &lt;schema&gt;day[sdate, xday, event, bankholiday, title, sunrise, sunset]/entry[time_start, time_end, duration, title]&lt;/schema&gt;
        &lt;format_mask&gt;[!sdate] [!xday] [!event] [!bankholiday] [!title] [!sunrise] [!sunset]&lt;/format_mask&gt;
        &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
      &lt;/summary&gt;
      &lt;records/&gt;
    &lt;/day&gt;
    &lt;day id='130'&gt;
      &lt;summary&gt;
        &lt;sdate&gt;2017-May-05&lt;/sdate&gt;
        &lt;xday&gt;5&lt;/xday&gt;
        &lt;event/&gt;
        &lt;bankholiday/&gt;
        &lt;title&gt;Friday&lt;/title&gt;
        &lt;sunrise/&gt;
        &lt;sunset/&gt;
        &lt;schema&gt;day[sdate, xday, event, bankholiday, title, sunrise, sunset]/entry[time_start, time_end, duration, title]&lt;/schema&gt;
        &lt;format_mask&gt;[!sdate] [!xday] [!event] [!bankholiday] [!title] [!sunrise] [!sunset]&lt;/format_mask&gt;
        &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
      &lt;/summary&gt;
      &lt;records/&gt;
    &lt;/day&gt;
    &lt;day id='131'&gt;
      &lt;summary&gt;
        &lt;sdate&gt;2017-May-06&lt;/sdate&gt;
        &lt;xday&gt;6&lt;/xday&gt;
        &lt;event/&gt;
        &lt;bankholiday/&gt;
        &lt;title&gt;Saturday&lt;/title&gt;
        &lt;sunrise/&gt;
        &lt;sunset/&gt;
        &lt;schema&gt;day[sdate, xday, event, bankholiday, title, sunrise, sunset]/entry[time_start, time_end, duration, title]&lt;/schema&gt;
        &lt;format_mask&gt;[!sdate] [!xday] [!event] [!bankholiday] [!title] [!sunrise] [!sunset]&lt;/format_mask&gt;
        &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
      &lt;/summary&gt;
      &lt;records/&gt;
    &lt;/day&gt;
    &lt;day id='132'&gt;
      &lt;summary&gt;
        &lt;sdate&gt;2017-May-07&lt;/sdate&gt;
        &lt;xday&gt;7&lt;/xday&gt;
        &lt;event/&gt;
        &lt;bankholiday/&gt;
        &lt;title&gt;Sunday&lt;/title&gt;
        &lt;sunrise/&gt;
        &lt;sunset/&gt;
        &lt;schema&gt;day[sdate, xday, event, bankholiday, title, sunrise, sunset]/entry[time_start, time_end, duration, title]&lt;/schema&gt;
        &lt;format_mask&gt;[!sdate] [!xday] [!event] [!bankholiday] [!title] [!sunrise] [!sunset]&lt;/format_mask&gt;
        &lt;recordx_type&gt;polyrex&lt;/recordx_type&gt;
      &lt;/summary&gt;
      &lt;records/&gt;
    &lt;/day&gt;
  &lt;/records&gt;
&lt;/week&gt;
</pre>

## Screenshot

![Screenshot of the weekly planner on a web page](http://a0.jamesrobertson.eu/r/images/2017/may/07/screenshot-of-weekly-planner.png)

## Resources

* weeklyplanner_template https://rubygems.org/gems/weeklyplanner_template

weeklyplanner template gem weeklyplannertemplate planner
