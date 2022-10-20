import SwiftUI

struct Content6Cell: View {
    var body: some View {
        HStack {
            HStack {
                Button(action: {}, label: {
                    HStack(spacing: 0) {
                        Text(StringConstants.kLbl21)
                            .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                            .fontWeight(.semibold)
                            .padding(.horizontal, getRelativeWidth(11.0))
                            .padding(.vertical, getRelativeHeight(12.0))
                            .foregroundColor(ColorConstants.RedA400)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.RedA400))
                    }
                })
                .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                       alignment: .topLeading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.RedA400))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblSeanJohnson)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                    Text(StringConstants.kLblRentForAugust)
                        .font(FontScheme.kSFProRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray80099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(16.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.trailing, getRelativeWidth(6.0))
                }
                .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(45.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(48.0),
                   alignment: .leading)
            Text(StringConstants.kLbl6)
                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Gray8004c)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(135.0))
        }
        .frame(width: getRelativeWidth(320.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Content6Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Content6Cell()
 }
 } */
