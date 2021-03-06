//
//  VersionInformationController.m
//  GFTrademarkEyes
//
//  Created by 王宁 on 2018/4/8.
//  Copyright © 2018年 王宁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VersionInformationController.h"
@interface VersionInformationController()

@end

@implementation VersionInformationController

-(void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"版本信息";
    //设置背景颜色
    self.view.backgroundColor = [UIColor whiteColor];
    //初始化控件
    [self initView];
    
}
-(void)initView{
    UIImageView *imageView = [UIImageView new];
    [self.view addSubview:imageView];
    [imageView mas_updateConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.view);
//        make.trailing.equalTo(self.view);
        make.top.equalTo(self.view);
        make.height.mas_equalTo(Device_Height * 3/5);
        make.width.equalTo(self.view);
    }];
    //[imageView assignmentWithImageView:@"GF_Black" model:UIViewContentModeScaleAspectFill];
    [imageView setBackgroundColor:GFMainColor];
    
    //logo 图标
    UIImageView *imageLogo = [[UIImageView alloc]init];
    [imageView addSubview:imageLogo];
    [imageLogo setImage:[UIImage imageNamed:@"GF_Black"]];
    [imageLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(imageView);
        make.centerY.equalTo(imageView).offset(-10);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    //label 国方商标查询
    UILabel *GFlabel = [[UILabel alloc]init];
    [GFlabel setFont:[UIFont systemFontOfSize:20]];
    [GFlabel setTextColor:[UIColor whiteColor]];
    [imageView addSubview:GFlabel];
    [GFlabel setText:@"国方商标查询"];
    [GFlabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(imageView);
        make.top.equalTo(imageLogo.mas_bottom).offset(5);
    }];
    
    
    
    
    
    //分隔线
    UIView *lineView = [[UIView alloc]init];
    [self.view addSubview:lineView];
    [lineView setBackgroundColor:[UIColor greenColor]];
    [lineView mas_updateConstraints:^(MASConstraintMaker *make) {
        
        //make.leading.equalTo(self.view).with.offset(8);
        make.top.mas_equalTo(imageView.mas_bottom).with.offset(Device_Height / 7 * 1);
        make.height.mas_equalTo([NSNumber numberWithFloat:(Device_Height/7*1)]);
        make.width.mas_equalTo(@2);
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.center.mas_equalTo(self.view);
    }];
    

    ZWVerticalAlignLabel *info01 = [[ZWVerticalAlignLabel alloc]init];
    //info01.backgroundColor =[UIColor blueColor];
    [info01 setText:@"   版本信息：\n   客服电话：\n微信公共号："];
    [self.view addSubview:info01];
    info01.font = [UIFont fontWithName:@"Helvetica-Light" size:14.f];//PingFangSC、Helvetica、Arial,Helvetica宋体、楷体
    //[info01 textLeftTopAlign];
    //info01.textColor=[UIColor lightGrayColor];
    [info01 textAlign:^(ZWMaker *make) {
        make.addAlignType(textAlignType_right);
    }];
    [info01 mas_updateConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(lineView);
        make.right.equalTo(lineView).with.offset(-3);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(80);
    }];
    ZWVerticalAlignLabel *info02 = [[ZWVerticalAlignLabel alloc]init];
    [info02 setText:@"V1.0\n12306\nGFTM8888"];
    [self.view addSubview:info02];
    [info02 setLineBreakMode:NSLineBreakByCharWrapping];
    info02.font = [UIFont fontWithName:@"Helvetica-Light" size:14.f];//Helvetica、Arial,Helvetica宋体、楷体-Bold粗体
    //info02.textColor=[UIColor lightGrayColor];
    [info02 textAlign:^(ZWMaker *make) {
        make.addAlignType(textAlignType_left);
    }];
    [info02 mas_updateConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(lineView);
        make.left.equalTo(lineView).with.offset(3);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(80);
    }];
    [lineView setHidden:true];
    
    
    //【技术支持】改为图片展示
    //技术支持companyInfo

    UIView *companyInfoView = [[UIView alloc]init];
    [companyInfoView setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:companyInfoView];
    [companyInfoView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(40);
        make.left.equalTo(self.view).with.offset(10);
        make.right.equalTo(self.view).with.offset(-10);
        make.bottom.equalTo(self.view).with.offset(-5);
    }];
    UILabel *titleInfo = [[UILabel alloc]init];
    UILabel *companyInfo = [[UILabel alloc]init];
    [companyInfoView addSubview:titleInfo];
    [companyInfoView addSubview:companyInfo];
    titleInfo.font = [UIFont fontWithName:@"Helvetica-Light" size:12.f];
    companyInfo.font =[UIFont fontWithName:@"Helvetica-Light" size:12.f];
    [titleInfo  setText:@"技术支持"];
    /*计算label内容的大小
//    CGSize size =  [sizeWithStr:_titleInfo.text font:titleInfo.font];
//    [self ];
//    CGSize size =  [sizeWithStr:_titleInfo.text font:titleInfo.font];
//   [self ]
    
    NSString *tstring = @"技术支持";
    titleInfo.text = tstring ;
    CGSize size =CGSizeMake(300,60);
    //    获取当前文本的属性
    NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Helvetica-Light" size:12.f],NSFontAttributeName,nil];
    CGSize actualsize =[tstring boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin  attributes:tdic context:nil].size;
    //CGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
    */
    [companyInfo setText:@"国方商标服务有限公司\n国方商标软件有限公司"];
    [companyInfo mas_updateConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(Device_Height).with.offset(24);
        make.centerY.equalTo(companyInfoView);
    }];
    [titleInfo mas_updateConstraints:^(MASConstraintMaker *make) {
        //make.size.mas_equalTo(size);
        //make.centerX.mas_equalTo(Device_Height).mas_offset(-45);
        //make.centerY.mas_equalTo(totalView).mas_offset(0);
        //make.left.mas_equalTo(Device_Width/5);
        make.centerY.equalTo(companyInfoView);
        make.right.equalTo(companyInfo.mas_left).with.offset(-6);
    }];
    [companyInfoView setBackgroundColor:[UIColor whiteColor]];

    
    
//
//    UIImageView *newImageView = [[UIImageView alloc]init];
//    [self.view addSubview:newImageView];
//    //[newImageView setImage:[UIImage imageNamed:@"开发单位"]];
//    [newImageView assignmentWithImageView:@"开发单位" model:UIViewContentModeScaleAspectFill];
//    [newImageView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.bottom.equalTo(self.view.mas_bottom).offset(-10);
//        make.centerX.equalTo(self.view);
//        //make.height.mas_equalTo(Device_Height/9);
//    }];
//
//
    
    UIView *lineView2 = [[UIView alloc]init];
    [companyInfoView addSubview:lineView2];
    [lineView2 setBackgroundColor:[UIColor greenColor]];
    [lineView2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(companyInfoView);
        make.height.mas_equalTo(30);
        make.width.mas_equalTo(1);
    }];
    lineView2.hidden = true;
}
@end

