//
//  Tarea.h
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 23/03/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Tarea : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtNombreTarea;
@property (strong, nonatomic) IBOutlet UITextView *txtdescripcion;
@property (strong, nonatomic) IBOutlet UITextField *gradoo;
- (IBAction)Agregar:(id)sender;

@end
