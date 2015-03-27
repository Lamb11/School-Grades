//
//  Alumno.m
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 17/03/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import "Alumno.h"

@interface Alumno ()

@end

@implementation Alumno

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

- (IBAction)btnAgregar:(id)sender {
    PFObject *alumnoObject = [PFObject objectWithClassName:@"alumno"];
    alumnoObject[@"nombre"] = self.txtNombre.text;
    alumnoObject[@"grupo"] = self.txtGrado.text;
    alumnoObject[@"clave"] = self.txtClave.text;
    if ([alumnoObject saveInBackground]) {
        self.txtNombre.text = @" ";
        self.txtGrado.text = @" ";
        self.txtClave.text = @" ";
        NSLog(@"Alumno Guardado");
    }
    
}
@end
