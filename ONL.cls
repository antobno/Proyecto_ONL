\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ONL}[2025/04/27 Una plantilla que está destinada al proyecto de Optimización no lineal]

\RequirePackage{expl3} % Requerido para escribir código LaTeX3 en esta clase.

%%% Tipo de documento %%%  
\LoadClass[a4paper,twoside,10pt]{report}  % Cargar clase reporte (documento tipo reporte, tamaño A4, a dos caras, con fuente de 10pt)

%%% Idioma %%%  
\RequirePackage[spanish, es-noshorthands, es-tabla, es-lcroman]{babel}  % Documento en español

%%% Cargar paquetes necesarios %%%  
\RequirePackage{ifthen}  % Proporciona sentencias condicionales.
\RequirePackage{etoolbox}  % Herramientas avanzadas de programación para LaTeX.
\RequirePackage{floatrow}
\RequirePackage{graphicx}  % Para incluir y manipular imágenes.
\RequirePackage{subcaption}  % Subfiguras y títulos laterales.
\RequirePackage{tabularx}  % Tablas de ancho flexible.
\RequirePackage{nicematrix} % Para crear tablas complejas
\RequirePackage{xltabular}  % Igual que tabularx, pero para tablas largas.
\RequirePackage{booktabs}  % Estilo profesional para tablas.
\RequirePackage{multirow}  % Soporte para celdas de varias filas en tablas.
\RequirePackage{longtable}  % Tablas que abarcan varias páginas.
\RequirePackage{makecell} % Construye celdas locales.
\RequirePackage{caption}  % Personalización de títulos de tablas y figuras.
\RequirePackage{enumitem}  % Personalización de listas.
\RequirePackage{amsmath}  % Expresiones matemáticas avanzadas.
\RequirePackage{amssymb}  % Símbolos matemáticos extendidos.
\RequirePackage[dvipsnames,table]{xcolor}  % Soporte extendido para colores.
\RequirePackage{tcolorbox}  % Crear cajas de colores y resaltadas.
\RequirePackage{varwidth}  % Permite cajas de ancho variable.
\RequirePackage{titlesec}  % Personalización de títulos de secciones y capítulos.
\RequirePackage{titling}  % Control sobre el formato del título y portada.
\RequirePackage[toc,page]{appendix}  % Formato para los apéndices.
\RequirePackage[calc,datesep={/}]{datetime2}  % Formato mejorado de fechas y horas.
\RequirePackage[bookmarks,pdfusetitle]{hyperref}  % Hipervínculos y metadatos en PDF.
\RequirePackage{xparse}  % Análisis avanzado de argumentos para macros personalizadas.
\RequirePackage{typearea}  % Ajustes de diseño de página (KOMA-Script).
\RequirePackage{eso-pic}  % Añadir elementos al fondo de la página.
\RequirePackage{setspace}  % Ajustar el interlineado.
\RequirePackage{minted}  % Resaltado de sintaxis para código.
\RequirePackage{listings}
\RequirePackage{silence}  % Suprimir advertencias específicas de paquetes.
\RequirePackage{fontawesome5}  % Iconos de Font Awesome.
\RequirePackage{calc}  % Notación infija para aritmética.
\RequirePackage{contour}  % Contornear palabras en un color dado.
\RequirePackage[normalem]{ulem}  % Mejor subrayado.
\RequirePackage{mfirstuc}  % Capitalizar palabras en una oración.
\RequirePackage[framemethod=TikZ]{mdframed}


\RequirePackage{tikz}  % Crear gráficos de alta calidad.
%%% Librerías de Tikz %%%
\usetikzlibrary{calc}
\usetikzlibrary{positioning}
\usetikzlibrary{shapes.geometric}


\usepackage{pgfplots}
%%% Librerías de pgfplots y configuración %%%
\usepgfplotslibrary{colormaps}
\pgfplotsset{
    colormap={miazul}{
        rgb(0)=(0.509803,0.705882,0.823529); % cw3
        rgb(85)=(0.588235,0.745098,0.862745); % cw2
        rgb(170)=(0,0.28,0.5); % cw0 modificado
        rgb(255)=(0,0.219608,0.392156); % cw0
    },
    compat=newest,
}


\RequirePackage{psvectorian}  % Incluir ornamentos en el texto.
\RequirePackage{blindtext}  % Generar texto de marcador de posición.

\tcbuselibrary{most}  % Cargar la mayoría de las bibliotecas del paquete tcolorbox.
\WarningsOff[blindtext]  % Suprimir advertencias del paquete blindtext.

\RequirePackage[spanish]{algorithm2e} % Paquete para algoritmos en español
\RequirePackage{algpseudocode} % Para estructuras de control
\RequirePackage{pdfpages} % Para agregar documentos PDF (algunas páginas o incluso todo un documento)

%%% Configuraciones de importación (no cambiar el orden) %%%  
\usepackage{Configuraciones/00-Fuentes}
\usepackage{Configuraciones/01-Colores}
\usepackage{Configuraciones/02-Margenes}
\usepackage{Configuraciones/03-Referencias}
\usepackage{Configuraciones/04-Encabezado}
\usepackage{Configuraciones/05-Contenidos}
\usepackage{Configuraciones/06-Capitulos}
\usepackage{Configuraciones/07-Flotadores}
\usepackage{Configuraciones/08-Codigo}