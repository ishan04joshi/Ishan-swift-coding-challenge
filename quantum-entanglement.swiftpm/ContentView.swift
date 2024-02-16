
import SwiftUI

struct ContentView: View {
    @State var page: Page = .introduction
    @State var previousPage: Page?

    init() {
        // Change background and navigation bar colors
        UITableView.appearance().backgroundColor = UIColor(red: 71 / 255, green: 71 / 255, blue: 103 / 255, alpha: 1)
        UINavigationBar.appearance().barTintColor = UIColor(red: 71 / 255, green: 71 / 255, blue: 103 / 255, alpha: 1)
    }
    
    var body: some View {
        NavigationView {
            // Sidebar
            List {
                Button(action: { page = .introduction }, label: { Label("Introduction", systemImage: "text.alignleft") })
                    .listRowBackground(page == .introduction ? Color(red: 105 / 255, green: 106 / 255, blue: 142 / 255, opacity: 0.9).cornerRadius(10) : Color.clear.cornerRadius(10))
                Button(action: { page = .entanglement }, label: { Label("What is Entanglement", systemImage: "text.alignleft") })
                    .listRowBackground(page == .entanglement ? Color(red: 105 / 255, green: 106 / 255, blue: 142 / 255, opacity: 0.9).cornerRadius(10) : Color.clear.cornerRadius(10))
                Button(action: { page = .schrödinger }, label: { Label("Schrödinger's Cat", systemImage: "text.alignleft") })
                    .listRowBackground(page == .schrödinger ? Color(red: 105 / 255, green: 106 / 255, blue: 142 / 255, opacity: 0.9).cornerRadius(10) : Color.clear.cornerRadius(10))
                
            }
            .listStyle(.sidebar)
            .navigationTitle("Contents")
            
            // View switcher
            if page == .introduction {
                Introduction()
                    .toolbar {
                        Button(action: { }, label: { Image(systemName: "arrowtriangle.left") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .entanglement
                            }
                        }, label: { Image(systemName: "arrowtriangle.right") })
                    }
                    .transition(.slide)
            } else if page == .entanglement {
                Entanglement()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .introduction
                            }
                        }, label: { Image(systemName: "arrowtriangle.left") })
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .schrödinger
                            }
                        }, label: { Image(systemName: "arrowtriangle.right") })
                    }
                    .transition(previousPage == .introduction ? .slide : .reverseSlide)
            } else if page == .schrödinger {
                Schrödinger()
                    .toolbar {
                        Button(action: {
                            withAnimation {
                                previousPage = page
                                page = .entanglement
                            }
                        }, label: { Image(systemName: "arrowtriangle.left") })
                    }
                    .transition(previousPage == .entanglement ? .slide : .reverseSlide)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Pages
enum Page {
    case introduction, entanglement, schrödinger
}

// Reverse slide animation
extension AnyTransition {
    static var reverseSlide: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading)
        )
    }
}
