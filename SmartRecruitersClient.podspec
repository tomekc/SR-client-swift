Pod::Spec.new do |s|
  s.name = 'SmartRecruitersClient'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.version = '0.1.0'
  s.source = { :git => 'git@github.com:swagger-api/swagger-mustache.git', :tag => 'v1.0.0' }
  s.license = 'Closed Source (C) SmartRecruiters Inc.'
  s.source_files = 'SmartRecruitersClient/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 3.1.0'
end
