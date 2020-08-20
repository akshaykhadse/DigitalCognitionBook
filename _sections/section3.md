---
chapter: 02
title: Code
---

### Code block

{%- highlight python -%}
class ExampleClass(ParentClass):
    @staticmethod
    def example(inputStr):
        a = list(inputStr)
        a.reverse()
        return ''.join(a)
    
    def __init__(self, mixin = 'Hello'):
        self.mixin = mixin
{%- endhighlight -%}

### With line numbers

{%- highlight python linenos -%}
class ExampleClass(ParentClass):
    @staticmethod
    def example(inputStr):
        a = list(inputStr)
        a.reverse()
        return ''.join(a)
    
    def __init__(self, mixin = 'Hello'):
        self.mixin = mixin
{%- endhighlight -%}

### Inline

This is {% ihighlight python %}inline code{% endihighlight %} which is wrapped in text.

*[List of language-xxxx classnames](https://prismjs.com/#languages-list)*
