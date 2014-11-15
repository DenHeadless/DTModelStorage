Pod::Spec.new do |s|
  s.name     = 'DTModelStorage'
  s.version  = '1.1.1'
  s.license  = 'MIT'
  s.summary  = 'Storage classes for datasource based controls.'
  s.homepage = 'https://github.com/DenHeadless/DTModelStorage'
  s.authors  = { 'Denys Telezhkin' => 'denys.telezhkin@yandex.ru' }
  s.source   = { :git => 'https://github.com/DenHeadless/DTModelStorage.git', :tag => s.version.to_s }
  s.requires_arc = true
  s.platform = :ios,'7.0'
  s.ios.deployment_target = '7.0'
  s.ios.frameworks = 'UIKit', 'Foundation'

  s.subspec 'Core' do |ss|
    ss.source_files = 'DTModelStorage/Core'
  end

  s.subspec 'MemoryStorage' do |ss|
    ss.dependency 'DTModelStorage/Core'
    ss.source_files = 'DTModelStorage/Memory'
    ss.source_files = 'DTModelStorage/Utilities'
  end

  s.subspec 'CoreDataStorage' do |ss|
    ss.ios.frameworks = 'CoreData'
    ss.dependency 'DTModelStorage/Core'
    ss.source_files = 'DTModelStorage/CoreData'
  end

  s.subspec 'All' do |ss|
    ss.source_files = 'DTModelStorage/DTModelStorage.h'
    
    ss.dependency 'DTModelStorage/Core'
    ss.dependency 'DTModelStorage/CoreDataStorage'
    ss.dependency 'DTModelStorage/MemoryStorage'
  end

  s.default_subspec = 'All'
  
end