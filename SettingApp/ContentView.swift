import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            List {
                ZStack(alignment: .leading) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("검색", text: $searchText)
                        .searchable(text: $searchText, prompt: "검색")
                        .padding(.leading, 30)
                        
                }
                .onTapGesture { hideKeyboard() }
                   
                Section {
                    HStack {
                        ZStack {
                            Circle()
                                .frame(width: 60)
                                .foregroundColor(.gray)
                            Text("J")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                        }
                        
                        VStack(alignment: .leading) {
                            Section {
                                Text("Jia")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                Text("Apple ID, iCloud+, 미디어 및 구입 항목")
                                    .font(.caption)
                            }
                        }
                        .padding(.leading, 10)
                    }
                    
                    Section {
                        Text("Apple Arcade 3개월 무료")
                            .font(.subheadline)
                    }
                }
                
                Section {
                    Text("에어플레인 모드")
                    Text("Wi-Fi")
                    Text("Bluetooth")
                    Text("셀룰러")
                    Text("개인용 핫스팟")
                }
                
                Section {
                    Text("알림")
                    Text("사운드 및 햅틱")
                    Text("집중 모드")
                    Text("스크린 타임")
                }
                
                Section {
                    Text("일반")
                    Text("제어 센터")
                    Text("동작 버튼")
                    Text("디스플레이 및 밝기")
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif

#Preview {
    ContentView()
}
