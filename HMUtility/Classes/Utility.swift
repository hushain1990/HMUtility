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
    
}
