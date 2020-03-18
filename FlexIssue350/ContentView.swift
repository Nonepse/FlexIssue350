//
//  ContentView.swift
//  FlexIssue350
//
//  Created by Pierre Espenan on 11/26/19.
//  Copyright © 2019 Pierre Espenan. All rights reserved.
//

import SwiftUI

import FLEX
import Alamofire
import AFNetworking

struct ContentView: View {
    var body: some View {
        Button(action: {
            Alamofire.request("https://httpbin.org/get").response { _ in
                print("Alamofire GET done")
                
                AFHTTPSessionManager().get("https://httpbin.org/get", parameters: nil, success: { (_, _) in
                    print("AFHTTPSessionManager GET done")
                    
                    FLEXManager.shared()?.showExplorer()
                }) { (_, _) in
                    // error
                }
            }
        }) {
            Text("Make request(s) & show Flex")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
