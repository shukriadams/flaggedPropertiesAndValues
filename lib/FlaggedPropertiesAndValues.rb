module SCSSLint
    class Linter::FlaggedPropertiesAndValues < Linter
        include LinterRegistry

        def visit_root(_node)
            @properties = []
            @values = []

            if (config['properties'] != nil)
                 @properties = config['properties']
            end

            if (config['values'] != nil)
                 @values = config['values']
            end

            yield # Continue linting children
        end

        def visit_prop(node)
            property = node.name.join
            if @properties.include?property
                add_lint(node, "Property \"#{property}\" is flagged as undesirable.")
            end

            if node.value.respond_to?(:value)
                value = node.value.value.to_s
                if @values.include?value
                    add_lint(node, "Value \"#{value}\" is flagged as undesirable.")
                end
            end
        end
    end
end
