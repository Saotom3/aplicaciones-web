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

    weekDetails.innerHTML = ''; 
    
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
            <div>
            <button onclick="previewCode('tareas/semana3/proyecto01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana3/proyecto02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana3/proyecto03.dart')">Ver Enunciado 03</button>
            <div>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana3" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;

    } else if (week === 4) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana04:</p>
            <div>
            <button onclick="previewCode('tareas/semana4/enunciado01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana4/enunciado02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana4/enunciado03.dart')">Ver Enunciado 03</button>
            <div>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana4" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;

    } else if (week === 5) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana 05:</p>
            <div style="display: flex; flex-wrap: wrap; gap: 10px; justify-content: center;">
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio01.dart')">Ver Enunciado 01</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio02.dart')">Ver Enunciado 02</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio03.dart')">Ver Enunciado 03</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio04.dart')">Ver Enunciado 04</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio05.dart')">Ver Enunciado 05</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio06.dart')">Ver Enunciado 06</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio07.dart')">Ver Enunciado 07</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio08.dart')">Ver Enunciado 08</button>
                <button style="flex: 0 1 30%; max-width: 150px;" onclick="previewCode('tareas/semana5/ejercicio09.dart')">Ver Enunciado 09</button>
            </div>
            <br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana5" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;
    } else if (week === 6) {
        weekDetails.innerHTML = `
            <p>Lenguaje Dart Semana06:</p>
            <div>
            <button onclick="previewCode('tareas/semana6/enunciado01.dart')">Ver Enunciado 01</button>
            <button onclick="previewCode('tareas/semana6/enunciado02.dart')">Ver Enunciado 02</button>
            <button onclick="previewCode('tareas/semana6/enunciado03.dart')">Ver Enunciado 03</button>
            <button onclick="previewCode('tareas/semana6/enunciado04.dart')">Ver Enunciado 04</button>
            <div>
            <br><br>
            <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana6" class="pdf-link" target="_blank">Ver en GitHub</a>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        `;
    
    } else if (week === 7) {
            weekDetails.innerHTML = `
                <div>
                    <h2>Lenguaje Dart Semana 07:</h2>
                    <div>
                        <h3>Proyecto 1: Enunciados 1-3</h3>
                        <button onclick="previewCode('tareas/semana7/along/enunciado01.dart')">Ver Enunciado 01</button>
                        <button onclick="previewCode('tareas/semana7/along/enunciado02.dart')">Ver Enunciado 02</button>
                        <button onclick="previewCode('tareas/semana7/along/enunciado03.dart')">Ver Enunciado 03</button>
                        <br><br>
                        <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana7" class="pdf-link" target="_blank">Ver en GitHub</a>
                    </div>
                    <div style="margin-top: 20px;">
                        <h3>Proyecto 2: Enunciados 1-4</h3>
                        <button onclick="previewCode('tareas/semana7/after/enunciado01.dart')">Ver Enunciado 01</button>
                        <button onclick="previewCode('tareas/semana7/after/enunciado02.dart')">Ver Enunciado 02</button>
                        <button onclick="previewCode('tareas/semana7/after/enunciado03.dart')">Ver Enunciado 03</button>
                        <button onclick="previewCode('tareas/semana7/after/enunciado04.dart')">Ver Enunciado 04</button>
                        <br><br>
                        <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana7" class="pdf-link" target="_blank">Ver en GitHub</a>
                    </div>
                </div>
                <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
            `;

    } else if (week === 8) {
    weekDetails.innerHTML = `
        <div>
            <h2>Lenguaje Dart Semana 08:</h2>
            <div style="display: flex; justify-content: space-between;">
                <div style="width: 45%;">
                    <h3 onclick="toggleAccordion('project1')" style="cursor: pointer;">📁 Proyecto 1</h3>
                    <div id="project1" class="accordion-content hidden">
                        <div class="folder" onclick="toggleFolder('lib-folder1')">
                            <span class="folder-icon">📁</span> lib/
                        </div>
                        <div id="lib-folder1" class="hidden">
                            <div class="file" onclick="previewCode('tareas/semana8/proyecto1/main.dart')">main.dart</div>
                            <div class="folder" onclick="toggleFolder('screens-folder1')">
                                <span class="folder-icon">📁</span> screens/
                            </div>
                            <div id="screens-folder1" class="hidden">
                                <div class="file" onclick="previewCode('tareas/semana8/proyecto1/splash_screen.dart')">splash_screen.dart</div>
                                <div class="file" onclick="previewCode('tareas/semana8/proyecto1/second_screen.dart')">second_screen.dart</div>
                            </div>
                        </div>
                    </div>
                    <a href="https://github.com/Saotom3/aplicaciones-web/tree/main/tareas/semana8/proyecto1" class="pdf-link" target="_blank">Ver en GitHub</a>
                </div>

                <div style="width: 45%;">
                    <h3 onclick="toggleAccordion('project2')" style="cursor: pointer;">📁 Proyecto 2</h3>
                    <div id="project2" class="accordion-content hidden">
                        <div class="folder" onclick="toggleFolder('lib-folder2')">
                            <span class="folder-icon">📁</span> lib/
                        </div>
                        <div id="lib-folder2" class="hidden">
                            <div class="file" onclick="previewCode('tareas/semana8/proyecto2/main.dart')">main.dart</div>
                            <div class="folder" onclick="toggleFolder('screens-folder2')">
                                <span class="folder-icon">📁</span> screens/
                            </div>
                            <div id="screens-folder2" class="hidden">
                                <div class="file" onclick="previewCode('tareas/semana8/proyecto2/area_screen.dart')">area_screen.dart</div>
                                <div class="file" onclick="previewCode('tareas/semana8/proyecto2/login_screen.dart')">login_screen.dart</div>
                                <div class="file" onclick="previewCode('tareas/semana8/proyecto2/menu_screen.dart')">menu_screen.dart</div>
                            </div>
                            <div class="folder" onclick="toggleFolder('utils-folder2')">
                                <span class="folder-icon">📁</span> utils/
                            </div>
                            <div id="utils-folder2" class="hidden">
                                <div class="file" onclick="previewCode('tareas/semana8/proyecto2/calculations.dart')">calculations.dart</div>
                            </div>
                        </div>
                    </div>
                    <a href="https://drive.google.com/file/d/1LyBajAliCaguhZhMX1abZZSmsJaxWWq8/view?usp=sharing" class="pdf-link" target="_blank">Ver en Drive</a>
                </div>
            </div>
            <br>
            <pre id="code-preview" style="background-color: #222; padding: 1rem; color: #fff; display: none; overflow-x: auto;"></pre>
        </div>
    `;
} else {
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


//semana8///////
function toggleAccordion(id) {
    const content = document.getElementById(id);
    if (content.classList.contains('hidden')) {
        content.classList.remove('hidden');
    } else {
        content.classList.add('hidden');
    }
}

function toggleFolder(folderId) {
    const folderContent = document.getElementById(folderId);
    if (folderContent.classList.contains('hidden')) {
        folderContent.classList.remove('hidden');
    } else {
        folderContent.classList.add('hidden');
    }
}
