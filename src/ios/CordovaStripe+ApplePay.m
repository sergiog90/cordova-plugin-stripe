#import "CordovaStripe+ApplePay.h"
#import "CordovaStripe.h"
@import Stripe;

@implementation CordovaStripe (ApplePay)
static NSString* const PLUGIN_NAME = @"CordovaStripe";
- (void)paymentAuthorizationViewController:(PKPaymentAuthorizationViewController *)controller didAuthorizePayment:(PKPayment *)payment completion:(void (^)(PKPaymentAuthorizationStatus))completion {
    [self processPayment:controller didAuthorizePayment:payment completion:completion];
}

- (void)paymentAuthorizationViewControllerDidFinish:(PKPaymentAuthorizationViewController *)controller {
    [self.viewController dismissViewControllerAnimated:YES completion:nil];
}

@end
