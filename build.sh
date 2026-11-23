#!/bin/bash
# Genera las páginas compartiendo cabecera y pie. Uso: bash build.sh
FORM_VOL="https://docs.google.com/forms/d/e/1FAIpQLScesk3vF1_i__tNSRQzY3vAH6m5fzxDSHROu7oCg6dUmW2FLA/viewform?usp=sharing&ouid=100894798661939075214"
FORM_SOC="https://forms.cloud.microsoft/e/B7s2Dm4e1t"
IRIS="#enlace-ong-iris"
page(){ # file, title, desc, body
f="$1"; t="$2"; d="$3"; b="$4"
nav=""
for p in "index.html|Inicio" "que-hacemos.html|Qué hacemos" "quienes-somos.html|Todo empezó así" "colabora.html|Colabora" "transparencia.html|Transparencia" "contacto.html|Contacto"; do
 u="${p%%|*}"; n="${p##*|}"; c=""; [ "$u" = "$f" ] && c=' aria-current="page"'
 nav+="<a href=\"$u\"$c>$n</a>"
done
cat > "$f" <<EOF
<!doctype html>
<html lang="es"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>$t · Manos Voluntarias</title><meta name="description" content="$d">
<link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Bricolage+Grotesque:wght@700;800&family=Source+Sans+3:wght@400;600;700&display=swap">
<link rel="stylesheet" href="style.css"></head><body>
<a class="skip" href="#main">Ir al contenido</a>
<header><div class="wrap"><a class="logo" href="index.html">Manos <span>Voluntarias</span></a><nav aria-label="Principal">$nav</nav></div></header>
<main id="main">
$b
</main>
<footer><div class="wrap">
<div><p><strong style="color:#fff;font-size:1.2rem">Manos Voluntarias</strong></p><p>Asociación de voluntariado de ayuda en desastres naturales.</p><p>Centro Logístico: Polígono Industrial El Bony, 46470 Catarroja (Valencia)</p></div>
<div><p><a href="colabora.html">Colabora</a></p><p><a href="transparencia.html">Transparencia</a></p><p><a href="https://www.manosvoluntarias.org/politica-privacidad/">Política de privacidad</a></p></div>
<div><p><a href="https://www.instagram.com/manosvoluntariasvlc/">Instagram</a></p><p><a href="https://www.tiktok.com/@manosvoluntarias">TikTok</a></p><p><a href="https://www.youtube.com/@manosvoluntariasvlc">YouTube</a></p></div>
</div></footer></body></html>
EOF
}

page index.html "Ayuda ante desastres naturales" "Manos Voluntarias organiza voluntariado y logística para ayudar cuando ocurre un desastre natural." "
<section class=hero><div class=wrap><div>
<h1>Ayuda organizada cuando la naturaleza no avisa.</h1>
<p class=lead>Somos una asociación de voluntarios que responde a desastres naturales. Nacimos con la DANA de 2024 y seguimos preparados para la próxima emergencia.</p>
<div class=row><a class=btn href=\"$FORM_VOL\">Hazte voluntario/a</a><a class='btn alt' href=\"colabora.html#donar\">Quiero donar</a></div>
</div><div class=ph role=img aria-label=\"Espacio para foto\">[FOTO: voluntarios en el Centro Logístico de Catarroja]</div></div></section>

<section class=phases><div class=wrap>
<h2>Trabajamos en tres momentos de una emergencia</h2>
<ol><li><strong>Antes</strong><p>Voluntarios formados, material organizado y un plan claro para actuar sin improvisar.</p></li>
<li><strong>Durante</strong><p>Recepción y reparto de ayuda desde nuestro centro logístico, con coordinación de voluntarios.</p></li>
<li><strong>Después</strong><p>Apoyo sostenido a las familias y a los municipios mientras se recuperan.</p></li></ol>
</div></section>

