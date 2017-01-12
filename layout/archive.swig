{% extends "_layout.swig" %}
{% import '_macro/archive.swig' as archive_template %}

{% block title %}
  {{ __('menu.archives') }} · {{ config.title }}
{% endblock %}

{% block content %}
  {{ archive_template.render() }}
{% endblock %}
