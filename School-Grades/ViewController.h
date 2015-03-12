//
//  ViewController.h
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 10/03/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)btnAceptar:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UITextField *txtContrasena;

@end

