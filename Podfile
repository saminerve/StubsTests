# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target ‘StubsTest’ do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

      pod 'Alamofire', '~> 4.2.0'
      pod 'ReachabilitySwift'
      pod 'ObjectMapper', '~> 2.2.2'
      pod 'PromiseKit', '~> 4.1.0'
      pod 'SwiftyJSON', '~> 3.1.3'
      pod 'Fabric', '~> 1.6.11'
      pod 'Crashlytics', '~> 3.8.3'
      pod 'CocoaLumberjack/Swift', '~> 3.0.0'
      pod 'SwiftCharts', '~> 0.5.1'
      
      
  def shared_test_pods
  
    pod 'Mockingjay'
    pod 'Alamofire', '~> 4.2.0'
    #
    
  end

  target 'StubsTestTests' do
    inherit! :search_paths
    shared_test_pods
    # Pods for testing
  end

  target 'StubsTestUITests' do
    inherit! :search_paths
    shared_test_pods
    # Pods for testing
  end

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '3.0'
      end
    end
  end

end
