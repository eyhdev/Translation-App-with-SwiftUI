import SwiftUI

struct TranslationView: View {
    @State private var sourceLanguageIndex = 0
    @State private var targetLanguageIndex = 1
    @State private var inputText = ""
    @State private var outputText = ""

    let languages = ["Turkish", "English", "German", "French", "Spanish", "Italian", "Russian", "Chinese", "Arabic", "Japanese"]
  
    var body: some View {
        VStack{
            ZStack{
                Color("color")
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    HStack{
                        Text("Text Translation")
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                          .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: "bell.badge")
                        .frame(width: 45, height: 45)
                        .foregroundColor(.white)
                    }
                    
                    VStack{
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 373, height: 1)
                          .background(.white.opacity(0.33))
                    }
                    HStack{
                        Picker("Source Language:", selection: $sourceLanguageIndex) {
                            ForEach(0..<languages.count, id: \.self) { index in
                               Text(languages[index])
                                 
                              
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
                        
                        Image(systemName: "arrow.left.arrow.right")
                        .frame(width: 20, height: 20)
                        
                        
                        Picker("Target Language:", selection: $targetLanguageIndex) {
                            ForEach(0..<languages.count, id: \.self) { index in
                                Text(languages[index])
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .padding()
                        
                    }
                    
                    VStack{
                        Text("Translate From (Turkey)")
                          .font(
                            Font.custom("Inter", size: 17)
                              .weight(.light)
                          )
                          .foregroundColor(.white.opacity(0.43))
                          .padding()
                          .offset(x: -80)
                        ZStack{
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 373, height: 208)
                              .background(Color(red: 0.14, green: 0.15, blue: 0.15))
                              .cornerRadius(22)
                            VStack{
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 351.00143, height: 1)
                                  .background(.white.opacity(0.33))
                                  .offset(y: 55)
                                
                                HStack{
                                    Text("0/500")
                                      .font(Font.custom("Inter", size: 20))
                                      .foregroundColor(.white.opacity(0.43))
                                      .offset(x: -90, y: 60)
                                    
                                    Image(systemName: "pencil.line")
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(.white)
                                    .offset(x: 90, y: 60)
                                    
                                    Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 1, height: 18.02776)
                                      .background(.white.opacity(0.43))
                                      .offset(x: 90, y: 60)
                                    
                                    Image(systemName: "speaker.wave.2.fill")
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                                    .offset(x: 100, y: 60)
                                }
                               
                            }
                          
                            TextField("Enter Text", text: $inputText)
                              .font(
                                Font.custom("Inter", size: 17)
                                  .weight(.medium)
                              )
                              .foregroundColor(.white)
                              .offset(x: 45, y: -65)
                        }
                      
                       
                    }
                    
                    Button("Translate", action: translateText)
                        .padding()

                    VStack{
                        Text("Translate From (Engilish)")
                          .font(
                            Font.custom("Inter", size: 17)
                              .weight(.light)
                          )
                          .foregroundColor(.white.opacity(0.43))
                          .padding()
                          .offset(x: -80)
                        ZStack{
                            Rectangle()
                              .foregroundColor(.clear)
                              .frame(width: 373, height: 208)
                              .background(Color(red: 0.14, green: 0.15, blue: 0.15))
                              .cornerRadius(22)
                            VStack{
                                Rectangle()
                                  .foregroundColor(.clear)
                                  .frame(width: 351.00143, height: 1)
                                  .background(.white.opacity(0.33))
                                  .offset(y: 55)
                                
                                HStack{
                                    Text("0/500")
                                      .font(Font.custom("Inter", size: 20))
                                      .foregroundColor(.white.opacity(0.43))
                                      .offset(x: -90, y: 60)
                                    
                                    Image(systemName: "pencil.line")
                                    .frame(width: 18, height: 18)
                                    .foregroundColor(.white)
                                    .offset(x: 90, y: 60)
                                    
                                    Rectangle()
                                      .foregroundColor(.clear)
                                      .frame(width: 1, height: 18.02776)
                                      .background(.white.opacity(0.43))
                                      .offset(x: 90, y: 60)
                                    
                                    Image(systemName: "speaker.wave.2.fill")
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                                    .offset(x: 100, y: 60)
                                }
                               
                            }
                          
                            TextField("Enter Text", text: $outputText)
                              .font(
                                Font.custom("Inter", size: 17)
                                  .weight(.medium)
                              )
                              .foregroundColor(.white)
                              .offset(x: 45, y: -65)
                        }
                      
                       
                    }
                }
                .padding()
            }
        }
       
    }

    func translateText() {
        let sourceLanguage = languages[sourceLanguageIndex]
        let targetLanguage = languages[targetLanguageIndex]

        // Here you should call a real translation API to perform the translation.
        // This is just a simple example. You will need to integrate a real translation service.
        translateWithAPI(inputText: inputText, sourceLanguage: sourceLanguage, targetLanguage: targetLanguage)
    }

    func translateWithAPI(inputText: String, sourceLanguage: String, targetLanguage: String) {
        // Here you should call a real translation API to perform the translation.
        // This is just a simple example. You will need to integrate a real translation service.
        // We are using a simple dictionary for an example translation:
        let translations = [
            "merhaba": ["English": "hello", "German": "hallo"],
            "nasılsın": ["English": "how are you", "German": "wie geht es dir"],
            ]

        if let translation = translations[inputText]?[targetLanguage] {
            outputText = translation
        } else {
            outputText = "Translation not found."
        }
    }
}

struct TranslationView_Previews: PreviewProvider {
    static var previews: some View {
        TranslationView()
            .preferredColorScheme(.dark)
    }
}
