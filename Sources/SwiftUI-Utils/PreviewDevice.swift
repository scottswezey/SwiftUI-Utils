//
//  PreviewDevice.swift
//  SwiftUI Utils
//
//  Created by Scott on 12/31/19.
//  Copyright © 2019 Scott Swezey. All rights reserved.
//

import SwiftUI

extension View {
  func previewDevice(_ value: PreviewDevice.Devices) -> some View {
    let rawStringValue: String = value.rawValue
    
    return self
      .previewDevice(PreviewDevice(stringLiteral: rawStringValue))
      .previewDisplayName(rawStringValue)
  }
}

extension PreviewDevice {
  enum Devices: String, CaseIterable {
    // MARK: Mac
    case mac = "Mac"
    
    // MARK: iPhone
    case iPhoneSE = "iPhone SE"
    case iPhone7 = "iPhone 7"
    case iPhone7Plus = "iPhone 7 Plus"
    case iPhone8 = "iPhone 8"
    case iPhone8Plus = "iPhone 8 Plus"
    case iPhoneX = "iPhone X"
    case iPhoneXs = "iPhone Xs"
    case iPhoneXsMax = "iPhone Xs Max"
    case iPhoneXr = "iPhone Xʀ"
    
    // MARK: iPad & iPad Mini
    case iPadMini4 = "iPad mini 4"
    case iPadMiniGen5 = "iPad mini (5th generation)"
    
    case iPadAir2 = "iPad Air 2"
    case iPadAirGen3 = "iPad Air (3rd generation)"
    
    case iPadGen5 = "iPad (5th generation)"
    case iPadGen6 = "iPad (6th generation)"
    
    
    // MARK: iPad Pro
    case iPadPro97 = "iPad Pro (9.7-inch)"
    case iPadPro105 = "iPad Pro (10.5-inch)"
    case iPadPro11 = "iPad Pro (11-inch)"
    
    case iPadPro129 = "iPad Pro (12.9-inch)"
    case iPadPro129Gen2 = "iPad Pro (12.9-inch) (2nd generation)"
    case iPadPro129Gen3 = "iPad Pro (12.9-inch) (3rd generation)"
    
    // MARK: Apple TV
    case appleTV = "Apple TV"
    case appleTV4k = "Apple TV 4K"
    case appleTV4kAt1080p = "Apple TV 4K (at 1080p)"
    
    // MARK: Apple Watch
    case watchS2_38 = "Apple Watch Series 2 - 38mm"
    case watchS2_42 = "Apple Watch Series 2 - 42mm"
    case watchS3_38 = "Apple Watch Series 3 - 38mm"
    case watchS3_42 = "Apple Watch Series 3 - 42mm"
    
    case watchS4_40 = "Apple Watch Series 4 - 40mm"
    case watchS4_44 = "Apple Watch Series 4 - 44mm"
  }
}
