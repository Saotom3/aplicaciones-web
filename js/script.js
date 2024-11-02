function showContent(section) {
    document.querySelectorAll('main section').forEach(section => {
        section.classList.add('hidden');
    });
    document.getElementById(section).classList.remove('hidden');
}

function showWeekContent(week) {
    document.querySelectorAll('main section').forEach(section => {
        section.classList.add('hidden');
    });
    const weekSection = document.getElementById('week-content');
    const weekTitle = document.getElementById('week-title');
    const weekDetails = document.getElementById('week-details');
    
    weekTitle.textContent = `Semana ${week}`;

    if (week === 1) {
        weekDetails.innerHTML = `
            <p>Fundamentos de Apps Móviles:</p>
            <a href="fpdf/Fundamentos de Apps Móviles.pdf" class="pdf-link" target="_blank">Ver (PDF)</a>
            <embed src="fpdf/Fundamentos de Apps Móviles.pdf" width="600" height="400" type="application/pdf">
        `;

    } else if (week === 2) {
        weekDetails.innerHTML = `
            <p>Instalación Lenguaje Dart:</p>
            <a href="fpdf/Instalación lenguaje dart.pdf" class="pdf-link" target="_blank">Ver (PDF)</a>
            <embed src="fpdf/Instalación lenguaje dart.pdf" width="600" height="400" type="application/pdf">
        `;
    
    } else if (week === 3) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana03:</p>
            <button onclick="previewCode('tareas/semana3/proyecto01.dart')">Ver Proyecto 01</button>
            <button onclick="previewCode('tareas/semana3/proyecto02.dart')">Ver Proyecto 02</button>
            <button onclick="previewCode('tareas/semana3/proyecto03.dart')">Ver Proyecto 03</button>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana3" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;

    } else if (week === 4) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana04:</p>
            <button onclick="previewCode('tareas/semana4/enunciado01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana4/enunciado02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana4/enunciado03.dart')">Ver Enunciado 03</button>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana4" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;

    } else if (week === 5) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana05:</p>
            <button onclick="previewCode('tareas/semana5/ejercicio01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana5/ejercicio02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana5/ejercicio03.dart')">Ver Enunciado 03</button>
            <button onclick="previewCode('tareas/semana5/ejercicio04.dart')">Ver Enunciado 04</button>
            <button onclick="previewCode('tareas/semana5/ejercicio05.dart')">Ver Enunciado 05</button>
            <button onclick="previewCode('tareas/semana5/ejercicio06.dart')">Ver Enunciado 06</button>
            <button onclick="previewCode('tareas/semana5/ejercicio07.dart')">Ver Enunciado 07</button>
            <button onclick="previewCode('tareas/semana5/ejercicio08.dart')">Ver Enunciado 08</button>
            <button onclick="previewCode('tareas/semana5/ejercicio09.dart')">Ver Enunciado 09</button>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana5" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;
    
    } else if (week === 6) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana06:</p>
            <button onclick="previewCode('tareas/semana6/enunciado01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana6/enunciado02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana6/enunciado03.dart')">Ver Enunciado 03</button>
            <button onclick="previewCode('tareas/semana6/enunciado04.dart')">Ver Enunciado 04</button>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana6" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;
    
    } else if (week === 7) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana07:</p>
            <button onclick="previewCode('tareas/semana7-1de2/enunciado01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana7-1de2/enunciado02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana7-1de2/enunciado03.dart')">Ver Enunciado 03</button>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana7-1de2" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;
    
    } else if (week === 7) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana07:</p>
            <button onclick="previewCode('tareas/semana7-2de2/enunciado01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana7-2de2/enunciado02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana7-2de2/enunciado03.dart')">Ver Enunciado 03</button>
            <button onclick="previewCode('tareas/semana7-2de2/enunciado04.dart')">Ver Enunciado 04</button>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana7-2de2" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;
    
    } else if (week === 8) {
        weekDetails.innerHTML = `
            <h2>Semana 8 Proyecto2</h2>
            <pre>
lib/
├── main.dart
├── screens/
│   ├── area_screen.dart
│   ├── login_screen.dart
│   └── menu_screen.dart
└── utils/
    └── calculations.dart
            </pre>
            <button onclick="previewCode('tareas/semana8/main.dart')">Ver main.dart</button>
            <button onclick="previewCode('tareas/semana8/screens/area_screen.dart')">Ver area_screen.dart</button>
            <button onclick="previewCode('tareas/semana8/screens/login_screen.dart')">Ver login_screen.dart</button>
            <button onclick="previewCode('tareas/semana8/screens/menu_screen.dart')">Ver menu_screen.dart</button>
            <button onclick="previewCode('tareas/semana8/utils/calculations.dart')">Ver calculations.dart</button>
            <br><br>
            <a href="drive" class="" target="_blank">Ver Proyecto</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;
    
    }else {
        weekDetails.innerHTML = `<p>Contenido para la Semana ${week}</p>`;
    }

    weekSection.classList.remove('hidden');
}

function previewCode(filePath) {
    fetch(filePath)
        .then(response => response.text())
        .then(text => {
            const codePreview = document.getElementById('code-preview');
            codePreview.textContent = text;
            codePreview.style.display = 'block';
        })
        .catch(error => console.error('Error al cargar el archivo:', error));
}
