//
//  CustomTabBar.swift
//  swiftui-chat
//
//  Created by Siddhant Paliwal on 7/4/23.
//

import SwiftUI

enum tabs:Int{
    case chats = 0;
    case contacts = 1;
}
struct CustomTabBar: View {
    @Binding var selectedTab:tabs;
    var body: some View {
        VStack{
            HStack{
                Spacer();
                Button{
                    selectedTab = .chats;
                }
            label:{
                
                VStack{
                    if selectedTab == .chats{
                        TabBarButton(image: "bubble.left.fill", caption: "Chats")
                    }
                    else{
                        TabBarButton(image: "bubble.left", caption: "Chats")
                    }
                }
                }
                Spacer();
                Button{
                    
                }label:{
                    VStack{
                        TabBarButton(image: "plus.circle.fill", caption: "New Chat", imageColor: Color.icon_selected, captionColor: Color.icon_selected)
                    }
                }
                
                Spacer();
                Button{
                    selectedTab = .contacts;
                }label:{
                    VStack{
                        if selectedTab == .contacts{
                            TabBarButton(image: "person.fill", caption: "Contacts")
                        }
                        else{
                            TabBarButton(image: "person", caption: "Contacts")
                        }
                    }
                }
                Spacer();

            }
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.contacts))
    }
}
