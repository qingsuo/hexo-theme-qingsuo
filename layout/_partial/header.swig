<div class="logo-wrapper">
  <a href="{{ url_for('.') }}" class="logo">{{ config.title }}</a>
</div>

<div class="header-icon">
  <span></span>
  <span></span>
  <span></span>
</div>

<nav class="site-nav">
  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item">
          <a class="menu-item-link" href="{{ url_for(path) }}">
            {{ __('menu.' + itemName) }}
          </a>
        </li>
      {% endfor %}
      {% if theme.search %}
        <li class="menu-search">
          <form>
            <i class="iconfont icon-search" id="open-search"></i>
            <input type="text" class="search-input" id="search-input" />
            <i class="iconfont icon-close" id="close-search"></i>
          </form>
        </li>
      {% endif %}
    </ul>
  {% endif %}
</nav>