//
//  AHRPostsTableViewController.m
//  Posts
//
//  Created by Anton Rivera on 2/11/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "AHRPostsTableViewController.h"
#import "AHRPosts.h"

@interface AHRPostsTableViewController ()

@end

@implementation AHRPostsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDate *date = [NSDate date];
    
    NSDictionary *post1Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Bob", @"userName", @"Bob's First Post", @"title", @"This is my first post.  Hello I'm Bob.", @"content", [date dateByAddingTimeInterval:1000], @"timeStamp", nil];
    AHRPosts *post1 = [[AHRPosts alloc] initWithDictionary:post1Dictionary];
    NSDictionary *post2Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Sue", @"userName", @"Sue's First Post", @"title", @"This is my first post.  Hello I'm Sue.", @"content", [date dateByAddingTimeInterval:5000], @"timeStamp", nil];
    AHRPosts *post2 = [[AHRPosts alloc] initWithDictionary:post2Dictionary];
    NSDictionary *post3Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Jack", @"userName", @"Jack's First Post", @"title", @"This is my first post.  Hello I'm Jack.", @"content", date, @"timeStamp", nil];
    AHRPosts *post3 = [[AHRPosts alloc] initWithDictionary:post3Dictionary];
    NSDictionary *post4Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Curly", @"userName", @"Curly's First Post", @"title", @"This is my first post.  Hello I'm Curly.", @"content", date, @"timeStamp", nil];
    AHRPosts *post4 = [[AHRPosts alloc] initWithDictionary:post4Dictionary];
    NSDictionary *post5Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Moe", @"userName", @"Moe's First Post", @"title", @"This is my first post.  Hello I'm Moe.", @"content", date, @"timeStamp", nil];
    AHRPosts *post5 = [[AHRPosts alloc] initWithDictionary:post5Dictionary];
    NSDictionary *post6Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Larry", @"userName", @"Larry's First Post", @"title", @"This is my first post.  Hello I'm Larry.", @"content", date, @"timeStamp", nil];
    AHRPosts *post6 = [[AHRPosts alloc] initWithDictionary:post6Dictionary];
    NSDictionary *post7Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Sally", @"userName", @"Sally's First Post", @"title", @"This is my first post.  Hello I'm Sally.", @"content", date, @"timeStamp", nil];
    AHRPosts *post7 = [[AHRPosts alloc] initWithDictionary:post7Dictionary];
    NSDictionary *post8Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Ben", @"userName", @"Ben's First Post", @"title", @"This is my first post.  Hello I'm Ben.", @"content", date, @"timeStamp", nil];
    AHRPosts *post8 = [[AHRPosts alloc] initWithDictionary:post8Dictionary];
    NSDictionary *post9Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Grace", @"userName", @"Grace's First Post", @"title", @"This is my first post.  Hello I'm Grace.", @"content", date, @"timeStamp", nil];
    AHRPosts *post9 = [[AHRPosts alloc] initWithDictionary:post9Dictionary];
    NSDictionary *post10Dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Jill", @"userName", @"Jill's First Post", @"title", @"This is my first post.  Hello I'm Jill.", @"content", date, @"timeStamp", nil];
    AHRPosts *post10 = [[AHRPosts alloc] initWithDictionary:post10Dictionary];
    
    self.posts = [NSArray arrayWithObjects:post1, post2, post3, post4, post5, post6, post7, post8, post9, post10, nil];

    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    AHRPosts *post = [self.posts objectAtIndex:indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@", post.title, post.content];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", post.userName, post.timeStamp];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
