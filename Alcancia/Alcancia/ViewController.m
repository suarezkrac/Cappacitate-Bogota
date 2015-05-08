
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
@end
