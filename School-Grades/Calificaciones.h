//
//  Calificaciones.h
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 29/03/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface Calificaciones : UIViewController<UITableViewDelegate, UIApplicationDelegate>
{
    NSArray *arraySubjects;
}

@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end
