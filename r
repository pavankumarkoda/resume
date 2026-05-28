<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pavan Kumar Koda — Resume</title>
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700;900&family=DM+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<style>
:root {
  --navy:    #0d2137;
  --blue:    #1565c0;
  --sky:     #1e88e5;
  --teal:    #00897b;
  --gold:    #f59e0b;
  --light:   #e3f0fb;
  --lighter: #f0f7ff;
  --text:    #0d1b2a;
  --muted:   #4a5568;
  --border:  #cde0f5;
  --white:   #ffffff;
}

*{box-sizing:border-box;margin:0;padding:0;}

body{
  font-family:'DM Sans',sans-serif;
  background: linear-gradient(135deg,#0d2137 0%,#1565c0 50%,#00897b 100%);
  min-height:100vh;
  padding:28px 16px 40px;
  font-size:9.5pt;
  color:var(--text);
}

/* ─── TOOLBAR ─────────────────────────────────── */
.toolbar{
  max-width:8.5in; margin:0 auto 14px;
  display:flex; align-items:center; justify-content:space-between; flex-wrap:wrap; gap:8px;
}
.toolbar-left{ color:rgba(255,255,255,0.7); font-size:0.78em; letter-spacing:.4px; }
.toolbar-left strong{ color:#fff; }
.toolbar-btns{ display:flex; gap:8px; }
.tbtn{
  padding:7px 18px; border:none; border-radius:40px; cursor:pointer;
  font-family:'DM Sans',sans-serif; font-size:0.82em; font-weight:600; letter-spacing:.3px;
  transition:all .18s;
}
.tbtn-outline{
  background:rgba(255,255,255,0.12); color:#fff;
  border:1.5px solid rgba(255,255,255,0.35);
}
.tbtn-outline:hover{ background:rgba(255,255,255,0.22); }
.tbtn-solid{ background:#fff; color:var(--navy); }
.tbtn-solid:hover{ background:var(--light); transform:translateY(-1px); box-shadow:0 4px 14px rgba(0,0,0,0.18); }

/* ─── LINK EDITOR PANEL ───────────────────────── */
.link-panel{
  max-width:8.5in; margin:0 auto 14px;
  background:rgba(255,255,255,0.08); border:1px solid rgba(255,255,255,0.18);
  backdrop-filter:blur(12px); border-radius:12px; padding:16px 20px;
  display:none;
}
.link-panel-title{
  color:#fff; font-weight:700; font-size:0.8em; text-transform:uppercase;
  letter-spacing:1px; margin-bottom:12px;
}
.lp-grid{ display:grid; grid-template-columns:repeat(auto-fill,minmax(300px,1fr)); gap:7px 18px; }
.lp-row{ display:flex; align-items:center; gap:8px; }
.lp-row label{ color:rgba(255,255,255,0.65); font-size:0.75em; font-weight:600; width:88px; flex-shrink:0; text-align:right; }
.lp-row input{
  flex:1; padding:5px 9px; border:1px solid rgba(255,255,255,0.25);
  border-radius:6px; font-size:0.78em; font-family:monospace;
  background:rgba(255,255,255,0.1); color:#fff;
}
.lp-row input::placeholder{ color:rgba(255,255,255,0.4); }
.lp-row input:focus{ outline:2px solid var(--gold); border-color:transparent; background:rgba(255,255,255,0.18); }

/* ─── RESUME CARD ─────────────────────────────── */
.resume-card{
  max-width:8.5in; margin:0 auto;
  background:var(--white);
  border-radius:4px;
  box-shadow:0 24px 80px rgba(0,0,0,0.35);
  overflow:hidden;
}

/* ─── HEADER BAND ─────────────────────────────── */
.r-header{
  background: linear-gradient(135deg, var(--navy) 0%, #1a3a5c 55%, #1565c0 100%);
  padding: 28px 40px 22px;
  position:relative;
  overflow:hidden;
}
.r-header::before{
  content:'';
  position:absolute; top:-40px; right:-40px;
  width:220px; height:220px;
  border-radius:50%;
  background:rgba(255,255,255,0.04);
  pointer-events:none;
}
.r-header::after{
  content:'';
  position:absolute; bottom:-60px; left:20%;
  width:300px; height:300px;
  border-radius:50%;
  background:rgba(0,137,123,0.08);
  pointer-events:none;
}
.r-name{
  font-family:'Playfair Display',serif;
  font-size:2.35em; font-weight:900;
  color:#fff; letter-spacing:3px; text-transform:uppercase;
  line-height:1.1; margin-bottom:3px;
}
.r-tagline{
  color:rgba(255,255,255,0.55); font-size:0.82em; font-weight:400;
  letter-spacing:2px; text-transform:uppercase; margin-bottom:14px;
}
.r-contact{
  display:flex; flex-wrap:wrap; gap:4px 0; align-items:center;
}
.r-contact-item{
  display:flex; align-items:center; gap:5px;
  color:rgba(255,255,255,0.8); font-size:0.83em;
  padding:3px 12px;
  border-right:1px solid rgba(255,255,255,0.2);
}
.r-contact-item:last-child{ border-right:none; }
.r-contact-item a{ color:rgba(255,255,255,0.85); text-decoration:none; }
.r-contact-item a:hover{ color:#fff; text-decoration:underline; }
.r-contact-item:first-child{ padding-left:0; }

/* ─── BODY LAYOUT ─────────────────────────────── */
.r-body{
  display:grid;
  grid-template-columns:1fr 2.4fr;
}

/* ─── LEFT SIDEBAR ────────────────────────────── */
.r-sidebar{
  background:var(--lighter);
  padding:22px 18px 22px 24px;
  border-right:1px solid var(--border);
}

/* ─── MAIN CONTENT ────────────────────────────── */
.r-main{
  padding:22px 28px 22px 22px;
}

/* ─── SECTION TITLES ──────────────────────────── */
.sec-title{
  font-family:'DM Sans',sans-serif;
  font-size:0.72em; font-weight:700;
  text-transform:uppercase; letter-spacing:2px;
  color:var(--blue);
  padding-bottom:4px;
  border-bottom:2px solid var(--blue);
  margin-bottom:9px;
  display:flex; align-items:center; gap:6px;
}
.sec-title-sidebar{
  font-size:0.7em; color:var(--navy);
  border-bottom-color:var(--teal);
  color:var(--teal);
}

/* ─── SECTION WRAPPERS ────────────────────────── */
.r-section{ margin-bottom:14px; }
.r-section:last-child{ margin-bottom:0; }

/* ─── SUMMARY ─────────────────────────────────── */
.r-summary{
  font-size:0.88em; color:var(--muted); line-height:1.6;
  padding:9px 12px;
  background:var(--lighter);
  border-left:3px solid var(--sky);
  border-radius:0 4px 4px 0;
}

/* ─── EXPERIENCE ENTRY ────────────────────────── */
.r-entry{ margin-bottom:11px; }
.r-entry:last-child{ margin-bottom:0; }
.r-entry-head{ display:flex; justify-content:space-between; align-items:baseline; gap:8px; }
.r-job-title{
  font-weight:700; font-size:0.96em; color:var(--navy);
}
.r-date{
  font-size:0.78em; color:var(--white);
  background:var(--blue);
  padding:2px 8px; border-radius:20px;
  white-space:nowrap; font-weight:600; flex-shrink:0;
}
.r-company{
  font-size:0.83em; color:var(--teal); font-weight:600;
  margin:2px 0 5px;
}

/* ─── BULLETS ─────────────────────────────────── */
ul.r-bullets{
  padding-left:1.2em; list-style:none; margin:0;
}
ul.r-bullets li{
  font-size:0.88em; color:var(--muted); margin-bottom:3px;
  position:relative; padding-left:0.2em;
  line-height:1.5;
}
ul.r-bullets li::before{
  content:'▸';
  position:absolute; left:-1em;
  color:var(--sky); font-size:0.85em;
}

/* ─── PROJECT ENTRY ───────────────────────────── */
.r-project{ margin-bottom:9px; }
.r-project-title{
  font-weight:700; font-size:0.9em; color:var(--navy);
  margin-bottom:3px;
}
.r-project-tech{
  font-size:0.75em; color:var(--blue); font-weight:600;
  background:var(--light); padding:1px 7px; border-radius:20px;
  display:inline-block; margin-bottom:4px;
}

/* ─── SIDEBAR: SKILLS ─────────────────────────── */
.skill-group{ margin-bottom:10px; }
.skill-group-label{
  font-size:0.72em; font-weight:700; color:var(--navy);
  text-transform:uppercase; letter-spacing:.8px; margin-bottom:4px;
}
.skill-tags{ display:flex; flex-wrap:wrap; gap:4px; }
.skill-tag{
  font-size:0.76em; padding:2px 8px; border-radius:20px;
  background:var(--white); border:1px solid var(--border);
  color:var(--text); font-weight:500;
}
.skill-tag.hi{
  background:var(--navy); color:#fff; border-color:var(--navy);
}

/* ─── SIDEBAR: CERTS ──────────────────────────── */
.cert-item{ margin-bottom:7px; }
.cert-name{ font-size:0.82em; font-weight:600; color:var(--navy); line-height:1.35; }
.cert-issuer{ font-size:0.74em; color:var(--muted); }
.cert-link{ font-size:0.72em; color:var(--sky); text-decoration:none; }
.cert-link:hover{ text-decoration:underline; }

/* ─── SIDEBAR: EDUCATION ──────────────────────── */
.edu-item{ margin-bottom:8px; }
.edu-degree{ font-size:0.83em; font-weight:700; color:var(--navy); line-height:1.35; }
.edu-school{ font-size:0.77em; color:var(--muted); margin-top:1px; }
.edu-date{ font-size:0.72em; color:var(--teal); font-weight:600; }

/* ─── SIDEBAR: ACHIEVEMENTS ───────────────────── */
.ach-item{
  font-size:0.82em; color:var(--muted); margin-bottom:5px;
  padding-left:1em; position:relative;
}
.ach-item::before{
  content:'★'; position:absolute; left:0;
  color:var(--gold); font-size:0.75em; top:1px;
}

/* ─── DIVIDER ─────────────────────────────────── */
.entry-divider{
  height:1px; background:var(--border);
  margin:9px 0;
}

/* ─── CONTENTEDITABLE ─────────────────────────── */
[contenteditable="true"]:focus{
  outline:2px dashed var(--gold);
  background:rgba(245,158,11,0.06);
  border-radius:2px;
}

/* ─── PRINT ───────────────────────────────────── */
@page{ size:letter; margin:0; }
@media print{
  body{ background:white !important; padding:0 !important; }
  .toolbar,.link-panel{ display:none !important; }
  .resume-card{ box-shadow:none; border-radius:0; max-width:100%; margin:0; }
  [contenteditable]{ outline:none !important; background:transparent !important; }
  .r-date{ -webkit-print-color-adjust:exact; print-color-adjust:exact; }
  .r-header{ -webkit-print-color-adjust:exact; print-color-adjust:exact; }
  .r-sidebar{ -webkit-print-color-adjust:exact; print-color-adjust:exact; }
}
</style>
</head>
<body>

<!-- TOOLBAR -->
<div class="toolbar no-print">
  <div class="toolbar-left"><strong>Resume Editor</strong> · Click any text to edit · Enter = new bullet · Backspace on empty = delete bullet</div>
  <div class="toolbar-btns">
    <button class="tbtn tbtn-outline" id="toggle-links-btn">⚙ Edit Links</button>
    <button class="tbtn tbtn-solid" id="download-btn">⬇ Download PDF</button>
  </div>
</div>

<!-- LINK EDITOR -->
<div class="link-panel no-print" id="link-panel">
  <div class="link-panel-title">✎ Edit Contact &amp; Certificate Links</div>
  <div class="lp-grid">
    <div class="lp-row"><label>Phone</label><input id="in-tel" value="9704147418"></div>
    <div class="lp-row"><label>Email</label><input id="in-email" value="Pavankumarkoda007@gmail.com"></div>
    <div class="lp-row"><label>Portfolio</label><input id="in-portfolio" value="https://pavankumarkoda.github.io/portfolio/"></div>
    <div class="lp-row"><label>LinkedIn</label><input id="in-linkedin" value="https://www.linkedin.com/in/pavankoda/"></div>
    <div class="lp-row"><label>GitHub</label><input id="in-github" value="https://github.com/pavankumarkoda"></div>
    <div class="lp-row"><label>LeetCode</label><input id="in-leetcode" value="https://leetcode.com/u/pavankoda/"></div>
    <div class="lp-row"><label>Code360</label><input id="in-ninjas" value="https://www.naukri.com/code360/profile/pavankoda"></div>
    <div class="lp-row"><label>Oracle Dev</label><input id="in-dev-cert" value="https://catalog-education.oracle.com/pls/certview/sharebadge?id=E93AF429AB7580F8A84FFCDAD3EF1A0EF489A41BCBC63E9BA6983E2D7CF2C762"></div>
    <div class="lp-row"><label>Oracle AI</label><input id="in-ai-cert" value="https://catalog-education.oracle.com/pls/certview/sharebadge?id=6864808A81DE022DF53EA87E0983FC68F6319CCFE20D292D7DAB1F0A158349C1"></div>
  </div>
</div>

<!-- RESUME CARD -->
<div class="resume-card" id="resume">

  <!-- HEADER -->
  <header class="r-header">
    <div class="r-name" contenteditable="true">PAVAN KUMAR KODA</div>
    <div class="r-tagline" contenteditable="true">Full-Stack & Backend Developer · Java · Spring Boot · AI Integration</div>
    <div class="r-contact">
      <div class="r-contact-item"><span contenteditable="true">Hyderabad, India</span></div>
      <div class="r-contact-item"><a href="tel:9704147418" id="lnk-tel" contenteditable="true">9704147418</a></div>
      <div class="r-contact-item"><a href="mailto:Pavankumarkoda007@gmail.com" id="lnk-email" contenteditable="true">Pavankumarkoda007@gmail.com</a></div>
      <div class="r-contact-item"><a href="https://pavankumarkoda.github.io/portfolio/" id="lnk-portfolio" target="_blank">Portfolio</a></div>
      <div class="r-contact-item"><a href="https://www.linkedin.com/in/pavankoda/" id="lnk-linkedin" target="_blank">LinkedIn</a></div>
      <div class="r-contact-item"><a href="https://github.com/pavankumarkoda" id="lnk-github" target="_blank">GitHub</a></div>
    </div>
  </header>

  <!-- BODY: SIDEBAR + MAIN -->
  <div class="r-body">

    <!-- ═══ LEFT SIDEBAR ═══ -->
    <aside class="r-sidebar">

      <!-- TECHNICAL SKILLS -->
      <section class="r-section">
        <div class="sec-title sec-title-sidebar">Technical Skills</div>

        <div class="skill-group">
          <div class="skill-group-label">Languages</div>
          <div class="skill-tags">
            <span class="skill-tag hi">Java</span>
            <span class="skill-tag hi">JavaScript</span>
            <span class="skill-tag">PHP</span>
            <span class="skill-tag">Python</span>
            <span class="skill-tag">C#</span>
            <span class="skill-tag">VB.NET</span>
          </div>
        </div>

        <div class="skill-group">
          <div class="skill-group-label">Frameworks</div>
          <div class="skill-tags">
            <span class="skill-tag hi">Spring Boot</span>
            <span class="skill-tag hi">ReactJS</span>
            <span class="skill-tag">.NET Framework</span>
            <span class="skill-tag">Bootstrap</span>
          </div>
        </div>

        <div class="skill-group">
          <div class="skill-group-label">Web & APIs</div>
          <div class="skill-tags">
            <span class="skill-tag">HTML5</span>
            <span class="skill-tag">CSS3</span>
            <span class="skill-tag hi">REST APIs</span>
            <span class="skill-tag">OAuth 2.0</span>
            <span class="skill-tag">JWT</span>
          </div>
        </div>

        <div class="skill-group">
          <div class="skill-group-label">Databases</div>
          <div class="skill-tags">
            <span class="skill-tag hi">MySQL</span>
            <span class="skill-tag">Oracle SQL</span>
            <span class="skill-tag">SQL Server</span>
          </div>
        </div>

        <div class="skill-group">
          <div class="skill-group-label">Cloud & DevOps</div>
          <div class="skill-tags">
            <span class="skill-tag">AWS Lambda</span>
            <span class="skill-tag">AWS S3</span>
            <span class="skill-tag">Maven</span>
            <span class="skill-tag">Git</span>
            <span class="skill-tag">cPanel</span>
          </div>
        </div>

        <div class="skill-group">
          <div class="skill-group-label">AI & ML</div>
          <div class="skill-tags">
            <span class="skill-tag hi">LLM Integration</span>
            <span class="skill-tag">Offline Inference</span>
            <span class="skill-tag">RAG</span>
            <span class="skill-tag">OpenCV</span>
          </div>
        </div>

        <div class="skill-group">
          <div class="skill-group-label">Tools & IDEs</div>
          <div class="skill-tags">
            <span class="skill-tag">IntelliJ IDEA</span>
            <span class="skill-tag">VS Code</span>
            <span class="skill-tag">Visual Studio</span>
            <span class="skill-tag">Eclipse</span>
            <span class="skill-tag">Tomcat</span>
            <span class="skill-tag">Figma</span>
          </div>
        </div>

        <div class="skill-group">
          <div class="skill-group-label">Concepts</div>
          <div class="skill-tags">
            <span class="skill-tag">OOP</span>
            <span class="skill-tag">MVC</span>
            <span class="skill-tag">RBAC</span>
            <span class="skill-tag">DSA</span>
            <span class="skill-tag">Agile</span>
            <span class="skill-tag">CI/CD</span>
          </div>
        </div>
      </section>

      <div class="entry-divider"></div>

      <!-- CERTIFICATIONS -->
      <section class="r-section">
        <div class="sec-title sec-title-sidebar">Certifications</div>

        <div class="cert-item">
          <div class="cert-name" contenteditable="true">Oracle Certified Professional Java SE Developer</div>
          <div class="cert-issuer">Oracle Corporation</div>
          <a href="#" id="lnk-dev-cert" class="cert-link" target="_blank">View Certificate ↗</a>
        </div>
        <div class="cert-item">
          <div class="cert-name" contenteditable="true">Oracle Certified AI Foundations Associate</div>
          <div class="cert-issuer">Oracle Corporation</div>
          <a href="#" id="lnk-ai-cert" class="cert-link" target="_blank">View Certificate ↗</a>
        </div>
        <div class="cert-item">
          <div class="cert-name" contenteditable="true">NPTEL – Programming in Java (Elite)</div>
          <div class="cert-issuer">IIT Kharagpur · Score: 70%</div>
        </div>
      </section>

      <div class="entry-divider"></div>

      <!-- ACHIEVEMENTS -->
      <section class="r-section">
        <div class="sec-title sec-title-sidebar">Achievements</div>
        <div class="ach-item" contenteditable="true">TCS NQT — Score: 80.95 percentile</div>
        <div class="ach-item">Solved <strong>500+ problems</strong> on <a href="https://leetcode.com/u/pavankoda/" id="lnk-leetcode" target="_blank" style="color:var(--sky);">LeetCode</a> &amp; <a href="https://www.naukri.com/code360/profile/pavankoda" id="lnk-ninjas" target="_blank" style="color:var(--sky);">Code360</a></div>
        <div class="ach-item" contenteditable="true">Full Stack Java Certification — QEdge Technologies (2024)</div>
      </section>

      <div class="entry-divider"></div>

      <!-- EDUCATION -->
      <section class="r-section">
        <div class="sec-title sec-title-sidebar">Education</div>
        <div class="edu-item">
          <div class="edu-degree" contenteditable="true">B.Tech — Mechanical Engineering</div>
          <div class="edu-school" contenteditable="true">Malla Reddy Engineering College, Hyderabad</div>
          <div class="edu-date">2020 – 2023 · CGPA: 6.5</div>
        </div>
        <div class="edu-item">
          <div class="edu-degree" contenteditable="true">Full Stack Java Development</div>
          <div class="edu-school" contenteditable="true">QEdge Technologies, Hyderabad</div>
          <div class="edu-date">Sep 2023 – Mar 2024</div>
        </div>
      </section>

    </aside>

    <!-- ═══ MAIN CONTENT ═══ -->
    <main class="r-main">

      <!-- PROFESSIONAL SUMMARY -->
      <section class="r-section">
        <div class="sec-title">Professional Summary</div>
        <div class="r-summary" contenteditable="true">Results-driven Software Developer with 2+ years of experience delivering full-stack web applications, desktop automation tools, and AI-powered systems. Expert in Java, Spring Boot, and REST API design. Built production-grade document management systems, offline LLM-based PDF intelligence tools, and CAD automation platforms. Oracle Certified Developer Professional. Strong problem-solver with 500+ DSA problems solved. Passionate about clean architecture, scalable backends, and intelligent applications.</div>
      </section>

      <!-- WORK EXPERIENCE -->
      <section class="r-section">
        <div class="sec-title">Work Experience</div>

        <div class="r-entry">
          <div class="r-entry-head">
            <span class="r-job-title" contenteditable="true">Associate Software Developer</span>
            <span class="r-date" contenteditable="true">July 2024 – Present</span>
          </div>
          <div class="r-company" contenteditable="true">Adroitec Engineering Solutions Pvt. Ltd. — Hyderabad, India</div>
          <ul class="r-bullets">
            <li contenteditable="true">Engineered a Java Spring Boot Document Management System supporting full document lifecycle — upload, versioning, approval workflows, access control, and audit trails — for all document types across engineering teams.</li>
            <li contenteditable="true">Integrated locally deployed LLMs (fully offline) with a PDF-intelligence layer enabling engineers to query technical documents and receive context-aware answers sourced exclusively from uploaded PDFs — zero internet dependency.</li>
            <li contenteditable="true">Developed a WPF desktop application in VB.NET integrating Creo CAD APIs to automate engineering workflows: dynamic parameter updates, UCS-based assembly, feature deletion, part renaming, and batch DRW-to-PDF export.</li>
            <li contenteditable="true">Built "C&S Browser," a secure Spring Boot web app for Codes & Standards management with RBAC, JWT authentication, and server-side PDF protection, restricting access to authorized personnel only.</li>
            <li contenteditable="true">Developed a C# MSI tool to automate Creo file renaming and management, enforcing naming conventions and eliminating manual file-handling across engineering projects.</li>
          </ul>
        </div>

        <div class="entry-divider"></div>

        <div class="r-entry">
          <div class="r-entry-head">
            <span class="r-job-title" contenteditable="true">Web Developer</span>
            <span class="r-date" contenteditable="true">September 2023 – June 2024</span>
          </div>
          <div class="r-company" contenteditable="true">Webzyte — Hyderabad, India</div>
          <ul class="r-bullets">
            <li contenteditable="true">Designed and deployed responsive, cross-browser web applications using PHP, MySQL, HTML5, CSS3, and JavaScript across multiple client projects.</li>
            <li contenteditable="true">Integrated Google OAuth 2.0 and Microsoft OAuth for secure third-party authentication, reducing login friction and hardening data security.</li>
            <li contenteditable="true">Optimized SQL queries and backend logic, measurably reducing database response times and improving page load performance.</li>
            <li contenteditable="true">Delivered customized enhancements to client websites per evolving business requirements, improving both UX and functionality.</li>
          </ul>
        </div>
      </section>

      <!-- PROJECTS -->
      <section class="r-section">
        <div class="sec-title">Key Projects</div>

        <div class="r-project">
          <div class="r-project-title" contenteditable="true">Offline PDF Intelligence System (RAG + Local LLM)</div>
          <div class="r-project-tech">Python · LLM · RAG · PDF Parsing · Offline Inference</div>
          <ul class="r-bullets">
            <li contenteditable="true">Deployed fully offline LLMs on local infrastructure and built a Retrieval-Augmented Generation (RAG) pipeline that answers user queries using only the content of uploaded PDFs — no cloud dependency, no data leakage.</li>
            <li contenteditable="true">Engineered PDF chunking, vector embedding, and semantic search pipeline to ensure accurate, citation-backed responses from technical documents.</li>
          </ul>
        </div>

        <div class="r-project">
          <div class="r-project-title" contenteditable="true">Spring Boot Document Lifecycle Management System</div>
          <div class="r-project-tech">Java · Spring Boot · MySQL · REST API · RBAC · JWT</div>
          <ul class="r-bullets">
            <li contenteditable="true">Built an enterprise-grade document management platform supporting multi-format uploads, versioning, approval workflows, lifecycle state transitions (Draft → Review → Approved → Archived), and role-based access control.</li>
            <li contenteditable="true">Implemented audit logging, metadata tagging, and full-text search across document repositories for compliance and traceability.</li>
          </ul>
        </div>

        <div class="r-project">
          <div class="r-project-title" contenteditable="true">WPF Desktop App — Creo CAD Automation</div>
          <div class="r-project-tech">VB.NET · SQL Server · Creo API · WPF</div>
          <ul class="r-bullets">
            <li contenteditable="true">Automated complex Creo CAD tasks — model parameter updates, UCS assembly, feature deletion, batch PDF export — eliminating hours of repetitive manual engineering work.</li>
          </ul>
        </div>

        <div class="r-project">
          <div class="r-project-title" contenteditable="true">Real-Time Hand Gesture Content Transfer</div>
          <div class="r-project-tech">Python · OpenCV · Socket Programming</div>
          <ul class="r-bullets">
            <li contenteditable="true">Built a gesture-recognition system enabling wireless file transfer between two machines via hand commands using computer vision and TCP/IP socket communication.</li>
          </ul>
        </div>

      </section>

    </main>
  </div><!-- /r-body -->
</div><!-- /resume-card -->

<script>
document.addEventListener('DOMContentLoaded', function () {

  // Toggle link panel
  const toggleBtn = document.getElementById('toggle-links-btn');
  const linkPanel = document.getElementById('link-panel');
  toggleBtn.addEventListener('click', function () {
    const open = linkPanel.style.display === 'block';
    linkPanel.style.display = open ? 'none' : 'block';
    toggleBtn.textContent = open ? '⚙ Edit Links' : '✕ Close Links';
  });

  // Link bindings
  const linkMap = [
    { id:'in-tel',      target:'lnk-tel',      type:'tel' },
    { id:'in-email',    target:'lnk-email',    type:'email' },
    { id:'in-portfolio',target:'lnk-portfolio',type:'href' },
    { id:'in-linkedin', target:'lnk-linkedin', type:'href' },
    { id:'in-github',   target:'lnk-github',   type:'href' },
    { id:'in-leetcode', target:'lnk-leetcode', type:'href' },
    { id:'in-ninjas',   target:'lnk-ninjas',   type:'href' },
    { id:'in-dev-cert', target:'lnk-dev-cert', type:'href' },
    { id:'in-ai-cert',  target:'lnk-ai-cert',  type:'href' },
  ];
  linkMap.forEach(({ id, target, type }) => {
    const inp = document.getElementById(id);
    const el  = document.getElementById(target);
    if (!inp || !el) return;
    const v = inp.value;
    if (type === 'tel')   { el.href = 'tel:' + v; el.textContent = v; }
    else if (type === 'email') { el.href = 'mailto:' + v; el.textContent = v; }
    else el.href = v;
    inp.addEventListener('input', function () {
      const nv = this.value;
      if (type === 'tel')        { el.href = 'tel:' + nv; el.textContent = nv; }
      else if (type === 'email') { el.href = 'mailto:' + nv; el.textContent = nv; }
      else el.href = nv;
    });
  });

  // Editable: select-all only for short fields (not li)
  const resume = document.getElementById('resume');
  resume.addEventListener('focusin', function (e) {
    const el = e.target;
    if (el.getAttribute('contenteditable') !== 'true') return;
    if (el.tagName === 'LI') return;
    if (['SPAN','DIV'].includes(el.tagName)) {
      const sel = window.getSelection();
      const range = document.createRange();
      range.selectNodeContents(el);
      sel.removeAllRanges(); sel.addRange(range);
    }
  });

  // Prevent link nav while editing
  resume.addEventListener('click', function (e) {
    if (e.target.getAttribute('contenteditable') === 'true') e.preventDefault();
  });

  // Enter = new bullet, Backspace on empty li = delete it
  resume.addEventListener('keydown', function (e) {
    const node = window.getSelection().anchorNode;
    const li = node?.nodeType === 3 ? node.parentNode.closest('li') : node?.closest?.('li');

    if (e.key === 'Enter' && li) {
      e.preventDefault();
      const newLi = document.createElement('li');
      newLi.setAttribute('contenteditable', 'true');
      li.parentNode.insertBefore(newLi, li.nextSibling);
      const range = document.createRange();
      range.selectNodeContents(newLi); range.collapse(true);
      const sel = window.getSelection();
      sel.removeAllRanges(); sel.addRange(range);
    }

    if (e.key === 'Backspace' && li && li.textContent.trim() === '') {
      e.preventDefault();
      const prev = li.previousElementSibling;
      const next = li.nextElementSibling;
      li.remove();
      const target = prev || next;
      if (target) {
        const range = document.createRange();
        range.selectNodeContents(target); range.collapse(false);
        const sel = window.getSelection();
        sel.removeAllRanges(); sel.addRange(range);
        target.focus();
      }
    }
  });

  // Clean paste in bullets
  resume.addEventListener('paste', function (e) {
    const t = e.target;
    if (t.tagName === 'LI' || t.closest?.('li')) {
      e.preventDefault();
      let text = (e.clipboardData || window.clipboardData).getData('text/plain');
      text = text.replace(/^[\s•*\-▸]+\s*/, '');
      document.execCommand('insertText', false, text);
    }
  });

  // PDF download
  document.getElementById('download-btn').addEventListener('click', function () {
    const els = document.querySelectorAll('[contenteditable="true"]');
    els.forEach(el => el.removeAttribute('contenteditable'));
    window.print();
    setTimeout(() => els.forEach(el => el.setAttribute('contenteditable', 'true')), 700);
  });

});
</script>
</body>
</html>
