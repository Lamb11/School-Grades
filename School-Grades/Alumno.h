//
//  Alumno.h
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 17/03/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Alumno : UIViewController
- (IBAction)btnAgregar:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UITextField *txtGrado;
@property (strong, nonatomic) IBOutlet UITextField *txtClave;
@end
