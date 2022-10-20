import SwiftUI

struct SettingsView: View {
    @StateObject var settingsViewModel = SettingsViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack {
                    VStack {
                        Image("img_modal")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width,
                                   height: getRelativeHeight(20.0), alignment: .center)
                            .scaledToFit()
                            .clipped()
                        Text(StringConstants.kLblDone)
                            .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.LightBlueA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                        Text(StringConstants.kLblSettings)
                            .font(FontScheme.kSFProBold(size: getRelativeHeight(34.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(129.0), height: getRelativeHeight(34.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(27.0))
                            .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(114.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray100)
                    Text(StringConstants.kLblGeneral)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(73.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.horizontal, getRelativeWidth(32.0))
                    VStack {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 4, id: \.self) { index in
                                        ContentCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(322.0), alignment: .center)
                        .padding(.vertical, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    }
                    .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(484.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(14.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    Text(StringConstants.kLblApplication)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(107.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(27.0))
                        .padding(.horizontal, getRelativeWidth(32.0))
                    VStack(alignment: .leading, spacing: 0) {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        Content1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(330.0), alignment: .center)
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(16.0))
                        Divider()
                            .frame(width: getRelativeWidth(278.0), height: getRelativeHeight(1.0),
                                   alignment: .trailing)
                            .background(ColorConstants.Gray8005b)
                            .padding(.top, getRelativeHeight(11.0))
                            .padding(.leading, getRelativeWidth(10.0))
                        HStack {
                            Button(action: {}, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLbl14)
                                        .font(FontScheme
                                            .kSFProSemibold(size: getRelativeHeight(20.0)))
                                        .fontWeight(.semibold)
                                        .padding(.horizontal, getRelativeWidth(12.0))
                                        .padding(.vertical, getRelativeHeight(12.0))
                                        .padding(.all, getRelativeWidth(12.0))
                                        .foregroundColor(ColorConstants.Bluegray400)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.center)
                                        .frame(width: getRelativeWidth(48.0),
                                               height: getRelativeWidth(48.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                                   bottomLeft: 12.0,
                                                                   bottomRight: 12.0)
                                                .fill(ColorConstants.Bluegray400))
                                        .padding(.vertical, getRelativeHeight(12.0))
                                }
                            })
                            .frame(width: getRelativeWidth(48.0), height: getRelativeWidth(48.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Bluegray400))
                            .padding(.vertical, getRelativeHeight(12.0))
                            Spacer()
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblHapticFeedback)
                                    .font(FontScheme.kSFProSemibold(size: getRelativeHeight(17.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(195.0),
                                           height: getRelativeHeight(22.0), alignment: .topLeading)
                                Text(StringConstants.kMsgTurnTheHaptic)
                                    .font(FontScheme.kSFProRegular(size: getRelativeHeight(17.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray80099)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(195.0),
                                           height: getRelativeHeight(44.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(6.0))
                            }
                            .frame(width: getRelativeWidth(195.0), height: getRelativeHeight(72.0),
                                   alignment: .center)
                            Spacer()
                            Toggle("", isOn: $settingsViewModel.isToggleon)
                                .toggleStyle(SwitchToggleStyle(tint: ColorConstants.WhiteA700))
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(31.0), alignment: .center)
                                .padding(.vertical, getRelativeHeight(20.0))
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(72.0),
                               alignment: .center)
                        .padding(.vertical, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(344.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                    Text(StringConstants.kLblLegal)
                        .font(FontScheme.kSFProSemibold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Black900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(24.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(24.0))
                        .padding(.horizontal, getRelativeWidth(16.0))
                    VStack {
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        Content2Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(330.0), alignment: .center)
                        .padding(.vertical, getRelativeHeight(16.0))
                        .padding(.leading, getRelativeWidth(16.0))
                        .padding(.trailing, getRelativeWidth(12.0))
                    }
                    .frame(width: getRelativeWidth(358.0), height: getRelativeHeight(252.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(12.0))
                    .padding(.horizontal, getRelativeWidth(16.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height,
                       alignment: .topLeading)
                .background(ColorConstants.Gray100)
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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
