{% macro render(post) %}

  <article class="post post-type-{{ post.type | default('normal') }}" itemscope itemtype="http://schema.org/Article">
    <header class="post-header">

      <h1 class="post-title">
        <a class="post-link" href="{{ url_for(post.path) }}">{{ post.title }}</a>
      </h1>

      <div class="post-meta">
        <span class="post-time">
          {{ full_date(post.date, 'LL') }}
        </span>
      </div>

      <div class="post-content-collapse">
        {% if post.description %}
          {% set excerpt = post.description %}
        {% elif post.excerpt %}
          {% set excerpt = post.excerpt %}
        {% endif %}

        {% if excerpt %}
          {{ excerpt }}
          <div class="read-more">
            <a href="{{ url_for(post.path) }}" class="read-more-link">{{ __('posts.readmore') }}</a>
          </div>
        {% else %}
          {{ post.content }}
        {% endif %}
      </div>

    </header>
  </article>

{% endmacro %}
