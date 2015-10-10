//
//  ASStudent.h
//  HomeWork_06
//
//  Created by MD on 06.02.15.
//  Copyright (c) 2015 hh. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {
    
    ASColorHairWhite,
    ASColorHairBlack,
    ASColorHairYellow,
    ASColorHairGreen
    
} ASColorHair;



typedef enum {
    
    ASColorEyeBlue,
    ASColorEyeBlack,
    ASColorEyeBrown,
    ASColorEyeGreen
    
} ASColorEyes;


typedef enum {
    
    ASGenderMale,
    ASGenderFemale
    
}  ASGender;




typedef enum {
 
    ASColorRaceWhite,
    ASColorRaceBlack,
    ASColorRaceYellow,
    ASColorRaceRed
    
} ASColorRace;




@interface ASStudent : NSObject

@property (assign , nonatomic) ASColorHair colorHair;
@property (assign , nonatomic) ASColorEyes colorEyes;
@property (assign , nonatomic) ASColorRace colorRace;

@property (assign , nonatomic) ASGender    gender;
@end
