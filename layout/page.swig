{% extends "_layout.swig" %}

{% block title %}
  {% set page_title_suffix = ' | ' + config.title %}

  {% if page.type === "categories" %}
    {{ __('title.category') + page_title_suffix }}
  {% elif page.type === "tags" %}
    {{ __('title.tag') + page_title_suffix }}
  {% else %}
    {{ page.title + page_title_suffix }}
  {% endif %}
{% endblock %}

{% block content %}
  <article class="post">
    <div class="post-content">
    {# tagcloud page support #}
    {% if page.type === "tags" %}
      <div class="tag-cloud">
        <div class="tag-cloud-title">
          {{ _p('counter.tagcloud', site.tags.length) }}
        </div>
        <div class="tag-cloud-tags">
          {{ tagcloud({min_font: 16, max_font: 28, amount: 100, orderby: 'count'}) }}
        </div>
      </div>
    {% elif page.type === 'categories' %}
      <div class="categories">
        <div class="categories-title">
          {{ _p('counter.categories', site.categories.length) }}
        </div>
        <div class="categories-tags">
          {{ list_categories({style: null, separator: ' ', depth: '-1'}) }}
        </div>
      </div>
    {% else %}
      {{ page.content }}
    {% endif %}
    </div>
  </article>
{% endblock %}
