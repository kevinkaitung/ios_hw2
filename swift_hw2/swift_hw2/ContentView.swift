//
//  ContentView.swift
//  swift_hw2
//
//  Created by Mac on 2020/10/4.
//

import SwiftUI

struct kanahei: Shape {
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 59, y: 56))
            path.addQuadCurve(to: CGPoint(x: 70, y: 20), control: CGPoint(x: 57, y: 17))
            path.addQuadCurve(to: CGPoint(x: 79, y: 55), control: CGPoint(x: 80, y: 20))
            path.addQuadCurve(to: CGPoint(x: 97, y: 55), control: CGPoint(x: 88, y: 53))
            path.addQuadCurve(to: CGPoint(x: 112, y: 26), control: CGPoint(x: 100, y: 23))
            path.addQuadCurve(to: CGPoint(x: 116, y: 58), control: CGPoint(x: 126, y: 30))
            path.addQuadCurve(to: CGPoint(x: 148, y: 98), control: CGPoint(x: 144, y: 75))
            path.addQuadCurve(to: CGPoint(x: 140, y: 120), control: CGPoint(x: 148, y: 112))
            //right hand
            path.addQuadCurve(to: CGPoint(x: 159, y: 140), control: CGPoint(x: 170, y: 130))
            path.addQuadCurve(to: CGPoint(x: 138, y: 136), control: CGPoint(x: 155, y: 144))
            path.addQuadCurve(to: CGPoint(x: 138, y: 156), control: CGPoint(x: 142, y: 151))
            path.addLine(to: CGPoint(x: 34, y: 156))
            path.addQuadCurve(to: CGPoint(x: 33, y: 140), control: CGPoint(x: 32, y: 151))
            //left hand
            path.addQuadCurve(to: CGPoint(x: 9, y: 126), control: CGPoint(x: 11, y: 138))
            path.addQuadCurve(to: CGPoint(x: 30, y: 125), control: CGPoint(x: 10, y: 115))
            path.addQuadCurve(to: CGPoint(x: 26, y: 86), control: CGPoint(x: 17, y: 105))
            path.addQuadCurve(to: CGPoint(x: 61, y: 59), control: CGPoint(x: 37, y: 64))
            path.closeSubpath()
        }
        /*.stroke(Color(red: 79/255, green:30/255, blue:25/255), lineWidth: 4)*/
    }
}

//mouth
struct mouth: Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 86, y: 79))
            path.addQuadCurve(to: CGPoint(x: 73, y: 91), control: CGPoint(x: 82, y: 111))
            path.move(to: CGPoint(x: 86, y: 79))
            path.addQuadCurve(to: CGPoint(x: 97, y: 91), control: CGPoint(x: 91, y: 111))
            path.move(to: CGPoint(x: 81, y: 98))
            path.addQuadCurve(to: CGPoint(x: 92, y: 96), control: CGPoint(x: 88, y: 119))
            
        }
    }
}

//chin
struct chin: Shape {
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 83, y: 115))
            path.addQuadCurve(to: CGPoint(x: 89, y: 115), control: CGPoint(x: 85, y: 117))
        }
    }
}

//belly
struct belly: Shape{
    func path(in rect: CGRect) -> Path {
        Path{(path) in
            path.move(to: CGPoint(x: 75, y: 156))
            path.addQuadCurve(to: CGPoint(x: 88, y: 140), control: CGPoint(x: 72, y: 138))
            path.addQuadCurve(to: CGPoint(x: 100, y: 156), control: CGPoint(x: 100, y: 143))
            path.addLine(to: CGPoint(x: 75, y: 156))
            path.closeSubpath()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            //background
            Image("餐桌")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            //text
            Text("等吃飯～～")
                .position(x: 90, y: 350)
            //side
            Image("p助")
                .position(x: 100, y: 200)
            //text
            Text("來跟我單挑!!")
                .position(x: 220, y: 150)
            //main character
            kana()
            //big cheek kanahei
            //cheekKana()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct kana: View{
    var body: some View{
        ZStack{
        //sketch
        kanahei()
            .stroke(Color(red: 79/255, green:30/255, blue:25/255), lineWidth: 6)
            .offset(x: 105,y: 320)
        //draw color
        kanahei()
            .fill(Color(red: 246/255, green: 190/255, blue: 201/255))
            .offset(x: 105,y: 320)
        Ellipse()
            .frame(width: 28, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(x: 30, y: 145)
            .foregroundColor(.white)
        //eyes
        Ellipse()
            .frame(width: 9, height: 4.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .offset(x: 19, y: 125)
        Ellipse()
            .frame(width: 8, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .offset(x: 42, y: 125)
        mouth()
            .stroke(Color(red: 79/255, green:30/255, blue:25/255), lineWidth: 3)
            .offset(x: 105,y: 320)
        chin()
            .stroke(Color(red: 79/255, green:30/255, blue:25/255), lineWidth: 3)
            .offset(x: 105, y: 320)
        //cheeks
        Circle()
            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(red: 243/255, green: 167/255, blue: 180/255))
            .offset(x: -10, y: 145)
        Circle()
            .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(red: 243/255, green: 167/255, blue: 180/255))
            .offset(x: 70, y: 145)
        belly()
            .fill(Color.white)
            .offset(x: 105, y: 320)
        }
    }
}

struct cheekKana: View{
    var body: some View{
        ZStack{
        kanahei()
            .stroke(Color(red: 79/255, green:30/255, blue:25/255), lineWidth: 6)
            .offset(x: 105,y: 320)
        kanahei()
            .fill(Color(red: 246/255, green: 190/255, blue: 201/255))
            .offset(x: 105,y: 320)
        Ellipse()
            .frame(width: 28, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(x: 30, y: 145)
            .foregroundColor(.white)
        Ellipse()
            .frame(width: 9, height: 4.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .offset(x: 19, y: 125)
        Ellipse()
            .frame(width: 8, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .offset(x: 42, y: 125)
        mouth()
            .stroke(Color(red: 79/255, green:30/255, blue:25/255), lineWidth: 3)
            .offset(x: 105,y: 320)
        chin()
            .stroke(Color(red: 79/255, green:30/255, blue:25/255), lineWidth: 3)
            .offset(x: 105, y: 320)
        Circle()
            .frame(width: 45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(red: 243/255, green: 167/255, blue: 180/255))
            .offset(x: -10, y: 145)
        Circle()
            .frame(width: 45, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color(red: 243/255, green: 167/255, blue: 180/255))
            .offset(x: 70, y: 145)
        belly()
            .fill(Color.white)
            .offset(x: 105, y: 320)
        }
    }
}
