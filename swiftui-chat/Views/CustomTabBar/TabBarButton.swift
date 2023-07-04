//
//  TabBarButton.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import SwiftUI

struct TabBarButton: View {
    var image:String;
    var caption:String;
    var imageColor:Color = Color.icon_primary;
    var captionColor:Color = Color.icon_primary;
    var body: some View {
        VStack{
            Image(systemName: image).resizable().scaledToFit().frame(width:24, height:24).foregroundColor(imageColor).padding(1)
            Text(caption).font(Font.tabBar).foregroundStyle(captionColor)
        }
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        TabBarButton(image: "person", caption: "Contacts")
    }
}
