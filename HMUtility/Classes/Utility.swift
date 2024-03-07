//
//  Utility.swift
//  HMUtility
//
//  Created by Hushain Khan on 07/03/24.
//

import Foundation

public class Utility {
    
    public class func isValidEmail(_ email : String) -> Bool {
        let rex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", rex)
        return emailTest.evaluate(with: email)
    }
    
    public class func isPhoneNumber(_ phone : String) -> Bool {
        let regEx = "[0-9]{10}"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", regEx)
        return phoneTest.evaluate(with: phone)
    }
    
    public class func isPhoneNumberUAE(_ phone : String) -> Bool {
        let regEx = "[0-9]{9,10}"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", regEx)
        return phoneTest.evaluate(with: phone)
    }
    
    public class func isOTPNumber(_ otp : String) -> Bool {
        let regEx = "[0-9]{4}"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", regEx)
        return phoneTest.evaluate(with: otp)
    }
    
}

public class AlertClass {

    //Simple Alert
    public class func showAlert(title:String, message:String, vc:UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
    
    //Confirmation Alert
    public class func showSimpleConfirmationAlert(title:String, message:String, vc:UIViewController, okButtonTitle :String = "Yes", preferredStyle : UIAlertController.Style = .alert , isShowButtonDismiss:Bool = false, handler:@escaping(Bool)->Void) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle:preferredStyle)
    
        alert.addAction(UIAlertAction(title: okButtonTitle, style: .default, handler: { (action) in
            handler(true)
            alert.dismiss(animated: true, completion: nil)
        }))
        
        if preferredStyle == .actionSheet && isShowButtonDismiss {
            alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        }
        
        vc.present(alert, animated: true, completion: nil)
    }
    
    //Confirmation Alert
    public class func showConfirmationAlert(title:String, message:String, vc:UIViewController, okButtonTitle :String = "Yes", cancelButtonTitle:String = "No", preferredStyle : UIAlertController.Style = .alert , isShowButtonDismiss:Bool = false, handler:@escaping(Bool)->Void) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle:preferredStyle)
        
        alert.addAction(UIAlertAction(title: cancelButtonTitle, style: .default, handler: { (action) in
            handler(false)
            alert.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: okButtonTitle, style: .default, handler: { (action) in
            handler(true)
            alert.dismiss(animated: true, completion: nil)
        }))
        
        if preferredStyle == .actionSheet && isShowButtonDismiss {
            alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: nil))
        }
        
        vc.present(alert, animated: true, completion: nil)
    }
    
    //Action For Delete
    public class func showDeleteAlert(title:String, message:String, vc:UIViewController, handler:@escaping(Bool)->Void) {
        
        var alert : UIAlertController
        if UI_USER_INTERFACE_IDIOM() == .pad {
            alert = UIAlertController(title: title, message: message, preferredStyle:.alert)
        } else {alert = UIAlertController(title: title, message: message, preferredStyle:.actionSheet)}
        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (action) in
            handler(true)
            alert.dismiss(animated: true, completion: nil)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        
        vc.present(alert, animated: true, completion: nil)
    }
    
}
