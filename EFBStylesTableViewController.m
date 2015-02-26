//
//  EFBStylesTableViewController.m
//  Rumba
//
//  Created by Eduardo on 16/02/15.
//  Copyright (c) 2015 Edfer. All rights reserved.
//

#import "EFBStylesTableViewController.h"
#import "EFBStylesCount.h"
#import "EFBStyleViewController.h"

@interface EFBStylesTableViewController ()

//@property (strong, nonatomic) EFBStylesCount *model;

@end

@implementation EFBStylesTableViewController

-(id)initWithModel:(EFBStylesCount *)aModel
         withStyle:(UITableViewStyle)aStyle{
    
    if (self =[super initWithStyle:aStyle]) {
        _model = aModel;
        self.title = @"Suenan los cueros";
        
    }
    
    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

-(NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section{
    
    if (section == TUMBAO) {
        return @"El ritmo comodín";
    }else if (section == RUMBA){
        return @"La Rumba y sus tres etapas";
    }else if (section == BOMBA){
        return @"La Bomba puertorriqueña";
    }else if (section == PLENA){
        return @"La Plena puertorriqueña";
    }
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    
    if (section == TUMBAO) {
        return self.model.tumbaoCount;
    }else if (section == RUMBA){
        return self.model.rumbaCount;
    }else if (section == BOMBA){
        return self.model.bombaCount;
    }else if (section == PLENA){
        return self.model.plenaCount;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellId = @"Cell";
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle
                                     reuseIdentifier:cellId];
    }
    
    EFBStyles * aRythm = nil;
    
    if (indexPath.section == TUMBAO) {
        aRythm = [self.model tumbaoStyleAtIndex:indexPath.row];
    }else if (indexPath.section == RUMBA){
        aRythm = [self.model rumbaStyleAtIndex:indexPath.row];
    }else if (indexPath.section == BOMBA){
        aRythm = [self.model bombaStyleAtIndex:indexPath.row];
    }else if (indexPath.section == PLENA){
        aRythm = [self.model plenaStyleAtIndex:indexPath.row];
    }
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle
                                     reuseIdentifier:cellId];
    }
    
    cell.imageView.image = aRythm.photo;
    cell.textLabel.text = aRythm.rythmName;
    cell.detailTextLabel.text = aRythm.rythmName;
    cell.detailTextLabel.shadowColor = UITableViewRowAnimationFade;
    
    return cell;
}


#pragma mark - table delegate
-(void) tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //Averiguar el modelo
    EFBStyles *aRythm = nil;
    
    if (indexPath.section == TUMBAO) {
        aRythm = [self.model tumbaoStyleAtIndex:indexPath.row];
    }else if (indexPath.section == RUMBA){
        aRythm = [self.model rumbaStyleAtIndex:indexPath.row];
    }else if (indexPath.section == BOMBA){
        aRythm = [self.model bombaStyleAtIndex:indexPath.row];
    }else{
        aRythm = [self.model plenaStyleAtIndex:indexPath.row];
    }
    
    [self.delegate stylesTableViewController:self
                              didSelectStyle:aRythm];
    
    NSNotification *n =[NSNotification notificationWithName:STYLE_NOTIFICATION_NAME
                                                     object:self
                                                   userInfo:@{STYLE_KEY:aRythm}];
    
    [[NSNotificationCenter defaultCenter]postNotification:n];
    
}
         
#pragma mark - EFBStylesTableViewControllerDelegate
         
-(void) stylesTableViewController:(EFBStylesTableViewController *)stylesCountVC
                   didSelectStyle:(EFBStyles *)model{
    
    EFBStyleViewController *styleVC = [[EFBStyleViewController alloc]initWithModel:model];
    
    [self.navigationController pushViewController:styleVC
                                         animated:YES];
    
    
}
    
    
    
    
    /*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end


