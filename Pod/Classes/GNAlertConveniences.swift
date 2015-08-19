import UIKit

public extension UIViewController {
    
    public typealias GNVoidCompletionBlock = Void -> Void
    
    // The okActionBlock is called as the action of the "Ok" button.
    // The okActionBlock's corresponding UIAlertAction simply dismisses the alert.
    // This block would be a good place to do whatever you want to do once the alert has been dismissed, if anything at all.
    public func showAlertControllerWithTitle(title:String, message:String, okActionBlock:GNVoidCompletionBlock? = nil) {
        
        let okTitle = NSLocalizedString("Ok", comment: "Ok, Alert Title")
        let ok = UIAlertAction(title: okTitle, style: .Default) { (action) in
            okActionBlock?()
        }
        
        showAlertControllerWithTitle(title, message: message, actions: [ok])
    }
    
    // The okActionBlock is called as the action of the "Ok" button. The cancelActionBlock is called as the action of the "Cancel" button.
    // The okActionBlock cannot be nil here because this is where you'll perform the action that the user can possibly say no to.
    // The cancelActionBlock is now the action with an optional block and simply dismisses the alert.
    public func showAlertControllerWithTitle(title:String, message:String, okActionBlock:GNVoidCompletionBlock, cancelActionBlock:GNVoidCompletionBlock? = nil) {
        
        let okTitle = NSLocalizedString("Ok", comment: "Ok, Alert Title")
        let ok = UIAlertAction(title: okTitle, style: .Default) { (action) in
            okActionBlock()
        }
        
        let cancelTitle = NSLocalizedString("Cancel", comment: "Cancel, Alert Title")
        let cancel = UIAlertAction(title: cancelTitle, style: .Cancel) { (action) -> Void in
            cancelActionBlock?()
        }
        
        showAlertControllerWithTitle(title, message: message, actions: [ok, cancel])
    }
    
    public func showAlertControllerWithTitle(title:String, message:String, actions:[UIAlertAction]) {
        dispatch_async(dispatch_get_main_queue()) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
            for action in actions {
                alert.addAction(action)
            }
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
}