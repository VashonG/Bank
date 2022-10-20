import SwiftUI

struct Content3Cell: View {
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
                            .foregroundColor(ColorConstants.LightBlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                                   alignment: .topLeading)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.LightBlueA700))
                    }
                })
                .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                       alignment: .topLeading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.LightBlueA700))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblRentForAugust)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(17.0),
                               alignment: .leading)
                    Text(StringConstants.kLbl852Am)
                        .font(FontScheme.kSFProRegular(size: getRelativeHeight(15.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray80099)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(15.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(40.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(16.0))
            }
            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(48.0),
                   alignment: .leading)
            Text(StringConstants.kLbl55000)
                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(70.0), height: getRelativeHeight(17.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(60.0))
        }
        .frame(width: getRelativeWidth(324.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Content3Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Content3Cell()
 }
 } */
