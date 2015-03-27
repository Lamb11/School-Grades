//
//  Materia.m
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 26/03/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import "Materia.h"

@interface Materia ()

@end

@implementation Materia

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)guardarr:(id)sender {
    PFObject *alumnoObject = [PFObject objectWithClassName:@"materia"];
    alumnoObject[@"nombre"] = self.txtnombrem.text;
    alumnoObject[@"maestro"] = self.txtnommaestro.text;
    alumnoObject[@"grupo"] = self.grupon.text;
    if ([alumnoObject saveInBackground]) {
        self.txtnombrem.text = @" ";
        self.txtnommaestro.text = @" ";
        self.grupon.text = @" ";
        NSLog(@"Tarea Guardada");
    }
}
@end
