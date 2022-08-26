Algoritmo sistema_de_votaciones
	Definir vc1, vc2, vc3 Como Entero
	Definir p1, p2, p3 Como Caracter
	Definir vn Como Entero
	Dimension votantes[100]
	Definir f Como Entero // fin de votaciones 1-si 0-no
	Definir ver Como Entero // verificar existencias de sufragante 
	f <- 0
	ver <- 0
	vc1 <- 0
	vc2 <- 0
	vc3 <- 0
	vn <- 0
	Mientras (f==0) hacer 
		Escribir "Ingrese una identificacion para ingresar: "
		Escribir "o ingrese 0 para ver los resultados"
		leer v
		si (v <> 0) Entonces
			para i<-1 Hasta 100 con paso 1 hacer 
				si (votantes[i]==v) Entonces
					ver = 1;
				SiNo
					ver = 0;
					votantes[i]<-v
				FinSi
			FinPara
			si (ver==1) Entonces
				Limpiar Pantalla
				Escribir "!Esta persona no puede votar dos veces!"
			SiNo
				Limpiar Pantalla
				Escribir "*** Seleccione un candidato ***"
				Escribir "1. maria"
				Escribir "2. pablo"
				Escribir "3. luisa"
				Escribir "Ingresa el numero de tu candidato"
				leer voto
				segun voto Hacer
					1:
						vc1 <- vc1 + 1
					2:
						vc2 <- vc2 + 1
					3: 
						vc3 <- vc3 + 1
					De Otro Modo:
						vn <- vn + 1
				FinSegun
				
			FinSi
		SiNo
			Escribir "*** Resultados de las elecciones***"
			si (vc1>vc2 y vc1>vc3) Entonces
				Escribir "El ganador es maria con: ",vc1," votos"
				si (vc2>vc3) Entonces
					Escribir "Pablo tiene: ",vc2," votos"
					Escribir "Luisa tiene: ",vc3," votos"
				SiNo
					Escribir "luisa tiene: ", vc3, " votos"
					Escribir "pablo tiene: ", vc2, " votos"
				FinSi
			SiNo
				si (vc2>vc1 y vc2>vc3) Entonces
					Escribir "El ganador es pablo con: ",vc2," votos"
					si (vc1>vc3) Entonces
						Escribir "Maria tiene: ",vc1," votos"
						Escribir "Luisa tiene: ",vc3," votos"
					SiNo
						Escribir "Luisa tiene: ",vc3," votos"
						Escribir "Maria tiene: ",vc1," votos"
					FinSi
				SiNo
					si (vc3>vc1 y vc3>vc2) Entonces
						Escribir "El ganador fue Luisa con: ",vc3," votos"
						si (vc2>vc1) Entonces
							Escribir "Pablo tiene: ",vc2," votos"
							Escribir "Maria tiene: ",vc1," votos"
						SiNo
							Escribir "Maria tiene: ",vc1," votos"
							Escribir "Pablo tiene: ",vc2," votos"
						FinSi
					SiNo
						Escribir "Existe un empate entre candidatos, se deben repetir las elecciones"
					FinSi
				FinSi
			FinSi
			Escribir "votos no validos: ",vn
			if<-1
		FinSi
	FinMientras
	
FinAlgoritmo
