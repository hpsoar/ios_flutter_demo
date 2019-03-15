# ios_flutter_demo
- demonstrates how to integrate flutter to existing code

## Get Started
- create flutter module
  - `flutter create -t module flutter_demo`
  - you can put `flutter_demo` inside `ios_flutter_demo` or beside `ios_flutter_demo`, possibly anywhere else.
  - `NOTE`: a better solution is to make `flutter_demo` a git repo and add it to `ios_flutter_demo` as a submodule
    - ref: https://github.com/hpsoar/flutter_demo
- setup existing project
  - create `Podfile` if not exists
  - udpate `Podfile`
    - ref: https://github.com/hpsoar/ios_flutter_demo/blob/feature/integrate-flutter/Podfile
    ```Ruby
    # the three lines
    flutter_application_path = 'flutter_demo' # the path to your flutter code
    framework_dir = File.join(flutter_application_path, '.ios', 'Flutter')
    
    eval(File.read(File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')), binding)

    ```
  - add a `Run Script Phase` to the `Build Phases` of your project
    - put it before `Compile Sources`
    ```Shell
    "$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh" build
    "$FLUTTER_ROOT/packages/flutter_tools/bin/xcode_backend.sh" embed

    ```
  - `pod install`
  - add test code
  ```Objective-C
    FlutterViewController *vc = [[FlutterViewController alloc] init];
    
    [vc setInitialRoute:@"main"];
    
    [self presentViewController:vc animated:YES completion:^{
        
    }];
  ```
   - run
