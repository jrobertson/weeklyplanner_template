Gem::Specification.new do |s|
  s.name = 'weeklyplanner_template'
  s.version = '0.1.0'
  s.summary = 'Generates an HTML based weekly planner.'
  s.authors = ['James Robertson']
  s.files = Dir['lib/weeklyplanner_template.rb', 'template']
  s.add_runtime_dependency('planner_template', '~> 0.1', '>=0.1.0')
  s.signing_key = '../privatekeys/weeklyplanner_template.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@jamesrobertson.eu'
  s.homepage = 'https://github.com/jrobertson/weeklyplanner_template'
end
