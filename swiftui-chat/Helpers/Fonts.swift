//
//  Fonts.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import Foundation
import SwiftUI

extension Font{
    public static var customBody: Font{
        return Font.custom("LexendDeca-Regular", size: 14)
    }
    public static var button: Font{
        return Font.custom("LexendDeca-SemiBold", size: 14)
    }
    public static var customCaption: Font{
        return Font.custom("LexendDeca-Regular", size: 10)
    }
    public static var tabBar: Font{
        return Font.custom("LexendDeca-Regular", size: 12)
    }
    public static var settings: Font{
        return Font.custom("LexendDeca-Regular", size: 16)
    }
    public static var customTitle: Font{
        return Font.custom("LexendDeca-Bold", size: 23)
    }
    public static var pageTitle: Font{
        return Font.custom("LexendDeca-SemiBold", size: 33)
    }
    public static var chatHeading: Font{
        return Font.custom("LexendDeca-SemiBold", size: 16)
    }
}
