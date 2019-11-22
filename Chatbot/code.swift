//
//  ViewController.swift
//  Chip- Hotel Booking Chatbot
//
//  Created by Sai Kambampati on 9/1/17.
//  Copyright © 2017 AppCoda. All rights reserved.
//
import UIKit
import ApiAI
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageField: UITextField!
    @IBOutlet weak var chipResponse: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    @IBAction func sendMessage(_ sender: Any) {
        let request = ApiAI.shared().textRequest()
        
        if let text = self.messageField.text, text != "" {
            request?.query = text
        } else {
            return
        }
        
        request?.setMappedCompletionBlockSuccess({ (request, response) in
            let response = response as! AIResponse
            if let textResponse = response.result.fulfillment.speech {
                self.speechAndText(text: textResponse)
                
                //AQUI EMPIEZAN LAS IMÁGENES
                
                if textResponse.hasSuffix("Dirigete hacia el edificio de Posgrados y lo encontrarás a un costado de la escultura amarilla"){
                    self.imagen.image=UIImage(named: "auditorio")
                } else if textResponse.hasSuffix("Está a un costado del edificio de extensión cultural, el cual está frente a los edificios de idiomas."){
                    self.imagen.image=UIImage(named: "barros")
                }else if textResponse.hasSuffix("En cada edificio de la facultad hay baños, dirígete al más cercano"){
                    self.imagen.image=UIImage(named: "baños")
                }else if textResponse.hasSuffix("La biblioteca se encuentra a un costado de las canchas de fútbol, dirígete hacia las canchas ubicadas cerca de la entrada principal y encontrarás la biblioteca."){
                    self.imagen.image=UIImage(named: "biblioteca")
                }else if textResponse.hasSuffix("La cafetería se encuentra a un costado de las cachas, puedes llegar por la entrada principal o por la entrada de idiomas. ¿Gustas saber el menú de hoy?"){
                    self.imagen.image=UIImage(named: "cafeteria")
                }else if textResponse.hasSuffix("Cedetec está a un costado del estacionamiento de la entrada de la MEGA."){
                    self.imagen.image=UIImage(named: "cedetec")
                }else if textResponse.hasSuffix("Coesi esta en la planta baja del edificio A8, el cual se encuentra a un costado de las canchas de fútbol."){
                    self.imagen.image=UIImage(named: "coesi")
                }else if textResponse.hasSuffix("Se encuentra ubicado en la planta baja del edificio A15. Puedes llegar por la entrada principal y lo encontrarás del lado derecho"){
                    self.imagen.image=UIImage(named: "cedam")
                }else if textResponse.hasSuffix("Puedes llegar por la entrada de Idiomas, acercarte al Teatro Barros Sierra y encontrarás idiomas frente al centro cultural."){
                    self.imagen.image=UIImage(named: "idiomas")
                }else if textResponse.hasSuffix("Está al lado del Auditorio Miguel de la Torre"){
                    self.imagen.image=UIImage(named: "caballito")
                }else if textResponse.hasSuffix("Toda el área deportiva se encuentra detrás del edificio 15, cerca de la biblioteca y al lado de la cafetería"){
                    self.imagen.image=UIImage(named: "canchas")
                }else if textResponse.hasSuffix("Esta cerca del edificio de Posgrados, frente al estacionamiento de profesores"){
                    self.imagen.image=UIImage(named: "enfermeria")
                }else if textResponse.hasSuffix("A un costado de las canchas de fútbol americano"){
                    self.imagen.image=UIImage(named: "entradaP")
                }else if textResponse.hasSuffix("Está ubicado cerca de la entrada de idiomas, al lado de la cafetería ."){
                    self.imagen.image=UIImage(named: "gym")
                }else if textResponse.hasSuffix("El kuais se encuentra entre el edificio A2 y A4, dirígete a la explanada del área de matemáticas."){
                    self.imagen.image=UIImage(named: "kuais")
                }else if textResponse.hasSuffix("Se encuentra en la entrada principal"){
                    self.imagen.image=UIImage(named: "micros")
                }else if textResponse.hasSuffix("Está ubicada frente al edificio 7"){
                    self.imagen.image=UIImage(named: "piedra")
                }else if textResponse.hasSuffix("Se ubica en el estacionamiento, a un costado de CEDETEC"){
                    self.imagen.image=UIImage(named: "uim")
                }
                
                //IMAGENES DE "NO ENTIENDO"

                else if textResponse.hasSuffix("Ups, no he entendido a que te refieres."){
                    self.imagen.image=UIImage(named: "pregunta")
                }else if textResponse.hasSuffix("¿Podrías repetirlo, por favor?"){
                    self.imagen.image=UIImage(named: "pregunta")
                }else if textResponse.hasSuffix("¿Disculpa?"){
                    self.imagen.image=UIImage(named: "pregunta")
                }else if textResponse.hasSuffix("¿Cómo?"){
                    self.imagen.image=UIImage(named: "pregunta")
                }
                
                 //IMAGENES DE SALUDO
                else if textResponse.hasSuffix("¡Hola! ¿en qué puedo ayudarte?"){
                    self.imagen.image=UIImage(named: "goyo2")
                }else if textResponse.hasSuffix("¡Hey! ¿en qué puedo ayudarte?"){
                    self.imagen.image=UIImage(named: "goyo2")
                }else if textResponse.hasSuffix("¡Buenos días! ¿en qué puedo ayudarte?"){
                    self.imagen.image=UIImage(named: "goyo2")
                }else if textResponse.hasSuffix("¡Qué tal! ¿en qué puedo ayudarte?"){
                    self.imagen.image=UIImage(named: "goyo2")
                }
                
                 //IMAGENES DE ADIOS
                else if textResponse.hasSuffix("Hasta pronto!"){
                    self.imagen.image=UIImage(named: "goyo1")
                }else if textResponse.hasSuffix("Hasta luego!"){
                    self.imagen.image=UIImage(named: "goyo1")
                }else if textResponse.hasSuffix("Bye!"){
                    self.imagen.image=UIImage(named: "goyo1")
                }else if textResponse.hasSuffix("Adiós"){
                    self.imagen.image=UIImage(named: "goyo1")
                }
                
                
                
            }
        }, failure: { (request, error) in
            print(error!)
        })
        
        ApiAI.shared().enqueue(request)
        messageField.text = ""
    }
    
    let speechSynthesizer = AVSpeechSynthesizer()
    
    func speechAndText(text: String) {
        let speechUtterance = AVSpeechUtterance(string: text)
        speechUtterance.voice=AVSpeechSynthesisVoice(language: "es-MX")
        speechSynthesizer.speak(speechUtterance)
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseInOut, animations: {
            self.chipResponse.text = text
        }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
