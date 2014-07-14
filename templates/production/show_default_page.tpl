{% extends 'default.tpl' %}
{% set productions = response.productions %}
{% block content %}
<table class="table">
  <tr>
    <td>Наименование</td>
    <td>Фотографии</td>
    <td>Состояние</td>
    <td>Количество</td>
    <td>Цена</td>
  </tr>
{% for production in productions %}
  <tr>
    <td>{{ production.get_name() }}</td>
    <td>{% for image in production.get_images() %}
          <div>
            <img class="img-responsive" src="/production/get_image/?file={{ image }}" width="100px" />
          </div>
        {% endfor %}
    </td>
    <td>{{ production.get_state() }}</td>
    <td>{{ production.get_value() }}</td>
    <td>{{ production.get_price() }}</td>
  </tr>
{% endfor %}
</table>
{% endblock %}
{% block js %}
{% endblock %}