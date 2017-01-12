{% extends "_layout.swig" %}
{% import '_macro/post-collapse.swig' as post_template %}

{% block title %} {{ __('menu.categories') }} · {{ config.title }} {% endblock %}

{% block content %}
  <section id="posts" class="posts-collapse">
    <div class="collection-title">
      <h2 >
        {{ page.category }}
      </h2>
    </div>

    {% for post in page.posts %}
      {{ post_template.render(post) }}
    {% endfor %}
  </section>
  {% include "_partial/pagination.swig" %}

{% endblock %}
