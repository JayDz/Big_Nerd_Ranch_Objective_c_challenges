//  Chapter 32 Challenge #1
//  BNRDocument.h
//  TahDoodle

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>

@property (nonatomic) NSMutableArray* tasks;
@property (nonatomic) IBOutlet NSTableView* taskTable;

-(IBAction)addTask:(id)sender;
-(IBAction)delTask:(id)sender; // Method which handles task deletion.

@end
