---
layout: homepage
title: Alexey Komissarouk | Growth Engineering Advisor
description: I help companies execute Growth Engineering through a combination of investing, writing and advising.
---

<!-- Hero Section -->
<section class="hero">
    <!-- Left Column: Main Content -->
    <div class="hero-content">
        <h1>Building High-Impact Growth Engineering Teams</h1>
        <div class="tagline">Alexey Komissarouk • Growth Engineering Advisor</div>
        <p>I help fast-growing companies build, scale, and hone their Growth Engineering practices. I've spent years leading Growth Engineering organizations at MasterClass and Opendoor, advised dozens of companies and taught over 100 students in my <a href="https://course.alexeymk.com">Growth Eng course</a>.</p>
    </div>
    
    <!-- Right Column: Image and CTAs -->
    <div class="hero-right">
        <div class="hero-image">
            <img src="{{ site.author.image }}" alt="Alexey">
        </div>
        
        <div class="cta-secondary hero-links">
            <a href="/about">About Me</a>
            <span class="cta-divider">|</span>
            <a href="/blog/">Articles & Talks</a>
            <span class="cta-divider">|</span>
            <a href="/growth-eng">Growth Eng Course</a>
            <span class="cta-divider">|</span>
            <a href="mailto:alexey+contact-on-website@alexeymk.com">Contact</a>
        </div>
        <div class="hero-cta">
            <a href="/growth-eng" class="cta-primary">Work With Me</a>
        </div>
        
    </div>
</section>

<!-- Companies I've Advised - Above the fold -->
<section class="logos">
    <h2>Companies I've Helped</h2>
    <div class="logo-row">
        {% for company in site.advised_companies %}
        <img src="{{ company.logo }}" alt="{{ company.name }}" class="logo">
        {% endfor %}
    </div>
</section>

<!-- Articles and Talks - Substack Style -->
<section class="articles">
    <h2>{{ site.featured_content_title }}</h2>
    <div class="articles-grid">
        {% for article in site.featured_articles %}
        <a href="{{ article.link }}" class="article-card-link">
            <div class="article-card">
                <div class="article-image">
                    <img src="{{ article.image }}" alt="{{ article.title }}">
                </div>
                <div class="article-metadata">
                    <span class="article-type article-type-article">Article</span>
                    {% if article.coauthor %}
                    <span class="article-coauthor">with {{ article.coauthor }}</span>
                    {% endif %}
                </div>
                <div class="article-title">{{ article.title }}</div>
                {% if article.description %}
                <div class="article-description">{{ article.description }}</div>
                {% endif %}
                <div class="article-link">Read Article</div>
            </div>
        </a>
        {% endfor %}
        
        {% for talk in site.featured_talks %}
        <a href="{{ talk.link }}" class="article-card-link">
            <div class="article-card">
                <div class="article-image">
                    <img src="{{ talk.image }}" alt="{{ talk.title }}">
                    <div class="video-indicator">▶</div>
                </div>
                <div class="article-metadata">
                    <span class="article-type article-type-talk">Talk</span>
                    {% if talk.coauthor %}
                    <span class="article-coauthor">with {{ talk.coauthor }}</span>
                    {% endif %}
                </div>
                <div class="article-title">{{ talk.title }}</div>
                {% if talk.description %}
                <div class="article-description">{{ talk.description }}</div>
                {% endif %}
                <div class="article-link">Watch Talk</div>
            </div>
        </a>
        {% endfor %}
    </div>
    <div class="articles-footer">
        <a href="/blog/" class="view-all">View All Articles</a>
        <iframe src="https://embeds.beehiiv.com/{{ site.beehiiv_id }}?slim=true" 
                style="max-width: 600px; height: 52px; border: none;" frameborder="0" 
                scrolling="no"></iframe>
    </div>
</section>

<!-- Companies With Students Section -->
<section class="logos">
    <h2>Past Growth Eng Students</h2>
    <div class="logo-row">
        {% for company in site.student_companies %}
        <img src="{{ company.logo }}" alt="{{ company.name }}" class="logo">
        {% endfor %}
    </div>
</section>

<!-- Packages Section -->
<section class="packages">
    <h2>How I Can Help</h2>
    
    <div class="packages-grid">
        <div class="package">
            <h3>MarTech Audit and Roadmap</h3>
            <p>Comprehensive assessment of your current martech and growth tech stack, processes, and team structure. Includes a detailed roadmap for improving your Growth Engineering capabilities and ongoing implementation support.</p>
            <a href="/growth-eng/#audit" class="cta">Get an Audit →</a>
        </div>
        
        <div class="package">
            <h3>Growth Engineering Advising</h3>
            <p>Hands-on mentorship for Growth EM and PMs ramping up to guide your team through growth challenges. Includes weekly strategy sessions, technical guidance, and executive alignment to ensure your growth initiatives succeed.</p>
            <a href="/growth-eng#advising" class="cta">Book Advisory →</a>
        </div>
        
        <div class="package">
            <h3>Tailored Growth Workshops</h3>
            <p>Level up your Growth Engineers through a tailored version of the Growth Eng course that is focused on the industry, stage and maturity of your team.  Customized to address your most pressing growth challenges and opportunities.</p>
            <a href="/growth-eng#course" class="cta">Schedule Training →</a>
        </div>
    </div>
</section>
