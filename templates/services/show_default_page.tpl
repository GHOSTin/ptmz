{% extends 'default.tpl' %}
{% set services = response.services %}
{% block content %}
<div class="row">
  <div class="span12">
    Изготовление продукции по индивидуальным чертежам заказчика.
  </div>
</div>
{% for service in services %}
{% set i = service.get_columns()|length %}
<div class="row-fluid">
  <div class="span12">
    <h3>{{ service.get_name() }}</h3>
    <table class="table">
      <tr>
        {% for col in service.get_columns() %}
          <td>{{ col }}</td>
        {% endfor %}
      </tr>
    {% for row in service.get_rows() %}
      <tr>
        {% for i in 0..i %}
        <td>{{ row[i] }}</td>
        {% endfor %}
      </tr>
    {% endfor %}
    </table>
  </div>
</div>
{% endfor %}
{% endblock %}
{% block js %}
{% endblock %}