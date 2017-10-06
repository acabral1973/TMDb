@testable import TMDbCore

import RxSwift
import PlaygroundSupport

// Cuando no trabajo con Assembly necesito importar todos los módulos que usaré para crear mis objetos
import Kingfisher

PlaygroundPage.current.needsIndefiniteExecution = true

let disposeBag = DisposeBag()
let assembly = CoreAssembly()

// Creando el repositorio usando Assembly
let imageRepository = assembly.imageLoadingAssembly.imageRepository

// Creando el repositorio a mano
// Tenemos varias dependencias que agregar
// let webServiceConfig = WebServiceConfiguration.default
// let webService = WebService(configuration: webServiceConfig)
//let imageRepository = ImageRepository(webService: webService, imageManager: KingfisherManager.shared)
    
imageRepository.image(at: "ncEmkHADNggjR0dlerOIHqmiY0O.jpg", size: .w300)
	.subscribe(onNext: {
		let image = $0
		print(image)
	})
	.disposed(by: disposeBag)
