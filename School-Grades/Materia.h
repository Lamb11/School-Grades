//
//  Materia.h
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 26/03/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Materia : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtnombrem;
@property (strong, nonatomic) IBOutlet UITextField *txtnommaestro;
@property (strong, nonatomic) IBOutlet UITextField *grupon;
- (IBAction)guardarr:(id)sender;

@end