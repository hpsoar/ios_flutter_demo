source 'git@git.chunyu.me:ios/Specs.git'
source 'git@git.chunyu.me:ios/mirror-specs.git'
#source 'https://github.com/CocoaPods/Specs.git'
#

inhibit_all_warnings!

flutter_application_path = 'flutter_demo'
framework_dir = File.join(flutter_application_path, '.ios', 'Flutter')

platform :ios, '8.0'
target 'FlutterHybridDemo' do

eval(File.read(File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')), binding)

pod 'AFNetworking', '2.5.4', :inhibit_warnings => true
pod 'SVProgressHUD', '1.1.3', :inhibit_warnings => true
pod 'Nimbus', '~>1.2.0', :inhibit_warnings => true
pod 'Masonry', '1.0.1'
pod 'MJExtension'
pod 'MJRefresh'

pod 'cyUIKit'
pod 'cyImage'

end

