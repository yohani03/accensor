Algoritmo Ascensores
    Definir personasAscensor1, personasAscensor2, numPersonas, CodigoEdificio, pisoDeseado, confirmacionSubir, confirmacionAbrir, confirmacionSalir Como Entero
	
    personasAscensor1 <- 0
    personasAscensor2 <- 0
	CodigoEdificio  <- 0
	
	Escribir "Bienvenido a la unidad"
	Repetir
	Escribir "ingrese el codigo de acceso"
	leer CodigoEdificio
	si CodigoEdificio <> 234 Entonces
		Escribir "acceso denegado, porfavor intentalo de nuevo"
	FinSi
Hasta Que CodigoEdificio = 234
Escribir "Acceso concedido"

    Escribir "¿En cuál ascensor deseas ingresar? (1 o 2): "
    Leer ascensorElegido
	
    Si ascensorElegido = 1 Entonces
        personasAscensor1 <- personasAscensor1 + 1
    Sino
        personasAscensor2 <- personasAscensor2 + 1
    FinSi
	
	Repetir
	Escribir "ingresa el numero de personas que van a ingresar al acensor"
	leer numPersonas
    Si numPersonas > 8 Entonces
        Escribir "¡Alerta! No se pueden ingresar al ascensor, demasiadas personas."
	FinSi
Hasta Que numPersonas  <= 8

Repetir 
        Escribir "¿A qué piso deseas ir?"
        Leer pisoDeseado
		Si pisoDeseado > 23 Entonces
			Escribir " la unidad solo cuenta con 23 pisos"
		FinSi
		hasta que pisoDeseado <= 23
        Escribir "¿Confirmas subir al piso ", pisoDeseado, "? (1 para confirmar, 0 para cancelar): "
        Leer confirmacionSubir
		
        Si confirmacionSubir = 1 Entonces
            Escribir "Ascensor en movimiento hacia el piso ", pisoDeseado
            Escribir "¿Confirmas abrir la puerta en el piso ", pisoDeseado, "? (1 para confirmar, 0 para cancelar): "
            Leer confirmacionAbrir
			
            Si confirmacionAbrir = 1 Entonces
                Escribir "Puerta abierta en el piso ", pisoDeseado
                Escribir "Mensaje: Se cerró el ascensor y volvió al piso 1."
            Sino
                Escribir "Puerta no abierta. Mensaje: Se cerró el ascensor y volvió al piso 1."
            FinSi
        Sino
            Escribir "Cancelaste la subida. Mensaje: Se cerró el ascensor y volvió al piso 1."
        FinSi
    

FinAlgoritmo
