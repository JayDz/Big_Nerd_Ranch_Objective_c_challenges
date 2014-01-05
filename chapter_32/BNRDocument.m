//  Chapter 32 Challenge #1
//  BNRDocument.m
//  TahDoodle

#import "BNRDocument.h"

@implementation BNRDocument

#pragma mark Actions

-(IBAction)addTask:(id)sender
{
	if (!self.tasks) {
		self.tasks = [NSMutableArray array];
	}
	
	[self.tasks addObject:@"New Item"];
	[self.taskTable reloadData];
	
	[self updateChangeCount:NSChangeDone];
}

// Method to handle task deletion.
-(IBAction)delTask:(id)sender
{
	if (self.tasks) {
		NSInteger selectedRow = [self.taskTable selectedRow];
		if (selectedRow != -1) {
			[self.tasks removeObjectAtIndex:selectedRow];
			[self.taskTable reloadData];
			
			[self updateChangeCount:NSChangeDone];
		}
	}
}

#pragma mark Override NSDocument methods

-(NSData*)dataOfType:(NSString *)typeName error:(NSError *__autoreleasing *)outError
{
	if (!self.tasks) {
		self.tasks = [NSMutableArray array];
	}
	
	NSData* data = [NSPropertyListSerialization dataWithPropertyList:self.tasks format:NSPropertyListXMLFormat_v1_0 options:0 error:outError];
	
	return data;
}

- (BOOL)readFromData:(NSData *)data ofType:(NSString *)typeName error:(NSError **)outError
{
	self.tasks = [NSPropertyListSerialization propertyListWithData:data options:NSPropertyListMutableContainers format:NULL error:outError];
	
	return (self.tasks != nil);
}

#pragma mark Data Source Methods

-(NSInteger) numberOfRowsInTableView:(NSTableView *)tableView
{
	return [self.tasks count];
}

-(id) tableView:(NSTableView *)tableView objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
	return [self.tasks objectAtIndex:row];
}

-(void) tableView:(NSTableView *)tableView setObjectValue:(id)object forTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
	[self.tasks replaceObjectAtIndex:row withObject:object];
	
	[self updateChangeCount:NSChangeDone];
}

#pragma mark NSDocument overrides

- (id)init
{
    self = [super init];
    if (self) {
		// Add your subclass-specific initialization here.
    }
    return self;
}

- (NSString *)windowNibName
{
	// Override returning the nib file name of the document
	// If you need to use a subclass of NSWindowController or if your document supports multiple NSWindowControllers, you should remove this method and override -makeWindowControllers instead.
	return @"BNRDocument";
}

- (void)windowControllerDidLoadNib:(NSWindowController *)aController
{
	[super windowControllerDidLoadNib:aController];
	// Add any code here that needs to be executed once the windowController has loaded the document's window.
}

+ (BOOL)autosavesInPlace
{
    return YES;
}

@end