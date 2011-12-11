//  author: Billy Janssen
//  id: 000633542
//  date: 12/12/2011
//  filename: fieldViewStatsViewController.m

//  description: implementation of the fieldviewstatsviewcontroller class

//import necessary header files
#import "fieldViewStatsViewController.h"

@implementation fieldViewStatsViewController

//synthesize all variables
@synthesize _20LeftLabel, _20MiddleLabel, _20RightLabel,_25LeftLabel, _25MiddleLabel, _25RightLabel,_30LeftLabel, _30MiddleLabel, _30RightLabel,_35LeftLabel, _35MiddleLabel, _35RightLabel,_40LeftLabel, _40MiddleLabel, _40RightLabel, _45LeftLabel, _45MiddleLabel, _45RightLabel,_50LeftLabel, _50MiddleLabel, _50RightLabel,_55LeftLabel, _55MiddleLabel, _55RightLabel,_56LeftLabel, _56MiddleLabel, _56RightLabel;

@synthesize _20LeftView, _20MiddleView, _20RightView,_25LeftView, _25MiddleView, _25RightView,_30LeftView, _30MiddleView, _30RightView,_35LeftView, _35MiddleView, _35RightView,_40LeftView, _40MiddleView, _40RightView,_45LeftView, _45MiddleView, _45RightView,_50LeftView, _50MiddleView, _50RightView,_55LeftView, _55MiddleView, _55RightView,_56LeftView, _56MiddleView, _56RightView;

@synthesize greenViewColor;