<section class=s><div class=wrap split>
<div><h2>Todo empezó con la DANA de 2024</h2><p>Un grupo de vecinos y vecinas se organizó para llevar ayuda humanitaria a las zonas afectadas de la Comunitat Valenciana. De aquella respuesta nació una asociación estable.</p><p>Hoy queremos que esa experiencia sirva para cualquier desastre natural.</p><a class='btn alt' href=\"quienes-somos.html\">Leer nuestra historia</a></div>
<div class=ph role=img aria-label=\"Espacio para foto\">[FOTO: DANA 2024]</div></div></section>

<section class='s mint'><div class=wrap>
<h2>Tres formas de ayudar</h2>
<div class=ways>
<div><h3>Voluntariado</h3><p>Aporta tu tiempo en tareas operativas y logísticas. Libre, altruista y sin cuotas.</p><a class=btn href=\"$FORM_VOL\">Inscribirme</a></div>
<div><h3>Ser socio/a</h3><p>Forma parte de la Asamblea General, con voz y voto sobre el rumbo de la asociación.</p><a class='btn alt' href=\"$FORM_SOC\">Hacerme socio/a</a></div>
<div><h3>Donar</h3><p>Todavía no podemos emitir deducciones fiscales, así que derivamos las donaciones a la ONG Iris.</p><a class='btn light' href=\"colabora.html#donar\">Cómo donar</a></div>
</div></div></section>

<section class=s><div class=wrap split>
<div><h2>Nuestro Centro Logístico</h2><p><strong>Polígono Industrial El Bony</strong><br>46470 Catarroja, Valencia</p><p>Aquí centralizamos la recepción y distribución de la ayuda material, los alimentos y el mobiliario.</p><a class='btn alt' href=\"https://maps.google.com/maps?q=Pol%C3%ADgono%20Industrial%20El%20Bony%2C%20Catarroja\">Cómo llegar</a></div>
<div class=ph role=img aria-label=\"Espacio para mapa\">[MAPA: incrustar Google Maps]</div></div></section>"

page que-hacemos.html "Qué hacemos" "Líneas de trabajo de Manos Voluntarias ante desastres naturales." "
<div class=page-head><div class=wrap><h1>Qué hacemos</h1><p>Nos centramos en una cosa: ayudar de forma rápida y ordenada cuando ocurre un desastre natural.</p></div></div>
<section class=s><div class=wrap split>
<div><h2>Líneas de trabajo</h2><p>Esta es la propuesta de estructura. Los socios pueden ajustar cada línea antes de publicarla.</p></div>
<ul class=list>
<li><h3>Preparación</h3><p>Formación de voluntarios, inventario de recursos y protocolos de actuación.</p></li>
<li><h3>Respuesta inmediata</h3><p>Activación de voluntarios y reparto de ayuda humanitaria en las primeras horas y días.</p></li>
<li><h3>Gestión logística</h3><p>Recepción, clasificación y distribución de alimentos, material y mobiliario desde el Centro Logístico de Catarroja.</p></li>
<li><h3>Recuperación</h3><p>Acompañamiento a las familias y colaboración con otras entidades durante la reconstrucción.</p></li>
</ul></div></section>
<section class='s mint'><div class=wrap><h2>¿Quieres formar parte?</h2><div class=row><a class=btn href=\"$FORM_VOL\">Hazte voluntario/a</a><a class='btn alt' href=\"colabora.html\">Ver todas las formas de colaborar</a></div></div></section>"

page quienes-somos.html "Todo empezó así" "La historia de Manos Voluntarias, nacida con la DANA de 2024." "
<div class=page-head><div class=wrap><h1>Todo empezó así</h1><p>De una respuesta ciudadana urgente a una asociación pensada para los próximos desastres.</p></div></div>
<section class=s><div class=wrap split>
<div><h2>Nuestra historia</h2><p>[TEXTO A COMPLETAR POR LOS SOCIOS: cómo empezó el grupo, quiénes eran y qué se hizo en las primeras semanas tras la DANA de 2024.]</p><div class=ph role=img aria-label=\"Espacio para foto\">[FOTO]</div></div>
<ol class=tl>
<li><b>2024 · La DANA</b><p>Voluntarios y voluntarias se organizan para atender la emergencia.</p></li>
<li><b>Centro Logístico</b><p>Se centraliza la ayuda en una nave de Catarroja.</p></li>
<li><b>Constitución de la asociación</b><p>Se regula conforme a la Ley 14/2008 de asociaciones de la Comunitat Valenciana. [AÑADIR FECHA]</p></li>
<li><b>Hoy</b><p>Nos centramos en la ayuda ante desastres naturales.</p></li>
</ol></div></section>"

