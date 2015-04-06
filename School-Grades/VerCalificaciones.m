//
//  VerCalificaciones.m
//  School-Grades
//
//  Created by Alberto Cordero Arellanes on 01/04/15.
//  Copyright (c) 2015 AlbertoCorderoArellanes. All rights reserved.
//

#import "VerCalificaciones.h"
#import "lisCali.h"

NSMutableArray *datos;
NSString *idTemp;
NSString *idSelect;
int indice;

@interface VerCalificaciones ()

@end



@implementation VerCalificaciones
@synthesize tableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        [self performSelector:@selector(listarconParsee)];
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

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return arraySubjects.count;
    // NSLog(@"%lu",(unsigned long)arraySubjects.count);
    
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 55;
}

//-------------------------------------------------------------------------------

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"lisCali";
    lisCali *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    PFObject *tempObject = [arraySubjects objectAtIndex:indexPath.row];
    cell.lblmaestro.text = [tempObject objectForKey:@"nombrep"];
    cell.lblmateria.text = [tempObject objectForKey:@"materia"];
    cell.calificacion.text = [tempObject objectForKey:@"calificacion"];
    return cell;
}


-(void) tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray *dato = datos[indexPath.row];
    
    
   // idSelect = [dato objectAtIndex:0];
   // idTemp = [dato objectAtIndex:0];
    NSLog(@"hola");
    
    //[self performSegueWithIdentifier:@"Agregar" sender:idTemp];
}


-(void) listarconParsee{
    PFQuery *query =[PFQuery queryWithClassName:@"calificaciones"];
    //[query unpinInBackground];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error)
        {
            arraySubjects = [[NSArray alloc] initWithArray:objects];
        }
        [tableView reloadData];
    }];
    //   [query unpinInBackground];
    
    
}


@end
