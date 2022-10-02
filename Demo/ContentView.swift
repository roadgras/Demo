//
//  ContentView.swift
//  Demo
//
//  Created by li on 2022/10/1.
//

import SwiftUI

struct ContentView: View {
var body: some View {
    ZStack(){
        Spacer()
            .background(
                Color(red: 190/255,
                      green: 201/255,
                      blue: 178/255))
        ExtractedView()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct UserView: View {
let word1: String
let word2: String
var body: some View {
    HStack{
        Text(word1)
            .font(.system(size: 25))
        Spacer()
        Text(word2)
            .font(.system(size: 15))
    }
    Divider()
}
}


struct ExtractedView: View {
    var body: some View {
        ZStack{
            VStack(spacing:10) {
                Row1()
                VStack(spacing:30){
                    Row2()
                    Row5()
                }
                Row8()
                Row9()
                Row10()
                Spacer()
            }.padding(10)
        }
    }
}

struct Row1: View {
    var body: some View {
        VStack(spacing:0){
            ZStack{
                Text("書庫")
                    .font(.system(size: 25))
                Image(systemName: "house")
                    .font(.system(size: 25))
                    .offset(x: 180, y: 5)
                HStack{
                    Text("追書版")
                        .font(.system(size:10))
                    Divider()
                }.offset(x: 180, y: 40)
                Divider().offset(x: 0, y: 30)
            }
        }
    }
}

struct Row2: View {
    var body: some View {
        VStack(spacing:10){
            HStack{
                Image(systemName: "magnifyingglass")
                Text("搜索")
                    .font(.system(size: 25))
                Spacer()
            }
            HStack(spacing:20){
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 2)
                    .frame(width: 280, height: 30)
                Text("熱詞榜")
                    .font(.system(size: 20))
                    .offset(x: 10, y: 0)
            }
        }
    }
}

struct Row3: View {
    var body: some View {
        HStack{
            Image(systemName: "books.vertical.fill")
            UserView(word1: "書庫",word2: "初次使用必讀")
            Spacer()
        }
        Divider()
    }
}

struct Row4: View {
    var body: some View {
        VStack(spacing:3){
            UserView(word1: "69書吧",word2: "知名人氣站點(主),書全優質")
            UserView(word1: "UU看書",word2:"老牌熱門網路小說書庫")
            UserView(word1: "妙筆文學網",word2:"各類熱門網路小說質量好")
            UserView(word1: "飄天文學網",word2:"人氣站點(副),書全優質")
            UserView(word1: "半夏小說",word2:"優質在線小說閱讀")
            UserView(word1: "思兔閱讀",word2:"老牌熱門女生小說書庫")
            Divider()
            HStack{
                Text("更多")
                    .font(.system(size: 25))
                    .foregroundColor(.gray)
                VStack{
                    Image(systemName: "chevron.down")
                    Image(systemName: "chevron.down")
                }
            Spacer()
            }
        }.padding(20)
    }
}


struct Row5: View {
    var body: some View {
        VStack(spacing:0){
            Row3()
            Row4()
        }
    }
}

struct Row6: View {
    var body: some View {
        HStack{
            Image(systemName: "chart.line.uptrend.xyaxis")
            Text("排行")
                .font(.system(size: 25))
            Spacer()
        }
    }
}

struct Row7: View {
    var body: some View {
        VStack(spacing:3){
            UserView(word1: "最熱追書榜",word2:"閱讀總人數TOP300")
            UserView(word1: "本週趨勢榜",word2:"本週存留率TOP300")
            Divider()
        }.padding(20)
    }
}


struct Row8: View {
    var body: some View {
        VStack(spacing:0){
            Row6()
            Divider()
            Row7()
        }
    }
}

struct Row9: View {
    var body: some View {
        Divider()
        HStack{
            Spacer()
            Image(systemName: "chevron.left")
                .font(.system(size: 30))
            Spacer()
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 30))
            Spacer()
            Spacer()
            Image(systemName: "gobackward")
                .font(.system(size: 30))
            Spacer()
        }
    }
}

struct Row10: View {
    var body: some View {
        Divider()
        HStack{
            Spacer()
            VStack(spacing:0){
                Image(systemName: "book.fill")
                    .font(.system(size: 30))
                Text("我的書架")
                    .font(.system(size: 15))
            }
            Spacer()
            Spacer()
            VStack(spacing:0){
                Image(systemName: "rectangle.stack.fill")
                    .font(.system(size: 30))
                Text("書庫")
                    .font(.system(size: 15))
            }
            Spacer()
            Spacer()
            VStack(spacing:0){
                Image(systemName: "exclamationmark.circle.fill")
                    .font(.system(size: 30))
                Text("幫助")
                    .font(.system(size: 15))
            }
            Spacer()
        }.offset(x: -10, y: 0)
    }
}
