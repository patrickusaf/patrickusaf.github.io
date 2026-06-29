document.addEventListener('DOMContentLoaded', () => {
    // 1. Language Toggle Logic
    const body = document.body;
    const langToggleBtn = document.getElementById('lang-toggle-btn');
    const langEsInd = document.getElementById('lang-es-ind');
    const langEnInd = document.getElementById('lang-en-ind');

    // Retrieve saved language or default to Spanish (es)
    const savedLang = localStorage.getItem('selected-language') || 'es';
    setLanguage(savedLang);

    if (langToggleBtn) {
        langToggleBtn.addEventListener('click', () => {
            const currentLang = body.classList.contains('lang-es') ? 'es' : 'en';
            const nextLang = currentLang === 'es' ? 'en' : 'es';
            setLanguage(nextLang);
        });
    }

    function setLanguage(lang) {
        if (lang === 'es') {
            body.classList.remove('lang-en');
            body.classList.add('lang-es');
            langEsInd.classList.add('active');
            langEnInd.classList.remove('active');
        } else {
            body.classList.remove('lang-es');
            body.classList.add('lang-en');
            langEnInd.classList.add('active');
            langEsInd.classList.remove('active');
        }
        localStorage.setItem('selected-language', lang);
    }

    // 2. Interactive HR Analytics Dashboard Widgets
    const tabRetention = document.getElementById('tab-retention');
    const tabSatisfaction = document.getElementById('tab-satisfaction');
    const tabHeadcount = document.getElementById('tab-headcount');
    
    const kpiVal1 = document.getElementById('kpi-value-1');
    const kpiVal2 = document.getElementById('kpi-value-2');
    const kpiVal3 = document.getElementById('kpi-value-3');
    const chartBarsContainer = document.getElementById('chart-bars-container');

    const dashboardData = {
        retention: {
            kpis: ["94.2%", "8.4/10", "1,248"],
            bars: [
                { val: "92.4%", pct: 92.4, label: "Q1" },
                { val: "93.1%", pct: 93.1, label: "Q2" },
                { val: "91.8%", pct: 91.8, label: "Q3" },
                { val: "94.2%", pct: 94.2, label: "Q4" }
            ]
        },
        satisfaction: {
            kpis: ["89.8%", "8.7/10", "1,192"],
            bars: [
                { val: "8.1/10", pct: 81.0, label: "Tech" },
                { val: "8.5/10", pct: 85.0, label: "Sales" },
                { val: "8.9/10", pct: 89.0, label: "Ops" },
                { val: "8.7/10", pct: 87.0, label: "HR" }
            ]
        },
        headcount: {
            kpis: ["98.1%", "8.2/10", "1,450"],
            bars: [
                { val: "1,150", pct: 75.0, label: "2023" },
                { val: "1,248", pct: 85.0, label: "2024" },
                { val: "1,380", pct: 92.0, label: "2025" },
                { val: "1,450", pct: 100.0, label: "2026" }
            ]
        }
    };

    function updateDashboard(category) {
        const data = dashboardData[category];
        if (!data) return;

        // Active state of tab buttons
        [tabRetention, tabSatisfaction, tabHeadcount].forEach(btn => {
            if (btn) btn.classList.remove('active');
        });
        document.getElementById(`tab-${category}`).classList.add('active');

        // Update KPIs
        kpiVal1.textContent = data.kpis[0];
        kpiVal2.innerHTML = data.kpis[1].includes('/') 
            ? `${data.kpis[1].split('/')[0]}<span class="kpi-small">/${data.kpis[1].split('/')[1]}</span>`
            : data.kpis[1];
        kpiVal3.textContent = data.kpis[2];

        // Update Chart Bars
        chartBarsContainer.innerHTML = '';
        data.bars.forEach(bar => {
            const barCol = document.createElement('div');
            barCol.className = 'chart-bar-col';
            
            const barDiv = document.createElement('div');
            barDiv.className = 'chart-bar';
            barDiv.style.height = '0%'; // Start at 0 for animation
            
            const tooltip = document.createElement('span');
            tooltip.className = 'chart-bar-tooltip';
            tooltip.textContent = bar.val;
            
            const label = document.createElement('span');
            label.className = 'chart-bar-label';
            label.textContent = bar.label;

            barDiv.appendChild(tooltip);
            barCol.appendChild(barDiv);
            barCol.appendChild(label);
            chartBarsContainer.appendChild(barCol);

            // Animate height entry
            setTimeout(() => {
                barDiv.style.height = `${bar.pct}%`;
            }, 50);
        });
    }

    if (tabRetention) tabRetention.addEventListener('click', () => updateDashboard('retention'));
    if (tabSatisfaction) tabSatisfaction.addEventListener('click', () => updateDashboard('satisfaction'));
    if (tabHeadcount) tabHeadcount.addEventListener('click', () => updateDashboard('headcount'));

    // Initialize chart heights
    updateDashboard('retention');


    // 3. Projects Category Filter Tabs
    const filterButtons = document.querySelectorAll('.filter-btn');
    const projectCards = document.querySelectorAll('.project-card-wrap');

    filterButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            // Remove active from all buttons
            filterButtons.forEach(b => b.classList.remove('active'));
            btn.classList.add('active');

            const filterValue = btn.getAttribute('data-filter');

            projectCards.forEach(card => {
                const cardCategory = card.getAttribute('data-category');
                
                if (filterValue === 'all' || cardCategory === filterValue) {
                    card.classList.remove('fade-out');
                    card.style.display = 'block';
                    setTimeout(() => {
                        card.style.opacity = '1';
                        card.style.transform = 'scale(1)';
                    }, 50);
                } else {
                    card.style.opacity = '0';
                    card.style.transform = 'scale(0.97)';
                    card.classList.add('fade-out');
                    // Hide after animation finishes
                    setTimeout(() => {
                        if (card.classList.contains('fade-out')) {
                            card.style.display = 'none';
                        }
                    }, 300);
                }
            });
        });
    });


    // 4. Skills Bar Scroll Animation
    const skillsSection = document.getElementById('skills');
    const skillBars = document.querySelectorAll('.skill-fill');

    // Store the desired width of each skill bar
    const skillWidths = [];
    skillBars.forEach(bar => {
        skillWidths.push(bar.style.width);
        bar.style.width = '0'; // reset for entry animation
    });

    const observerOptions = {
        root: null,
        rootMargin: '-10% 0px -40% 0px',
        threshold: 0
    };

    if (skillsSection) {
        const skillObserver = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    skillBars.forEach((bar, index) => {
                        bar.style.width = skillWidths[index];
                    });
                    skillObserver.unobserve(entry.target); // Trigger only once
                }
            });
        }, observerOptions);

        skillObserver.observe(skillsSection);
    }


    // 5. Contact Form Submission Handling (with bilingual feedback messages)
    const contactForm = document.getElementById('contact-form');
    const formFeedback = document.getElementById('form-feedback');
    const submitBtn = document.getElementById('submit-btn');

    if (contactForm && formFeedback) {
        contactForm.addEventListener('submit', (e) => {
            e.preventDefault();
            
            // Disable button during submit
            submitBtn.disabled = true;
            submitBtn.textContent = body.classList.contains('lang-es') ? '[ Enviando... ]' : '[ Sending... ]';
            formFeedback.textContent = '';
            formFeedback.className = 'form-feedback';

            // Extract input values
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;

            // Simulate form submission
            setTimeout(() => {
                console.log('Contacto recibido de:', { name, email, message });
                
                formFeedback.textContent = body.classList.contains('lang-es') 
                    ? '>> ¡Gracias! Mensaje enviado con éxito.' 
                    : '>> Thank you! Message sent successfully.';
                formFeedback.classList.add('success');
                
                // Reset form
                contactForm.reset();
                submitBtn.disabled = false;
                submitBtn.textContent = body.classList.contains('lang-es') ? '[ ENVIAR ]' : '[ SEND ]';

                // Clear message after 5 seconds
                setTimeout(() => {
                    formFeedback.textContent = '';
                    formFeedback.className = 'form-feedback';
                }, 5000);
            }, 1200);
        });
    }
});
