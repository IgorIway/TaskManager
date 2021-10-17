
import SwiftUI

struct ContentView: View {
    
    @State private var nameText: String = ""
    @State private var name1: String = ""
    @State private var name2: String = ""
    @State private var name3: String = ""
    @State private var name4: String = ""
    @State private var name5: String = ""
    func addTask() {
        if name1 == "" { name1 = nameText} else
            if name2 == "" { name2 = nameText} else
                if name3 == "" { name3 = nameText} else
                    if name4 == "" { name4 = nameText} else
                        if name5 == "" { name5 = nameText}
        nameText = ""
    }
    
    func delete1() {
     name1 = ""
    }
    
    func delete2() {
     name2 = ""
    }
    
    func delete3() {
     name3 = ""
    }
    
    func delete4() {
     name4 = ""
    }
    
    func delete5() {
     name5 = ""
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 1.00, green: 0.00, blue: 0.46), Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack (alignment: .leading) {
                
                
                Group {
                    HStack {
                        Button(action: delete1) {
                            Image("delete")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 35, minHeight: 35)
                                .clipShape(RoundedRectangle(cornerRadius: 9.0))
                                .padding(3)
                        }
                        Text("\(name1)")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(Color(red: 0.93, green: 0.88, blue: 0.86))
                    }
                    
                    HStack {
                        Button(action: delete2) {
                            
                            Image("delete")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 35, minHeight: 35)
                                .clipShape(RoundedRectangle(cornerRadius: 9.0))
                                .padding(3)
                        }
                        Text("\(name2)")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(Color(red: 0.93, green: 0.88, blue: 0.86))
                    }
                    HStack {
                        Button(action: delete3) {
                            Image("delete")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 35, minHeight: 35)
                                .clipShape(RoundedRectangle(cornerRadius: 9.0))
                                .padding(3)
                        }
                        Text("\(name3)")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(Color(red: 0.93, green: 0.88, blue: 0.86))
                    }
                    HStack {
                        Button(action: delete4) {
                            Image("delete")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 35, minHeight: 35)
                                .clipShape(RoundedRectangle(cornerRadius: 9.0))
                                .padding(3)
                        }
                        Text("\(name4)")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(Color(red: 0.93, green: 0.88, blue: 0.86))
                    }
                    HStack {
                        Button(action: delete5) {
                            Image("delete")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: 35, minHeight: 35)
                                .clipShape(RoundedRectangle(cornerRadius: 9.0))
                                .padding(3)
                        }
                        Text("\(name5)")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(Color(red: 0.93, green: 0.88, blue: 0.86))
                    }
                    }
                    
            
                Spacer()
            
                TextField("Enter your task", text: $nameText)
                
                    .font(.system(size: 40, weight: .bold))
                    .background(Color(red: 1.00, green: 0.87, blue: 0.98))
                    
                    
            
                Button(action: addTask) {
                    
                    
                   Image ("ok")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 120, minHeight: 60, alignment: .center)
                        .clipShape(RoundedRectangle(cornerRadius: 36.0))
                        .mask(Rectangle().padding(.all, 5))
                        .overlay(RoundedRectangle(cornerRadius: 26.0).stroke(Color.purple, lineWidth: 12))
                        
                
                        
                }
                    
                
                
                
                
            
            }
                
            
            
            
            
            
            
            
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



/* Color(red: 1.00, green: 0.00, blue: 0.46), Color(red: 0.93, green: 0.89, blue: 0.88)*/
