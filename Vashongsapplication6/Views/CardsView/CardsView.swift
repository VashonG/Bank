import SwiftUI

struct CardsView: View {
    @StateObject var cardsViewModel = CardsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    VStack {
                        VStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(10.0),
                                       height: getRelativeWidth(10.0), alignment: .trailing)
                                .overlay(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                        bottomLeft: 5.0,
                                                        bottomRight: 5.0)
                                        .stroke(ColorConstants.Gray100,
                                                lineWidth: 2))
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.LightBlueA700))
                                .padding(.leading, getRelativeWidth(10.0))
                            Text(StringConstants.kLblJs)
                                .font(FontScheme.kSFProSemibold(size: getRelativeHeight(15.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(19.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(1.0))
                                .padding(.horizontal, getRelativeWidth(9.0))
                        }
                        .frame(width: getRelativeWidth(36.0), height: getRelativeWidth(36.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 18.0, topRight: 18.0, bottomLeft: 18.0,
                                                   bottomRight: 18.0)
                                .fill(ColorConstants.LightBlueA700))
                        .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblCards)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(91.0), height: getRelativeHeight(34.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(95.0),
                       alignment: .leading)
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Image("img_capitalos1")
                            .resizable()
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(57.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kMsg44087726314)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(22.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(248.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(21.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        HStack {
                            HStack {
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblExpiry)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(13.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA70085)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(39.0),
                                               height: getRelativeHeight(13.0),
                                               alignment: .topLeading)
                                        .padding(.trailing)
                                    Text(StringConstants.kLbl0625)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(59.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(10.0))
                                }
                                .frame(width: getRelativeWidth(59.0),
                                       height: getRelativeHeight(41.0), alignment: .center)
                                VStack(alignment: .leading, spacing: 0) {
                                    Text(StringConstants.kLblCardholder)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(13.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA70085)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(71.0),
                                               height: getRelativeHeight(13.0),
                                               alignment: .topLeading)
                                        .padding(.trailing)
                                    Text(StringConstants.kLblJohnSmith)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(94.0),
                                               height: getRelativeHeight(17.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(10.0))
                                }
                                .frame(width: getRelativeWidth(94.0),
                                       height: getRelativeHeight(40.0), alignment: .top)
                                .padding(.leading, getRelativeWidth(24.0))
                            }
                            .frame(width: getRelativeWidth(177.0), height: getRelativeHeight(43.0),
                                   alignment: .bottom)
                            Spacer()
                            Image("img_content")
                                .resizable()
                                .frame(width: getRelativeWidth(58.0),
                                       height: getRelativeHeight(36.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(10.0))
                        }
                        .frame(width: getRelativeWidth(302.0), height: getRelativeHeight(46.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(21.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(334.0), height: getRelativeHeight(200.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 16.0, topRight: 16.0, bottomLeft: 16.0,
                                               bottomRight: 16.0)
                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                        .LightBlueA400,
                                    ColorConstants
                                        .LightBlueA700]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)))
                    .padding(.horizontal, getRelativeWidth(28.0))
                    Image("img_pagination3")
                        .resizable()
                        .frame(width: getRelativeWidth(26.0), height: getRelativeHeight(8.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(28.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(224.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(8.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblSettings)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(81.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.horizontal, getRelativeWidth(32.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(27.0))
                VStack {
                    VStack {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 3, id: \.self) { index in
                                        Content8Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(322.0), alignment: .center)
                        .padding(.vertical, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(328.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(328.0),
                       alignment: .leading)
                .padding(.top, getRelativeHeight(12.0))
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        VStack {
                            Text(StringConstants.kLbl32)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(15.0))
                            Text(StringConstants.kLblDashboard)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(56.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(6.0))
                        }
                        .frame(width: getRelativeWidth(56.0), height: getRelativeHeight(39.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(6.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        Spacer()
                        VStack {
                            Text(StringConstants.kLbl3)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(17.0),
                                       height: getRelativeHeight(21.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(14.0))
                            Text(StringConstants.kLblPayments)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray500)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(48.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(48.0), height: getRelativeHeight(39.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(6.0))
                        Spacer()
                        VStack(alignment: .leading, spacing: 0) {
                            Text(StringConstants.kLbl2)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(18.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(18.0), alignment: .topLeading)
                                .padding(.horizontal, getRelativeWidth(3.0))
                            Text(StringConstants.kLblCards)
                                .font(FontScheme.kSFProMedium(size: getRelativeHeight(10.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.LightBlueA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(27.0),
                                       height: getRelativeHeight(12.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(5.0))
                        }
                        .frame(width: getRelativeWidth(27.0), height: getRelativeHeight(35.0),
                               alignment: .top)
                        .padding(.vertical, getRelativeHeight(9.0))
                        .padding(.trailing, getRelativeWidth(30.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(84.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100Cc)
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(84.0),
                       alignment: .leading)
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.Gray100)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.Gray100)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct CardsView_Previews: PreviewProvider {
    static var previews: some View {
        CardsView()
    }
}
