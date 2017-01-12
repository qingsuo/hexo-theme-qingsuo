{% extends "_layout.swig" %}
{% import '_macro/post-collapse.swig' as post_template %}

{% block title %} {{ __('menu.tags') }} · {{ config.title }} {% endblock %}

{% block content %}

  <div id="posts" class="posts-collapse">
    <div class="collection-title">
      <h2 >
        {{ page.tag }}
      </h2>
    </div>

    {% for post in page.posts %}
      {{ post_template.render(post) }}
    {% endfor %}
  </div>
  {% include "_partial/pagination.swig" %}

{% endblock %}
