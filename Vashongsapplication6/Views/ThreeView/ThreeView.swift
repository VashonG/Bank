import SwiftUI

struct ThreeView: View {
    @StateObject var threeViewModel = ThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .trailing, spacing: 0) {
                        ZStack(alignment: .topTrailing) {
                            VStack {
                                Text(StringConstants.kLbl3)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(85.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.LightBlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(81.0),
                                           height: getRelativeHeight(100.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(49.0))
                                    .padding(.horizontal, getRelativeWidth(59.0))
                            }
                            .frame(width: getRelativeWidth(200.0), height: getRelativeWidth(200.0),
                                   alignment: .leading)
                            .background(RoundedCorners(topLeft: 48.0, topRight: 48.0,
                                                       bottomLeft: 48.0, bottomRight: 48.0)
                                    .fill(ColorConstants.LightBlueA700))
                            .padding(.trailing, getRelativeWidth(24.0))
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblInnovative)
                                        .font(FontScheme.kSFProBold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.bold)
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                        .padding(.vertical, getRelativeHeight(10.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(131.0),
                                               height: getRelativeHeight(38.0), alignment: .center)
                                        .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                                bottomLeft: 14.0, bottomRight: 14.0)
                                                .stroke(ColorConstants.WhiteA700,
                                                        lineWidth: 2))
                                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                                   bottomLeft: 14.0,
                                                                   bottomRight: 14.0)
                                                .fill(ColorConstants.LightBlueA700))
                                        .padding(.bottom, getRelativeHeight(150.0))
                                        .padding(.leading, getRelativeWidth(93.0))
                                }
                            })
                            .frame(width: getRelativeWidth(131.0), height: getRelativeHeight(38.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                    bottomRight: 14.0)
                                    .stroke(ColorConstants.WhiteA700,
                                            lineWidth: 2))
                            .background(RoundedCorners(topLeft: 14.0, topRight: 14.0,
                                                       bottomLeft: 14.0, bottomRight: 14.0)
                                    .fill(ColorConstants.LightBlueA700))
                            .padding(.bottom, getRelativeHeight(150.0))
                            .padding(.leading, getRelativeWidth(93.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(224.0), height: getRelativeHeight(200.0),
                               alignment: .trailing)
                        .padding(.horizontal, getRelativeWidth(71.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(200.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(96.0))
                    VStack {
                        Text(StringConstants.kMsgLightningFast)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(22.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(256.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(32.0))
                        Text(StringConstants.kMsgMakeTransfers)
                            .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray80099)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(39.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(32.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(82.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(61.0))
                    VStack(alignment: .leading, spacing: 0) {
                        VStack {
                            Image("img_pagination_1")
                                .resizable()
                                .frame(width: getRelativeWidth(44.0),
                                       height: getRelativeHeight(8.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.horizontal, getRelativeWidth(16.0))
                            Button(action: {
                                threeViewModel.nextScreen = "CardsView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblGetStarted)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(17.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(30.0))
                                        .padding(.vertical, getRelativeHeight(18.0))
                                        .foregroundColor(ColorConstants.WhiteA700)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(358.0),
                                               height: getRelativeHeight(54.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                                   bottomLeft: 16.0,
                                                                   bottomRight: 16.0)
                                                .fill(ColorConstants.LightBlueA700))
                                        .padding(.top, getRelativeHeight(24.0))
                                        .padding(.horizontal, getRelativeWidth(16.0))
                                }
                            })
                            .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(54.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 16.0, topRight: 16.0,
                                                       bottomLeft: 16.0, bottomRight: 16.0)
                                    .fill(ColorConstants.LightBlueA700))
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                            VStack {
                                Text(StringConstants.kLblDemoMode)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.LightBlueA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(100.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(100.0), height: getRelativeHeight(17.0),
                                   alignment: .center)
                            .clipShape(Capsule())
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.bottom, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(190.0),
                               alignment: .leading)
                        .background(ColorConstants.WhiteA700)
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(190.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(166.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CardsView(),
                                   tag: "CardsView",
                                   selection: $threeViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct ThreeView_Previews: PreviewProvider {
    static var previews: some View {
        ThreeView()
    }
}
