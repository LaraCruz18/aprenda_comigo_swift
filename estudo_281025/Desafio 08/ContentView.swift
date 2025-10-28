import SwiftUI
import MapKit

struct Location: Hashable {
    let name: String
    let photo: String
    let latitude: Double
    let longitude: Double
}

struct ContentView: View {
    var localization = [
        Location(name: "Coliseu", photo: "https://pt.wikipedia.org/wiki/Coliseu#/media/Ficheiro:Colosseo_2020.jpg", latitude: 41.890251, longitude: 12.492373),
        Location(name: "Chichén Itzá", photo: "https://www.worldhistory.org/uploads/images/3048.jpg?v=1746892207-0", latitude: 20.684284, longitude: -88.567783),
        Location(name: "Cristo Redentor", photo: "https://upload.wikimedia.org/wikipedia/commons/8/87/Cristo_Redentor_-_Rio_de_Janeiro%2C_Brasil.jpg", latitude: -22.951916, longitude: -43.210487),
        Location(name: "Grande Muralha da China", photo: "https://pt.wikipedia.org/wiki/Grande_Muralha_da_China#/media/Ficheiro:The_Great_Wall_of_China_at_Jinshanling.jpg", latitude: 40.435773, longitude: 116.556852),
        Location(name: "Machu Picchu", photo: "https://pt.wikipedia.org/wiki/Machu_Picchu#/media/Ficheiro:Sunset_across_Machu_Picchu.jpg", latitude: -13.163140, longitude: -72.544963),
        Location(name: "Petra", photo: "https://pt.wikipedia.org/wiki/Petra#/media/Ficheiro:Al_Khazneh_Petra_edit_2.jpg", latitude: 30.328454, longitude: 35.441113),
        Location(name: "Taj Mahal", photo: "https://pt.wikipedia.org/wiki/Taj_Mahal#/media/Ficheiro:Taj_Mahal_N-UP-A28-a.jpg", latitude: 27.175015, longitude: 78.042155)
    ]
    
    @State private var selectedPlace = Location(
        name: "Taj Mahal",
        photo: "https://pt.wikipedia.org/wiki/Taj_Mahal#/media/Ficheiro:Taj_Mahal_N-UP-A28-a.jpg",
        latitude: 27.175015,
        longitude: 78.042155
    )
    
    var body: some View {
        VStack {
            Map(position: .constant(
                .region(
                    MKCoordinateRegion(
                        center: CLLocationCoordinate2D(latitude: selectedPlace.latitude, longitude: selectedPlace.longitude),
                        span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
                    )
                )
            )) {
                ForEach(localization, id: \.self) { maravilha in
                    Annotation(maravilha.name,
                               coordinate: CLLocationCoordinate2D(latitude: maravilha.latitude, longitude: maravilha.longitude)) {
                        Text("📍")
                            .font(.system(size: 30))
                    }
                }
            }
            .ignoresSafeArea()
            
            Picker("Selecione a maravilha:", selection: $selectedPlace) {
                ForEach(localization, id: \.self) { maravilha in
                    Text(maravilha.name)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
