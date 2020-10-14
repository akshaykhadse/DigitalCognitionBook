---
layout: default
---

<header>
  <h1 class="page-title">Table of Contents</h1>
</header>
<div class="content">
  <ul>

    {%- for part in site.parts -%}
      <li><a href="{{ part.url | prepend: site.baseurl }}">Part {{ part.part }}: {{ part.title }}</a></li>
      <ul>

        {%- for chapter in site.chapters -%}
          {%- if chapter.part == part.part -%}
            <li><a href="{{ chapter.url | prepend: site.baseurl }}">Chapter {{ chapter.chapter }}: {{ chapter.title }}</a></li>
            <ul>

            {%- for section in site.sections -%}
              {%- if section.part == chapter.part -%}
                {%- if section.chapter == chapter.chapter -%}
                  <li><a href="{{ chapter.url | prepend: site.baseurl }}#pt{{ chapter.part }}ch{{ chapter.chapter }}-{{ section.title | remove:" " }}">{{ section.title }}</a></li>
                {%- endif -%}
              {%- endif -%}
            {%- endfor -%}

            </ul>
          {%- endif -%}
        {%- endfor -%}

      </ul>
    {%- endfor -%}

  </ul>
</div>
