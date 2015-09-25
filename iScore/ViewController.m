//
//  ViewController.m
//  iScore
//
//  Created by Vuong, Arron on 2015-09-24.
//  Copyright (c) 2015 Vuong, Arron. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>

@interface ViewController ()
- (IBAction)newButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *round;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    mainArray = [[NSArray alloc] initWithObjects:@"one",@"two",@"three",@"four",@"five", nil];
}

- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [mainArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"thisCell"];
    cell.textLabel.text = @"yo";//[mainArray objectAtIndex:indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    self.round.text =[[alertView textFieldAtIndex:0] text];
    
    
    NSLog(@"Entered: %@",[[alertView textFieldAtIndex:0] text]);
}


- (IBAction)newButton:(UIButton *)sender {
    
    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Bienvenue à iScore" message:@"hello bello" delegate:self cancelButtonTitle:@"Continuez" otherButtonTitles:nil];
    alert.alertViewStyle = UIAlertViewStylePlainTextInput;
    UITextField * alertTextField = [alert textFieldAtIndex:0];
    alertTextField.placeholder =@"Enter something..";
    [alert show];
}

@end