local physics = require("physics") --Lo mas importante en este proyecto que serian las fisicas integradas
physics.start() --Desde este momento a como deberia ser las fisicas ya estan integradas

local centerX = display.contentCenterX --Se define el centro de la pantalla en coordenada X
local centerY = display.contentCenterY --Se define el centro de la pantalla en coordenada X

physics.setGravity(0, 0)  -- Desactivar la gravedad para que las pelotas no caiga hacia abajo

--Definimos las dimensiones que tendra el rectangulo verde que seria el campo de juego
local rectWidth = 1000
local rectHeight = 500
local borderSize = 10

-- Crear el rectángulo verde en el centro de la pantalla
local greenRect = display.newRect(centerX, centerY, rectWidth, rectHeight)
greenRect:setFillColor(0, 1, 0)  -- Color verde
greenRect.strokeWidth = borderSize --Se establece el ancho del borde
greenRect:setStrokeColor(0.5, 0.2, 0)  -- Color marrón para los bordes

-- Hacer que el rectángulo no sea físico
greenRect.isBodyActive = false --Si fuera true las pelotas no podrian estar dentro del rectangulo

-- Crear las paredes del rectángulo como bordes físicos
local borderTop = display.newRect(centerX, centerY - rectHeight/2 - borderSize/2, rectWidth + 2 * borderSize, borderSize)
local borderBottom = display.newRect(centerX, centerY + rectHeight/2 + borderSize/2, rectWidth + 2 * borderSize, borderSize)
local borderLeft = display.newRect(centerX - rectWidth/2 - borderSize/2, centerY, borderSize, rectHeight)
local borderRight = display.newRect(centerX + rectWidth/2 + borderSize/2, centerY, borderSize, rectHeight)

-- Configurar propiedades físicas para los bordes
physics.addBody(borderTop, "static", { friction = 0.5, bounce = 0 })
physics.addBody(borderBottom, "static", { friction = 0.5, bounce = 0 })
physics.addBody(borderLeft, "static", { friction = 0.5, bounce = 0 })
physics.addBody(borderRight, "static", { friction = 0.5, bounce = 0 })

-- Crear la bola blanca como un objeto físico
local whiteBall = display.newCircle(centerX - 300, centerY, 20)
whiteBall:setFillColor(1, 1, 1)  -- Color blanco
physics.addBody(whiteBall, "dynamic", { radius = 20, friction = 0.5, bounce = 0.7 })  -- Agregar cuerpo físico

-- Crear dos pelotas adicionales de diferentes colores
local redBall = display.newCircle(centerX + 202, centerY, 15)
redBall:setFillColor(1, 0, 0)  -- Color rojo
physics.addBody(redBall, "dynamic", { radius = 15, friction = 0.5, bounce = 0.7 })

local blueBall = display.newCircle(centerX + 230, centerY + 18, 15)
blueBall:setFillColor(0, 0, 1)  -- Color azul
physics.addBody(blueBall, "dynamic", { radius = 15, friction = 0.5, bounce = 0.7 })

local ball3 = display.newCircle(centerX + 230 , centerY - 18 , 15)
ball3: setFillColor(1, 1, 0) -- Amarillo
physics.addBody(ball3, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball4 = display.newCircle(centerX + 259 , centerY, 15)
ball4: setFillColor(0, 0, 0) --negrooo
physics.addBody(ball4, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball5 = display.newCircle(centerX + 259 , centerY + 32, 15)
ball5: setFillColor(1, 0, 1) --Moradito / Magenta
physics.addBody(ball5, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball6 = display.newCircle(centerX + 259 , centerY - 32, 15)
ball6: setFillColor(1, 0.5, 0) --Naranja
physics.addBody(ball6, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball7 = display.newCircle(centerX + 290 , centerY + 17, 15)
ball7: setFillColor(0.4, 0.2, 0) --cafe oscurito
physics.addBody(ball7, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball8 = display.newCircle(centerX + 290 , centerY + 50, 15)
ball8: setFillColor(0.4, 0.5, 0.2) --verde oscuron
physics.addBody(ball8, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball9 = display.newCircle(centerX + 290 , centerY - 17, 15)
ball9: setFillColor(1, 0.75, 0) --como oro no se
physics.addBody(ball9, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball10 = display.newCircle(centerX + 290 , centerY - 50, 15)
ball10: setFillColor(0.5, 0, 0.5) --morao oscuro
physics.addBody(ball10, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball11 = display.newCircle(centerX + 320 , centerY - 70, 15)
ball11: setFillColor(1, 0.5, 0.3) --como color piel aksdjads
physics.addBody(ball11, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball12 = display.newCircle(centerX + 320 , centerY - 35, 15)
ball12: setFillColor(0.4, 0.5, 0.6) --gris
physics.addBody(ball12, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball13 = display.newCircle(centerX + 320 , centerY, 15)
ball13: setFillColor(0, 0.5, 0.4) --verde feo
physics.addBody(ball13, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball14 = display.newCircle(centerX + 320 , centerY + 35, 15)
ball14: setFillColor(0.5, 0, 0) --rojo oscuro buscando a cafe
physics.addBody(ball14, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

local ball15 = display.newCircle(centerX + 320 , centerY + 70, 15)
ball15: setFillColor(1, 0.3, 0.7)
physics.addBody(ball15, "dynamic", {radius = 15, friction = 0.5, bounce = 0.7})

-- Crear la flecha o linea inicialmente vinculada a la bola blanca
local arrow = display.newLine(centerX, centerY, centerX + 50, centerY)
arrow.strokeWidth = 2
arrow:setStrokeColor(1, 0, 0)  -- Color rojo

-- Función para actualizar la posición de la flecha (línea)
local function updateArrowPosition()
    arrow.x, arrow.y = whiteBall.x, whiteBall.y
end

-- Función para manejar el movimiento de la línea con las flechas del teclado
local function moveLine(event)
    local keyCode = event.keyName

    if keyCode == "left" then
        arrow.rotation = arrow.rotation - 4  -- Girar hacia la izquierda
    elseif keyCode == "right" then
        arrow.rotation = arrow.rotation + 4  -- Girar hacia la derecha
    end
end

-- Función para disparar la pelota blanca
local function shootBall()
    -- Obtener la dirección de disparo basada en la rotación de la flecha
    local angle = math.rad(arrow.rotation)  -- Convertir a radianes la rotación actual de la flecha

    -- Calcular los componentes x e y de la velocidad
    local speed = 1000  -- Velocidad inicial ajustable
    local vx = speed * math.cos(angle)
    local vy = speed * math.sin(angle)

    -- Aplicar la velocidad a la pelota blanca
    whiteBall:setLinearVelocity(vx, vy)
end

-- Botón para disparar
local shootButton = display.newRect(centerX, centerY + 300, 140, 40)
shootButton:setFillColor(1, 1, 1)  -- Color verde para el botón

-- Crear texto para el botón de realizar el tiro
local buttonText = display.newText({
    parent = shootButton,
    text = "Realizar Tiro",
    fontSize = 20,
    x = shootButton.x,
    y = shootButton.y,
})
buttonText:setFillColor(0, 0, 0)  -- Color blanco para el texto

-- Escuchar eventos de teclado como las flechitas
Runtime:addEventListener("key", moveLine)

-- Llamar a la función para actualizar la posición de la flecha inicialmente y luego periódicamente
updateArrowPosition()

-- Escuchar eventos de toque en el botón de disparo
shootButton:addEventListener("tap", shootBall)

-- Llamar a la función para actualizar la posición de la flecha periódicamente
Runtime:addEventListener("enterFrame", updateArrowPosition)