@synthesize _20LeftMake, _20LeftMiss, _20MiddleMake, _20MiddleMiss, _20RightMake, _20RightMiss;
@synthesize _25LeftMake, _25LeftMiss, _25MiddleMake, _25MiddleMiss, _25RightMake, _25RightMiss;
@synthesize _30LeftMake, _30LeftMiss, _30MiddleMake, _30MiddleMiss, _30RightMake, _30RightMiss;
@synthesize _35LeftMake, _35LeftMiss, _35MiddleMake, _35MiddleMiss, _35RightMake, _35RightMiss;
@synthesize _40LeftMake, _40LeftMiss, _40MiddleMake, _40MiddleMiss, _40RightMake, _40RightMiss;
@synthesize _45LeftMake, _45LeftMiss, _45MiddleMake, _45MiddleMiss, _45RightMake, _45RightMiss;
@synthesize _50LeftMake, _50LeftMiss, _50MiddleMake, _50MiddleMiss, _50RightMake, _50RightMiss;
@synthesize _55LeftMake, _55LeftMiss, _55MiddleMake, _55MiddleMiss, _55RightMake, _55RightMiss;
@synthesize _56LeftMake, _56LeftMiss, _56MiddleMake, _56MiddleMiss, _56RightMake, _56RightMiss;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Field";
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    greenViewColor = [[UIColor alloc] initWithRed:0 green:192 blue:20 alpha:1.0];
    
    //create variables for the percentages at each distance and direction and check to make sure they took kicks from that distance.  if they did calculate the percentages and set the label and gradient color of the each view
    double _20LeftMade;
    int _20LeftMadeInt;
    if (_20LeftMake == 0 && _20LeftMiss == 0) {
        _20LeftMade = 0;
        _20LeftMadeInt = 0;
    }
    else {
        _20LeftMade = (_20LeftMake / (_20LeftMake + _20LeftMiss));
        _20LeftMadeInt = (int) (_20LeftMade * 100);
    }
    self._20LeftLabel.text = [NSString stringWithFormat:@"%d %%", _20LeftMadeInt];
    self._20LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_20LeftMade];
    
    double _20MiddleMade;
    int _20MiddleMadeInt;
    if (_20MiddleMake == 0 && _20MiddleMiss == 0) {
        _20MiddleMade = 0;
        _20MiddleMadeInt = 0;
    }
    else {
        _20MiddleMade = (_20MiddleMake / (_20MiddleMake + _20MiddleMiss));
        _20MiddleMadeInt = (int) (_20MiddleMade * 100);
    }
    self._20MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _20MiddleMadeInt];
    self._20MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_20MiddleMade];
    
    double _20RightMade;
    int _20RightMadeInt;
    if (_20RightMake == 0 && _20RightMiss == 0) {
        _20RightMade = 0;
        _20RightMadeInt = 0;
    }
    else {
        _20RightMade = (_20RightMake / (_20RightMake + _20RightMiss));
        _20RightMadeInt = (int) (_20RightMade * 100);
    }
    self._20RightLabel.text = [NSString stringWithFormat:@"%d %%", _20RightMadeInt];
    self._20RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_20RightMade];
    
    
    double _25LeftMade;
    int _25LeftMadeInt;
    if (_25LeftMake == 0 && _25LeftMiss == 0) {
        _25LeftMade = 0;
        _25LeftMadeInt = 0;
    }
    else {
        _25LeftMade = (_25LeftMake / (_25LeftMake + _25LeftMiss));
        _25LeftMadeInt = (int) (_25LeftMade * 100);
    }
    self._25LeftLabel.text = [NSString stringWithFormat:@"%d %%", _25LeftMadeInt];
    self._25LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_25LeftMade];
    
    double _25MiddleMade;
    int _25MiddleMadeInt;
    if (_25MiddleMake == 0 && _25MiddleMiss == 0) {
        _25MiddleMade = 0;
        _25MiddleMadeInt = 0;
    }
    else {
        _25MiddleMade = (_25MiddleMake / (_25MiddleMake + _25MiddleMiss));
        _25MiddleMadeInt = (int) (_25MiddleMade * 100);
    }
    self._25MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _25MiddleMadeInt];
    self._25MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_25MiddleMade];
    
    double _25RightMade;
    int _25RightMadeInt;
    if (_25RightMake == 0 && _25RightMiss == 0) {
        _25RightMade = 0;
        _25RightMadeInt = 0;
    }
    else {
        _25RightMade = (_25RightMake / (_25RightMake + _25RightMiss));
        _25RightMadeInt = (int) (_25RightMade * 100);
    }
    self._25RightLabel.text = [NSString stringWithFormat:@"%d %%", _25RightMadeInt];
    self._25RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_25RightMade];
    
    
    double _30LeftMade;
    int _30LeftMadeInt;
    if (_30LeftMake == 0 && _30LeftMiss == 0) {
        _30LeftMade = 0;
        _30LeftMadeInt = 0;
    }
    else {
        _30LeftMade = (_30LeftMake / (_30LeftMake + _30LeftMiss));
        _30LeftMadeInt = (int) (_30LeftMade * 100);
    }
    self._30LeftLabel.text = [NSString stringWithFormat:@"%d %%", _30LeftMadeInt];
    self._30LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_30LeftMade];
    
    double _30MiddleMade;
    int _30MiddleMadeInt;
    if (_30MiddleMake == 0 && _30MiddleMiss == 0) {
        _30MiddleMade = 0;
        _30MiddleMadeInt = 0;
    }
    else {
        _30MiddleMade = (_30MiddleMake / (_30MiddleMake + _30MiddleMiss));
        _30MiddleMadeInt = (int) (_30MiddleMade * 100);
    }
    self._30MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _30MiddleMadeInt];
    self._30MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_30MiddleMade];
    
    double _30RightMade;
    int _30RightMadeInt;
    if (_30RightMake == 0 && _30RightMiss == 0) {
        _30RightMade = 0;
        _30RightMadeInt = 0;
    }
    else {
        _30RightMade = (_30RightMake / (_30RightMake + _30RightMiss));
        _30RightMadeInt = (int) (_30RightMade * 100);
    }
    self._30RightLabel.text = [NSString stringWithFormat:@"%d %%", _30RightMadeInt];
    self._30RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_30RightMade];
    
    
    double _35LeftMade;
    int _35LeftMadeInt;
    if (_35LeftMake == 0 && _35LeftMiss == 0) {
        _35LeftMade = 0;
        _35LeftMadeInt = 0;
    }
    else {
        _35LeftMade = (_35LeftMake / (_35LeftMake + _35LeftMiss));
        _35LeftMadeInt = (int) (_35LeftMade * 100);
    }
    self._35LeftLabel.text = [NSString stringWithFormat:@"%d %%", _35LeftMadeInt];
    self._35LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_35LeftMade];
    
    double _35MiddleMade;
    int _35MiddleMadeInt;
    if (_35MiddleMake == 0 && _35MiddleMiss == 0) {
        _35MiddleMade = 0;
        _35MiddleMadeInt = 0;
    }
    else {
        _35MiddleMade = (_35MiddleMake / (_35MiddleMake + _35MiddleMiss));
        _35MiddleMadeInt = (int) (_35MiddleMade * 100);
    }
    self._35MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _35MiddleMadeInt];
    self._35MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_35MiddleMade];
    
    double _35RightMade;
    int _35RightMadeInt;
    if (_35RightMake == 0 && _35RightMiss == 0) {
        _35RightMade = 0;
        _35RightMadeInt = 0;
    }
    else {
        _35RightMade = (_35RightMake / (_35RightMake + _35RightMiss));
        _35RightMadeInt = (int) (_35RightMade * 100);
    }
    self._35RightLabel.text = [NSString stringWithFormat:@"%d %%", _35RightMadeInt];
    self._35RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_35RightMade];
    
    
    double _40LeftMade;
    int _40LeftMadeInt;
    if (_40LeftMake == 0 && _40LeftMiss == 0) {
        _40LeftMade = 0;
        _40LeftMadeInt = 0;
    }
    else {
        _40LeftMade = (_40LeftMake / (_40LeftMake + _40LeftMiss));
        _40LeftMadeInt = (int) (_40LeftMade * 100);
    }
    self._40LeftLabel.text = [NSString stringWithFormat:@"%d %%", _40LeftMadeInt];
    self._40LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_40LeftMade];
    
    double _40MiddleMade;
    int _40MiddleMadeInt;
    if (_40MiddleMake == 0 && _40MiddleMiss == 0) {
        _40MiddleMade = 0;
        _40MiddleMadeInt = 0;
    }
    else {
        _40MiddleMade = (_40MiddleMake / (_40MiddleMake + _40MiddleMiss));
        _40MiddleMadeInt = (int) (_40MiddleMade * 100);
    }
    self._40MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _40MiddleMadeInt];
    self._40MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_40MiddleMade];
    
    double _40RightMade;
    int _40RightMadeInt;
    if (_40RightMake == 0 && _40RightMiss == 0) {
        _40RightMade = 0;
        _40RightMadeInt = 0;
    }
    else {
        _40RightMade = (_40RightMake / (_40RightMake + _40RightMiss));
        _40RightMadeInt = (int) (_40RightMade * 100);
    }
    self._40RightLabel.text = [NSString stringWithFormat:@"%d %%", _40RightMadeInt];
    self._40RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_40RightMade];
    
    
    double _45LeftMade;
    int _45LeftMadeInt;
    if (_45LeftMake == 0 && _45LeftMiss == 0) {
        _45LeftMade = 0;
        _45LeftMadeInt = 0;
    }
    else {
        _45LeftMade = (_45LeftMake / (_45LeftMake + _45LeftMiss));
        _45LeftMadeInt = (int) (_45LeftMade * 100);
    }
    self._45LeftLabel.text = [NSString stringWithFormat:@"%d %%", _45LeftMadeInt];
    self._45LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_45LeftMade];
    
    double _45MiddleMade;
    int _45MiddleMadeInt;
    if (_45MiddleMake == 0 && _45MiddleMiss == 0) {
        _45MiddleMade = 0;
        _45MiddleMadeInt = 0;
    }
    else {
        _45MiddleMade = (_45MiddleMake / (_45MiddleMake + _45MiddleMiss));
        _45MiddleMadeInt = (int) (_45MiddleMade * 100);
    }
    self._45MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _45MiddleMadeInt];
    self._45MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_45MiddleMade];
    
    double _45RightMade;
    int _45RightMadeInt;
    if (_45RightMake == 0 && _45RightMiss == 0) {
        _45RightMade = 0;
        _45RightMadeInt = 0;
    }
    else {
        _45RightMade = (_45RightMake / (_45RightMake + _45RightMiss));
        _45RightMadeInt = (int) (_45RightMade * 100);
    }
    self._45RightLabel.text = [NSString stringWithFormat:@"%d %%", _45RightMadeInt];
    self._45RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_45RightMade];
    
    
    double _50LeftMade;
    int _50LeftMadeInt;
    if (_50LeftMake == 0 && _50LeftMiss == 0) {
        _50LeftMade = 0;
        _50LeftMadeInt = 0;
    }
    else {
        _50LeftMade = (_50LeftMake / (_50LeftMake + _50LeftMiss));
        _50LeftMadeInt = (int) (_50LeftMade * 100);
    }
    self._50LeftLabel.text = [NSString stringWithFormat:@"%d %%", _50LeftMadeInt];
    self._50LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_50LeftMade];
    
    double _50MiddleMade;
    int _50MiddleMadeInt;
    if (_50MiddleMake == 0 && _50MiddleMiss == 0) {
        _50MiddleMade = 0;
        _50MiddleMadeInt = 0;
    }
    else {
        _50MiddleMade = (_50MiddleMake / (_50MiddleMake + _50MiddleMiss));
        _50MiddleMadeInt = (int) (_50MiddleMade * 100);
    }
    self._50MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _50MiddleMadeInt];
    self._50MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_50MiddleMade];
    
    double _50RightMade;
    int _50RightMadeInt;
    if (_50RightMake == 0 && _50RightMiss == 0) {
        _50RightMade = 0;
        _50RightMadeInt = 0;
    }
    else {
        _50RightMade = (_50RightMake / (_50RightMake + _50RightMiss));
        _50RightMadeInt = (int) (_50RightMade * 100);
    }
    self._50RightLabel.text = [NSString stringWithFormat:@"%d %%", _50RightMadeInt];
    self._50RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_50RightMade];
    
    
    double _55LeftMade;
    int _55LeftMadeInt;
    if (_55LeftMake == 0 && _55LeftMiss == 0) {
        _55LeftMade = 0;
        _55LeftMadeInt = 0;
    }
    else {
        _55LeftMade = (_55LeftMake / (_55LeftMake + _55LeftMiss));
        _55LeftMadeInt = (int) (_55LeftMade * 100);
    }
    self._55LeftLabel.text = [NSString stringWithFormat:@"%d %%", _55LeftMadeInt];
    self._55LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_55LeftMade];
    
    double _55MiddleMade;
    int _55MiddleMadeInt;
    if (_55MiddleMake == 0 && _55MiddleMiss == 0) {
        _55MiddleMade = 0;
        _55MiddleMadeInt = 0;
    }
    else {
        _55MiddleMade = (_55MiddleMake / (_55MiddleMake + _55MiddleMiss));
        _55MiddleMadeInt = (int) (_55MiddleMade * 100);
    }
    self._55MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _55MiddleMadeInt];
    self._55MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_55MiddleMade];
    
    double _55RightMade;
    int _55RightMadeInt;
    if (_55RightMake == 0 && _55RightMiss == 0) {
        _55RightMade = 0;
        _55RightMadeInt = 0;
    }
    else {
        _55RightMade = (_55RightMake / (_55RightMake + _55RightMiss));
        _55RightMadeInt = (int) (_55RightMade * 100);
    }
    self._55RightLabel.text = [NSString stringWithFormat:@"%d %%", _55RightMadeInt];
    self._55RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_55RightMade];
    
    
    double _56LeftMade;
    int _56LeftMadeInt;
    if (_56LeftMake == 0 && _56LeftMiss == 0) {
        _56LeftMade = 0;
        _56LeftMadeInt = 0;
    }
    else {
        _56LeftMade = (_56LeftMake / (_56LeftMake + _56LeftMiss));
        _56LeftMadeInt = (int) (_56LeftMade * 100);
    }
    self._56LeftLabel.text = [NSString stringWithFormat:@"%d %%", _56LeftMadeInt];
    self._56LeftView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_56LeftMade];
    
    double _56MiddleMade;
    int _56MiddleMadeInt;
    if (_56MiddleMake == 0 && _56MiddleMiss == 0) {
        _56MiddleMade = 0;
        _56MiddleMadeInt = 0;
    }
    else {
        _56MiddleMade = (_56MiddleMake / (_56MiddleMake + _56MiddleMiss));
        _56MiddleMadeInt = (int) (_56MiddleMade * 100);
    }
    self._56MiddleLabel.text = [NSString stringWithFormat:@"%d %%", _56MiddleMadeInt];
    self._56MiddleView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_56MiddleMade];
    
    double _56RightMade;
    int _56RightMadeInt;
    if (_56RightMake == 0 && _56RightMiss == 0) {
        _56RightMade = 0;
        _56RightMadeInt = 0;
    }
    else {
        _56RightMade = (_56RightMake / (_56RightMake + _56RightMiss));
        _56RightMadeInt = (int) (_56RightMade * 100);
    }
    self._56RightLabel.text = [NSString stringWithFormat:@"%d %%", _56RightMadeInt];
    self._56RightView.backgroundColor = [UIColor colorWithRed:0 green:192 blue:0 alpha:_56RightMade];
}

- (void)viewDidUnload
{
    [_25LeftView release];
    _25LeftView = nil;
    [_25RightView release];
    _25RightView = nil;
    [_25RightView release];
    _25RightView = nil;
    [_25MiddleView release];
    _25MiddleView = nil;
    [_25LeftLabel release];
    _25LeftLabel = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [_25LeftView release];
    [_25RightView release];
    [_25RightView release];
    [_25MiddleView release];
    [_25LeftLabel release];
    [super dealloc];
}
@end
