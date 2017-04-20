//
//  ThreeTableViewCell.m
//  NewProjectDemo
//
//  Created by 俞乃胜 on 2017/4/18.
//  Copyright © 2017年 俞乃胜. All rights reserved.
//

#import "ThreeTableViewCell.h"

@implementation ThreeTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self =[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle =UITableViewCellSelectionStyleNone;
        WS(blockSelf);
        _orderLab =[UILabel new];
        [self.contentView addSubview:_orderLab];
        [_orderLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(blockSelf.contentView).offset =0;
            make.left.equalTo(blockSelf.contentView).offset =10;
            make.bottom.equalTo(blockSelf.contentView.mas_centerY).offset =-2;
        }];
        _orderLab.font =FontSize(15);
        
        
        _timesLab =[UILabel new];
        [self.contentView addSubview:_timesLab];
        [_timesLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(blockSelf.contentView).offset =0;
            make.right.equalTo(blockSelf.contentView).offset =-10;
            make.bottom.equalTo(blockSelf.contentView.mas_centerY).offset =-2;
        }];
        _timesLab.font =FontSize(15);
        _timesLab.textAlignment =NSTextAlignmentRight;

        
        
        _jiaoYiHaoLab =[UILabel new];
        [self.contentView addSubview:_jiaoYiHaoLab];
        [_jiaoYiHaoLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(blockSelf.contentView).offset =0;
            make.left.equalTo(blockSelf.contentView).offset =10;
            make.top.equalTo(blockSelf.contentView.mas_centerY).offset =2;
        }];
        _jiaoYiHaoLab.font =FontSize(15);
        
        _valuesLab =[UILabel new];
        [self.contentView addSubview:_valuesLab];
        [_valuesLab mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(blockSelf.contentView).offset =0;
            make.right.equalTo(blockSelf.contentView).offset =-10;
            make.top.equalTo(blockSelf.contentView.mas_centerY).offset =2;
        }];
        _valuesLab.font =FontSize(15);
        _valuesLab.textAlignment =NSTextAlignmentRight;
        
    }
    return self;
}
    
@end
