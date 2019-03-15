source 'git@git.chunyu.me:ios/Specs.git'
source 'git@git.chunyu.me:ios/mirror-specs.git'
#source 'https://github.com/CocoaPods/Specs.git'
#

inhibit_all_warnings!

#flutter_application_path = '../hospital_flutter'
#framework_dir = File.join(flutter_application_path, '.ios', 'Flutter')

platform :ios, '8.0'
target 'FlutterHybridDemo' do

#eval(File.read(File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')), binding)

pod 'AFNetworking', '2.5.4', :inhibit_warnings => true
pod 'SVProgressHUD', '1.1.3', :inhibit_warnings => true
pod 'Nimbus', '~1.2.0', :inhibit_warnings => true
pod 'Masonry', '1.0.1'
pod 'MJExtension'
pod 'MJRefresh'

end

post_install do |installer|
  # Disable "Application Extension API Only" flag in pods
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|

      if config.name == 'Debug' || config.name == 'Adhoc' || config.name == 'DebugRun'
         old_defines = config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] || []
         if target.name == 'MLeaksFinder' 
            config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] = old_defines + %w($(inherited) MEMORY_LEAKS_FINDER_RETAIN_CYCLE_ENABLED=1 MEMORY_LEAKS_FINDER_ENABLED=1)
         end
      end

      config.build_settings['ENABLE_STRICT_OBJC_MSGSEND'] = "NO"
      config.build_settings['CLANG_WARN_DOCUMENTATION_COMMENTS'] = "NO"
      config.build_settings['GCC_WARN_ABOUT_DEPRECATED_FUNCTIONS'] = "NO"
      config.build_settings['CLANG_WARN_STRICT_PROTOTYPES'] = "NO"
      config.build_settings['ENABLE_BITCODE'] = "NO"
      xcconfig_path = config.base_configuration_reference.real_path
      File.open(xcconfig_path, 'a+') do |file|
          file.puts "#include \"#{File.realpath(File.join(framework_dir, 'Generated.xcconfig'))}\""
      end
    end
  end
end
