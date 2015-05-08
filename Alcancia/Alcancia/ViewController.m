
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        _cameraButton.enabled = NO;
        UIAlertView * error = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Tu dispositivo no tiene camara disponible" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
        [error show];
    }
}
- (IBAction)loadPhotoGallery:(id)sender {
    UIImagePickerController * galeria = [[UIImagePickerController alloc] init];
    galeria.delegate = self;
    galeria.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:galeria animated:YES completion:nil];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage * foto = info[UIImagePickerControllerOriginalImage];
    _imagePhoto.image = foto;
    if (picker.sourceType == UIImagePickerControllerSourceTypeCamera) {
        
        UIImageWriteToSavedPhotosAlbum(foto, nil, nil, nil);

    }
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)loadPhotoCamera:(id)sender {
    UIImagePickerController * camara = [[UIImagePickerController alloc] init];
    camara.sourceType = UIImagePickerControllerSourceTypeCamera;
    camara.delegate = self;
    [self presentViewController:camara animated:YES completion:nil];
}
- (IBAction)createCoin:(id)sender {
    UIImage * coin = [UIImage imageNamed:@"Coin-icon.png"];
    UIImageView * coinView = [[UIImageView alloc] initWithImage:coin];
    coinView.transform = CGAffineTransformScale(coinView.transform, 0.1, 0.1);
    coinView.center = CGPointMake(100, 100);
    coinView.userInteractionEnabled = YES;
    [coinView addGestureRecognizer:_panGesture];
    [self.view addSubview:coinView];
}
- (IBAction)moveCoin:(id)sender {
    UIPanGestureRecognizer * pan = sender;
    CGPoint translation = [pan translationInView:self.view];
    pan.view.center = CGPointMake(pan.view.center.x + translation.x, pan.view.center.y+ translation.y);
    [pan setTranslation:CGPointMake(0, 0) inView:self.view];
}

- (IBAction)rememberGame:(id)sender {
    UILocalNotification * aviso = [[UILocalNotification alloc] init];
    aviso.fireDate = [NSDate dateWithTimeIntervalSinceNow:10];
    aviso.alertBody = @"Recuerda ahorrar en tu alcancia";
    aviso.timeZone = [NSTimeZone defaultTimeZone];
    aviso.applicationIconBadgeNumber = [[UIApplication sharedApplication] applicationIconBadgeNumber ] + 1;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:aviso];
    
    
}
@end
