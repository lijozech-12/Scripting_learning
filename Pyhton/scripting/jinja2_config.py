from jinja2 import template

template = Template('Hello,{{name}}!')
rendered = template.render(name='DevOps')
print(rendered)