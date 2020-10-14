---
layout: book
---

{%- for part in site.parts -%}
    <h1>{{ part.title }}</h1>
    {{ part.content }}

    {%- for chapter in site.chapters -%}
        {%- if chapter.part == part.part -%}
            <h2>{{ chapter.title }}</h2>
            {{ chapter.content }}

            {%- for section in site.sections -%}
                {%- if section.part == chapter.part -%}
                    {%- if section.chapter == chapter.chapter -%}
                        <h3>{{ section.title }}</h3>
                        {{ section.content }}
                    {%- endif -%}
                {%- endif -%}
            {%- endfor -%}

        {%- endif -%}
    {%- endfor -%}

{%- endfor -%}
