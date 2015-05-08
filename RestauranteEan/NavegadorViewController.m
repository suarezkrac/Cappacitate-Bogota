
#import "NavegadorViewController.h"

@interface NavegadorViewController ()

@end

@implementation NavegadorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _browser.hidden = YES;
    [_animacion startAnimating];
    NSURL * url = [NSURL URLWithString:@"http://apple.com"];
    [_browser loadRequest:[NSURLRequest requestWithURL:url]];
    _browser.delegate = self;
}
-(void)webViewDidStartLoad:(UIWebView *)webView{
    _browser.hidden = YES;
    [_animacion startAnimating];
}
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    _browser.hidden = NO;
    [_animacion stopAnimating];
    _animacion.hidden = YES;
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

@end
