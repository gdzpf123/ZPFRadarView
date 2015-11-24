//
//  Common.h
//  IBallBBS
//
//  Created by cstwanngjun on 14/12/29.
//  Copyright (c) 2014年 cst. All rights reserved.
//


#import "SVProgressHUD.h"
#import "HttpManager.h"
#import "MBProgressHUD.h"
#import "DataControl.h"
#import "UIImageView+AFNetworking.h"
#import "UIButton+AFNetworking.h"
#import "MJRefresh.h"
#import "MJExtension.h"

//#import "LoginViewController.h"
#import "NSString+time.h"
#import "PXAlertView.h"
#import "SDWebImageManager.h"
#import "UIImageView+WebCache.h"
#import "UIView+UIViewExtend.h"
#define UmengAppkey @"54db01c5fd98c5863b0007fa"

//#ifdef DEBUG
//#define NSLog(...) NSLog(__VA_ARGS__)
//#define debugMethod() NSLog(@"%s", __func__)
//#else
//#define NSLog(...)
//#define debugMethod()
//#endif


#define NavBar_H 64
#define PublicViewW 245
//举重馆
#define JZG_PRIMARYSCHOOL 50 //小学
#define JZG_JUNIORHIGH 80 //初中
#define JZG_HIGHTSCHOOL 100 //高中
#define JZG_UNIVERSITY 200  //大学
//钓鱼馆
#define DYG_PRIMARYSCHOOL 250 //小学
#define DYG_JUNIORHIGH 400 //初中
#define DYG_HIGHTSCHOOL 500 //高中
#define DYG_UNIVERSITY 1000  //大学

#define MainScreenH [UIScreen mainScreen].bounds.size.height
#define MainScreenW [UIScreen mainScreen].bounds.size.width

#define SelfViewHeight self.view.frame.size.height
#define SelfViewWidth self.view.frame.size.width

// 获得RGB颜色
#define myColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
// 全局背景色
//#define GlobalColor UIColorFromRGB(0xFF0096)
#define GlobalColor [UIColor colorWithRed:228.0/255 green:72.0/255 blue:117.0/255 alpha:1]
#define TGlobalColor UIColorFromRGB(0x999999)
#define BackColor UIColorFromRGB(0xF6F6F6)

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define imageURl @"<img src='http://image.iball.cc/bbs/%@'/>"
#define SingelUrl @"http://image.iball.cc/avatar/%@"
#define FeedBackUrl @"http://image.iball.cc/feedback/%@"
#define IOS7 [[[UIDevice currentDevice] systemVersion] floatValue] >= 7
#define IOS8 [[[UIDevice currentDevice] systemVersion] floatValue] >= 8
#define IOS(key) [[[UIDevice currentDevice] systemVersion] floatValue] >= key

#define  toolBarHeight 40

#define MyTOKEN [[NSUserDefaults standardUserDefaults] objectForKey:@"token"]
#define MyIphoneNum [[NSUserDefaults standardUserDefaults] objectForKey:@"IphoneUserName"]

#define SETTINGPUSH @"push"

#define MyDoc NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0]

#define UserInfoChange @"userChange"
#define DeleCollect @"deleCollect"
#define FIRST_LAUNCH_STEP @"firstLaunchstep"

#define isEn [[[NSLocale preferredLanguages] objectAtIndex:0] isEqualToString:@"en"]

// 首页
//#define mainPort @"http://192.168.1.103"
//正式环境
#define mainPort @"http://api.iball.cc"
//测试环境
//#define mainPort @"http://218.17.119.146:8000"
#define lunboUrl mainPort@"/bbs/carousel"
#define banKuaiUrl mainPort@"/bbs/blocks/"
#define pagelistUrl mainPort@"/bbs/?token=%@&page=%d"
#define UnReadUrl mainPort@"/bbs/getnewsnum/?token=%@"

// 板块
#define PostListUrl mainPort@"/bbs/postslist/?bid=%@&page=%d"
#define ElitepostsUrl mainPort@"/bbs/eliteposts/?bid=%@&page=%d"
#define DingListUrl mainPort@"/bbs/blockdetail/?bid=%@"

// 详情
#define AddPraiseUrl mainPort@"/bbs/addrpraise/?rid=%@&token=%@"
#define AddCollectUrl mainPort@"/bbs/addcollect/?token=%@&fid=%@"
#define ReportUrl mainPort@"/bbs/report/?token=%@&fid=%@&type=%@"
#define ZanReUrl mainPort@"/bbs/addpraise/?fid=%@&token=%@"
#define ReporttypeUrl mainPort@"/bbs/reporttype"
#define LZrpostslistUrl mainPort@"/bbs/lzrpostslist/?token=%@&fid=%@&page=%d"

//#define NoDefaultRpostsListUrl mainPort@"/bbs/rpostslist/?token=%@&fid=%@&page=%d&rid=%@"
#define DefaultRpostsListUrl mainPort@"/bbs/rpostslist/?token=%@&fid=%@&page=%d"
#define PostinfoUrl mainPort@"/bbs/postinfo/?token=%@&fid=%@"
#define NoPostinfoUrl mainPort@"/bbs/postinfo/?token=%@&fid=%@&rid=%@"

#define ReplyUrl mainPort@"/bbs/rposts/?token=%@&id=%@&rid=%@&content=%@"

#define replyMeUrl mainPort@"/bbs/postsnews/?token=%@&page=%d"
#define systemNewsUrl mainPort@"/bbs/sysnews/?token=%@&page=%d"


#define publicUrl mainPort@"/bbs/addposts/?token=%@&bid=%@&title=%@&content=%@"

#define MyPublicUrl mainPort@"/bbs/myposts/?token=%@&page=%d"

#define DelMyTalkUrl mainPort@"/bbs/delposts/?token=%@&id=%@"

#define MyCollectUrl mainPort@"/bbs/mycollect/?token=%@"

#define DelMyCollectUrl mainPort@"/bbs/delcollect/?token=%@&id=%@"

#define detailMesUrl mainPort@"/bbs/sysnewsinfo/?token=%@&id=%@"

#define AddMessageUrl mainPort@"/bbs/addmessage/?token=%@&content=%@"

#define MyBackMessageUrl mainPort@"/bbs/messages/?token=%@&page=%d"

#define UserUrl mainPort@"/bbs/user/?token=%@"

#define UserInfoUrl mainPort@"/bbs/userinfo/?token=%@"

#define ChangeUserInfoUrl mainPort@"/bbs/setuserinfo/?token=%@&img=%@&nickname=%@&age=%@&isbirth=%@&birthtime=%@&birthway=%@&email=%@"

#define LoginUrl mainPort@"/bbs/login/?mobile=%@&password=%@"
#define ForgetUrl mainPort@"/bbs/getpasscode/?mobile=%@"
#define NewPwdUrl mainPort@"/bbs/setnewpass/?mobile=%@&code=%@&password=%@"
#define RegistUrl mainPort@"/bbs/register/?mobile=%@&code=%@&password=%@&uid=%@"
#define CodeUrl mainPort@"/bbs/getregcode/?mobile=%@"


#define versionUrl mainPort@"/version/upgrade/?pname=%@&vcode=%d"
