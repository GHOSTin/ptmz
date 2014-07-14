{% extends 'default.tpl' %}
{% set prices = response.prices %}
{% block content %}
{% for price in prices %}
{% set i = price.get_columns()|length %}
<div class="row-fluid">
  <div class="span12">
    <h3>{{ price.get_name() }}</h3>
    <table class="table">
      <tr>
        {% for col in price.get_columns() %}
          <td>{{ col }}</td>
        {% endfor %}
      </tr>
    {% for row in price.get_rows() %}
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