page colabora.html "Colabora" "Hazte voluntario, socio o dona a través de la ONG Iris." "
<div class=page-head><div class=wrap><h1>Colabora</h1><p>Elige cómo quieres sumarte. Todos los formularios son oficiales y seguros.</p></div></div>
<section class=s><div class=wrap><ul class=list>
<li><div class=split><div><h3>Voluntario/a (colaborador/a)</h3></div><div><p>Participas de forma libre y altruista en labores operativas, como la asistencia humanitaria y la gestión del Centro Logístico. No supone pago de cuotas ni da voz y voto en las asambleas.</p><a class=btn href=\"$FORM_VOL\">Inscribirme como voluntario/a</a></div></div></li>
<li><div class=split><div><h3>Socio/a</h3></div><div><p>Te integras en la Asamblea General, el órgano supremo de gobierno: eliges la Junta Directiva, apruebas las cuentas y decides las líneas de actuación. Puede haber cuota periódica si la Asamblea así lo decide.</p><a class='btn alt' href=\"$FORM_SOC\">Hacerme socio/a</a></div></div></li>
<li id=donar><div class=split><div><h3>Donar</h3></div><div><p>Manos Voluntarias todavía no puede tramitar deducciones fiscales por donaciones. Por eso las derivamos a la ONG Iris, para que tu aportación llegue igualmente a quien la necesita.</p><div class=note><p>[REVISAR: indicar aquí si la ONG Iris emite certificado de donación y cómo se destina la aportación a Manos Voluntarias.]</p></div><a class=btn href=\"$IRIS\">Donar a través de la ONG Iris</a></div></div></li>
</ul></div></section>"

page transparencia.html "Transparencia" "Documentos y cuentas de Manos Voluntarias." "
<div class=page-head><div class=wrap><h1>Transparencia</h1><p>Confiar empieza por poder comprobar. Aquí publicamos nuestros documentos.</p></div></div>
<section class=s><div class=wrap><table><thead><tr><th>Documento</th><th>Estado</th></tr></thead><tbody>
<tr><td>Estatutos de la asociación</td><td>[ENLACE AL PDF]</td></tr>
<tr><td>Composición de la Junta Directiva</td><td>[ENLACE O LISTADO]</td></tr>
<tr><td>Cuentas anuales</td><td>[ENLACE AL PDF]</td></tr>
<tr><td>Memoria de actividades</td><td>[ENLACE AL PDF]</td></tr>
<tr><td>Destino de las donaciones (ONG Iris)</td><td>[EXPLICACIÓN A COMPLETAR]</td></tr>
</tbody></table></div></section>"

page contacto.html "Contacto" "Cómo contactar con Manos Voluntarias." "
<div class=page-head><div class=wrap><h1>Contacto</h1><p>Escríbenos o ven a vernos al Centro Logístico.</p></div></div>
<section class=s><div class=wrap split>
<ul class=list>
<li><h3>Email</h3><p>[EMAIL DE LA ASOCIACIÓN]</p></li>
<li><h3>WhatsApp</h3><p>[ENLACE AL CHAT]</p></li>
<li><h3>Centro Logístico</h3><p>Polígono Industrial El Bony, 46470 Catarroja (Valencia)</p></li>
<li><h3>Redes</h3><p><a href=\"https://www.instagram.com/manosvoluntariasvlc/\">Instagram</a> · <a href=\"https://www.tiktok.com/@manosvoluntarias\">TikTok</a> · <a href=\"https://www.youtube.com/@manosvoluntariasvlc\">YouTube</a></p></li></ul>
<div class=ph role=img aria-label=\"Espacio para mapa\">[MAPA: incrustar Google Maps]</div></div></section>"
