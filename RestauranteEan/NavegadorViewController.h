#import <UIKit/UIKit.h>
@interface NavegadorViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *browser;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *animacion;
@end
