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
