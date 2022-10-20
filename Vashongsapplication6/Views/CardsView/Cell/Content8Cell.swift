import SwiftUI

struct Content8Cell: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                HStack(spacing: 0) {
                    Text(StringConstants.kLbl36)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .padding(.horizontal, getRelativeWidth(17.0))
                        .padding(.vertical, getRelativeHeight(12.0))
                        .foregroundColor(ColorConstants.Orange500)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Orange500))
                }
            })
            .frame(width: getRelativeWidth(46.0), height: getRelativeWidth(48.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.Orange500))
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblBlockCard)
                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kMsgYouCanBlockA)
                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(15.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray80099)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(31.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(12.0))
            }
            .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(60.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(16.0))
            Text(StringConstants.kLbl6)
                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(13.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Gray8004c)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(4.0), height: getRelativeHeight(13.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(25.0))
        }
        .frame(width: getRelativeWidth(320.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Content8Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Content8Cell()
 }
 } */
