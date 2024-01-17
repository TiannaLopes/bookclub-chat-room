import SwiftUI

struct TitleRow: View {
    var imageUrl: URL?
    var name = "John Doe"

    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { phase in
                if let image = phase.image {
                    image.resizable()
                         .aspectRatio(contentMode: .fill)
                         .frame(width: 50, height: 50)
                         .clipShape(Circle())
                } else if phase.error != nil {
                    Image(systemName: "person.fill")
                         .frame(width: 50, height: 50)
                         .background(Color.gray.opacity(0.3))
                         .clipShape(Circle())
                } else {
                    ProgressView()
                         .frame(width: 50, height: 50)
                }
            }

            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                Text("Online")
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }

            Image(systemName: "phone.fill")
                .foregroundColor(Color.gray)
                .padding(10)
                .background(Color.white)
                .clipShape(Circle())
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .previewLayout(.sizeThatFits)
            .background(Color("Peach")) 
    }
}

