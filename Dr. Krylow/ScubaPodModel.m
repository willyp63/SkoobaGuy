//
//  ScubaPodModel.m
//  Dr. Krylow
//
//  Created by Wil Pirino on 11/30/15.
//  Copyright © 2015 My Organization. All rights reserved.
//

#import "ScubaPodModel.h"

@implementation ScubaPodModel

//type
static CharacterType _type = SCUBA_POD;
-(CharacterType)type{return _type;}

//animation propperties
static NSString *_spriteSheetName = @"scuba_pod-01";
static int _numberOfAnimations = 1;

static int _animationLengths[] = {1};
static IntPoint _animationOffsets[] = {{0,-55}};
static IntPoint _animationSizes[] = {{80,120}};
static double _animationDurations[] = {1.0};

-(NSString *)spriteSheetName{return _spriteSheetName;}
-(int)numberOfAnimations{return _numberOfAnimations;}
-(int *)animationLengths{return _animationLengths;}
-(IntPoint *)animationOffsets{return _animationOffsets;}
-(IntPoint *)animationSizes{return _animationSizes;}
-(double *)animationDurations{return _animationDurations;}

-(id)initWithLocation:(IntPoint)location{
    self = [super initWithLocation:location];
    if (self) {
        //set animation number
        self.direction = UP;
        self.animationNumber = 0;
        self.size = IntPointMake(2, 2);
    }
    return self;
}

-(BOOL)updateWithCharacters:(NSMutableArray<CharacterModel *> *)characters table:(__strong CharacterModel *[LEVEL_SIZE][LEVEL_SIZE])table{
    self.animationOption = DONT_ANIMATE;
    return YES;
}

@end
