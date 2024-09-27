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
            <p>Tareas para la Semana 01:</p>
            <a href="documentacion.pdf" class="pdf-link" target="_blank">Ver documentación (PDF)</a>
            <embed src="documentacion.pdf" width="600" height="400" type="application/pdf">
        `;
    } else {
        weekDetails.innerHTML = `<p>Contenido para la Semana ${week}</p>`;
    }

    weekSection.classList.remove('hidden');
}
