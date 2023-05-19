<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <!-- CÓDIGO (HTML, XML, etc.) -->

    <html>
        <head> 
         <link rel="stylesheet" href="formulario.css"></link>
    
        </head>
        <body>
        
          <header> 
        <h1> <a href="{ite/@web}"> <xsl:value-of select="ite/@nombre"/></a></h1>

    </header>

    <section id="principal">

        <article>
            <table class="tabla"> 
                <thead><H2>Jefes</H2></thead>
                    <thead>
                        <tr>
                           <th>Nombre</th>
                           <th>Despacho</th>

                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><xsl:value-of select="ite/director/nombre"/></td>
                            <td><xsl:value-of select="ite/director/despacho"/></td>
                            
                        </tr>
                        
                        <tr>
                            <td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                            <td><xsl:value-of select="ite/jefe_estudios/despacho"/></td>
                        </tr>
                    </tbody>

    
            </table>

            <hr/>
        </article>
            <div id="lista">
                <ol>
                    <li><h3><xsl:value-of select="/ite/ciclos/ciclo[1]/@id"/></h3>
                        <ul> 
                            <li><xsl:value-of select="/ite/ciclos/ciclo[1]/nombre"/></li>
                            <li><xsl:value-of select="/ite/ciclos/ciclo[1]/grado"/></li>
                            <li>Año: <xsl:value-of select="/ite/ciclos/ciclo[1]/decretoTitulo/@año"/></li>
                        </ul>
                        
                    </li>
                    <li><h3> <xsl:value-of select="/ite/ciclos/ciclo[2]/@id"/></h3>
                            <br/>
                            <ul>
                                <li><a href="https://unirfp.unir.net/ingenieria/fp-grado-daw-desarrollo-de-aplicaciones-web/"><xsl:value-of select="/ite/ciclos/ciclo[2]/nombre"/></a></li>
                                <li><xsl:value-of select="/ite/ciclos/ciclo[2]/grado"/></li>
                                <li>Año: <xsl:value-of select="/ite/ciclos/ciclo[2]/decretoTitulo/@año"/></li>
                            </ul>

                    </li>
                    <li> <h3> <xsl:value-of select="/ite/ciclos/ciclo[3]/@id"/></h3>
                        <br/>
                        <ul>
                            <li><a href="https://unirfp.unir.net/ingenieria/fp-grado-desarrollo-aplicaciones-multiplataforma-dam/"><xsl:value-of select="/ite/ciclos/ciclo[3]/nombre"/></a></li>
                            <li><xsl:value-of select="/ite/ciclos/ciclo[3]/grado"/></li>
                            <li>Año: <xsl:value-of select="/ite/ciclos/ciclo[2]/decretoTitulo/@año"/></li>
                        </ul></li>
                </ol>
            </div>
            <hr/>

            <div class="tablas">
            <table class="tablaprof">
                <thead id="cabecera">
                    <h2><xsl:value-of select="ite/empresa"/></h2>
                    <td colspan="2">Profesores</td>
                </thead>
                <thead>
                    <tr>
                        <td>id</td>
                        <td>Nombre</td>
                    </tr>
                    
                </thead>
                <tbody>
                    <tr>
                        <td><xsl:value-of select="/ite/profesores/profesor[1]/id"/></td>
                        <td><xsl:value-of select="/ite/profesores/profesor[1]/nombre"/></td>
                    </tr>
                    <tr>
                         <td><xsl:value-of select="/ite/profesores/profesor[2]/id"/></td>
                        <td><xsl:value-of select="/ite/profesores/profesor[2]/nombre"/></td>
                    </tr>
                    <tr>
                         <td><xsl:value-of select="/ite/profesores/profesor[3]/id"/></td>
                        <td><xsl:value-of select="/ite/profesores/profesor[3]/nombre"/></td>
                    </tr>
                    <tr>
                         <td><xsl:value-of select="/ite/profesores/profesor[4]/id"/></td>
                        <td><xsl:value-of select="/ite/profesores/profesor[4]/nombre"/></td>
                    </tr>

                </tbody>
            </table>
        </div>

        <hr/>
        <fieldset class="former">
        <legend id="cabeza">Formulario de contacto</legend> <br/>

        <form action="procesarPeticion.jsp" method="get">
        <label for="nombre"> Nombre</label>
            <input type="text" name="nombre" id="nombre" placeholder="su nombre"/>
            <br/>
            <br/>
        <label for="apellidos"> Apellidos</label>
            <input type="text" name="apellidos" id="apellidos" placeholder="Su apellido"/>
            <br/><br/>
            <label for="fechaNac">Fecha nacimiento</label>
                <input type="date" name="fechaNac" id="fechaNac"/>
            <br/><br/>
            <label for="modulo">FP a elegir</label><br/>
                <input type="radio" name="modulo" value="ASIR"/><xsl:value-of select="/ite/ciclos/ciclo[1]/nombre"/> <br/>
                <input type="radio" name="modulo" value="DAW"/><xsl:value-of select="/ite/ciclos/ciclo[2]/nombre"/> <br/>
                <input type="radio" name="modulo" value="DAM"/><xsl:value-of select="/ite/ciclos/ciclo[3]/nombre"/><br/>
                <br/>	
                <input type="submit" value="Enviar datos" />
                
        </form>
        <p>Dudas llamar a : <xsl:value-of select="ite/telefono"/></p>
        </fieldset>

    </section>
        
        </body>
    
    </html>


    </xsl:template>
</xsl:stylesheet>