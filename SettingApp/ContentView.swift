import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    @State private var isToggleOn: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    profileCell()
                }
                
                Section {
                    basicCell(
                        colorName: .orange,
                        iconName: "airplane",
                        cellName: "에어플레인 모드",
                        subName: "toggle") {
                            Text("nothing")
                        }
                    
                    basicCell(
                        colorName: .blue,
                        iconName: "wifi",
                        cellName: "Wi-Fi",
                        subName: "public_2F") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .green,
                        iconName: "antenna.radiowaves.left.and.right",
                        cellName: "셀룰러",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .green,
                        iconName: "personalhotspot",
                        cellName: "개인용 핫스팟",
                        subName: "끔") {
                            Text("Detailed page")
                    }
                }
                
                Section {
                    basicCell(
                        colorName: .red,
                        iconName: "bell.badge.fill",
                        cellName: "알림",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .red,
                        iconName: "speaker.wave.3.fill",
                        cellName: "사운드 및 햅틱",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .indigo,
                        iconName: "moon.fill",
                        cellName: "집중 모드",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .indigo,
                        iconName: "hourglass",
                        cellName: "스크린 타임",
                        subName: "") {
                            Text("Detailed page")
                    }
                }
                
                Section {
                    basicCell(
                        colorName: .gray,
                        iconName: "gear",
                        cellName: "일반",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .blue,
                        iconName: "sun.max.fill",
                        cellName: "디스플레이 및 밝기",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .blue,
                        iconName: "sun.max.fill",
                        cellName: "디스플레이 및 밝기",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .blue,
                        iconName: "accessibility",
                        cellName: "손쉬운 사용",
                        subName: "") {
                            Text("Detailed page")
                    }
                    
                    basicCell(
                        colorName: .green,
                        iconName: "battery.100percent",
                        cellName: "배터리",
                        subName: "") {
                            Text("Detailed page")
                    }
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
    
    @ViewBuilder
    private func profileCell() -> some View {
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
            
            NavigationLink(destination: Text("Detailed page")) {
                HStack {
                    VStack(alignment: .leading) {
                        Section {
                            Text("Jia")
                                .font(.title2)
                                .fontWeight(.semibold)
                            Text("Apple ID, iCloud+, 미디어 및 구입 항목")
                                .font(.caption)
                        }
                    }
                }
                .padding(.leading, 10)
            }
        }
        
        HStack {
            Section {
                NavigationLink(destination: Text("Detailed page")) {
                    Text("Apple Arcade 3개월 무료")
                        .font(.subheadline)
                }
            }
        }
    }
    
    @ViewBuilder
    private func basicCell<V: View>(
        colorName: Color,
        iconName: String,
        cellName: String,
        subName: String?,
        destination: @escaping () -> V
    ) -> some View {
        HStack {
            Image(systemName: iconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(6)
                .background(colorName)
                .foregroundColor(.white)
                .cornerRadius(6)
            
            if let subName = subName {
                if subName == "toggle" {
                    Text(cellName)
                        .padding(.leading, 5)
                    Spacer()
                    Toggle(isOn: $isToggleOn) {
                        // 토글 관련 코드
                    }
                } else {
                    NavigationLink() {
                        destination()
                    } label: {
                        HStack {
                            Text(cellName)
                                .padding(.leading, 5)
                            Spacer()
                            Text(subName)
                                .foregroundColor(.gray)
                        }
                    }
                }
            } else {
                NavigationLink(cellName) {
                    destination()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
