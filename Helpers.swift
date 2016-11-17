//
//  Helpers.swift
//  Texas Ribs LoneStarClub
//
//  Created by Webchimp on 11/11/16.
//  Copyright © 2016 Webchimp. All rights reserved.
//

import UIKit

extension UITextView {
    
    func increseFont(new: Int = 1) {
        self.font = UIFont( name: (self.font?.fontName)!, size: (self.font?.pointSize)! + CGFloat(new) );
    }
}

extension UIImageView {
    
    func imageFromUrl(urlString: String) {

        if let url = NSURL(string: urlString) {
            let request = NSURLRequest(URL: url);
            NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: { (response, data, error) in
                self.image = UIImage(data: data!);
            })
        }
    }
}

class Helpers: NSObject {
    

}
