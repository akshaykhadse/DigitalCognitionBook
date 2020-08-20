# A Liquid tag for inline syntax highlighting in Jekyll
# https://github.com/bdesham/inline_highlight

module Jekyll
    class InlineHighlightBlock < Tags::HighlightBlock

      def render_rouge(code)
        Jekyll::External.require_with_graceful_fail('rouge')
        ## Akshay
        formatter = Rouge::Formatters::HTML.new(line_numbers: false, wrap: false)
        lexer = Rouge::Lexer.find_fancy(@lang, code) || Rouge::Lexers::PlainText
        code = formatter.format(lexer.lex(code))
        "<pre>#{code}</pre>"
      end

      def add_code_tag(code)
        ## Akshay
        # Add nested <code> tags to code blocks
        code = code.sub(/<pre>/,'<code class="language-' + @lang.to_s.gsub("+", "-") + ' ' +  @lang.to_s + '">')
        code = string_rsub(code, /<\/pre>/,"</code>")
        code.strip
      end
    end
end

Liquid::Template.register_tag('ihighlight', Jekyll::InlineHighlightBlock)