TCClick统计平台IOS客户端
===========

使用步骤：

1. 下载libtcclick.a，加入到项目的 "Linked Frameworks and Libraries" 当中去，[点击下载libtccilck.a](https://github.com/starfalling/tcclick-ios/raw/master/release/libtcclick.a)

2. 下载TCClick.h头文件，把文件加入到项目中去，[点击下载TCClick.h](https://github.com/starfalling/tcclick-ios/raw/master/release/TCClick.h)

3. 在你项目的AppDelegate.m文件中，加入 #import "TCClick.h"，然后在 didFinishLaunchingWithOptions 方法中加入类似下面的代码：

        - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
            [TCClick start:@"http://tcclicktest.sinaapp.com/api/upload.php" channel:@"dev"];
            ....
        }
4. 加入tcclick的依赖库：libsqlite3.dylib, libz.dylib, CoreTelephony.framework, SystemConfiguration.framework

5. 至此，TCClick的配置就完成了，启动应用，你的服务器端如果配置正确的话就可以看到数据了