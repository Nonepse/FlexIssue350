# Uncomment the next line to define a global platform for your project
platform :ios, '13.0'

target 'FlexIssue350' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for FlexIssue350

  pod 'AFNetworking', '2.5.3'
  pod 'Alamofire', '4.3.0'
  pod 'FLEX'

end


post_install do |installer|

    ### Force-compile pods with Swift 4.0 if necessary

    atSwift4 = [
        'Alamofire'
    ]

    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            if atSwift4.include? target.name
                config.build_settings['SWIFT_VERSION'] = '4.0'
            end
        end
    end

end