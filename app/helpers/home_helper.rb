module HomeHelper

    def create_line_with_interrupt( interrupt_line, continue_line, down_var, up_var, collection)

        a = Array.new
        for i in 0..17 do
            if i < interrupt_line
                a.push(link_to render_element(collection[i + down_var]) , 
                show_element_show_path(element: collection[i + down_var][:at_num]), 
                class: "cell")
            elsif i >= interrupt_line && i < continue_line
                a.push(render_element(nil))
            else
                a.push(link_to  render_element(collection[i + up_var ]), 
                show_element_show_path(element: collection[i + up_var][:at_num]), 
                class: "cell")
            end
        end
        a.join.html_safe
    end
    #data-toggle= "tooltip" data-placement: "top" title: "Hooray!"
    def create_line_without_interrupt( up_var, collection)
        a = Array.new
        for i in 0..17 do
             a.push (link_to  render_element(collection[i + up_var ] ), 
             show_element_show_path(element: collection[i + up_var][:at_num]), 
             {class: "cell"})
        end
        a.join.html_safe
    end
    def render_element(element)
        if element != nil
            "<div class=\"element\">
                <div class=\"at_num\">#{element[:at_num]}</div>
                
                <div class=\"symbol\">#{element[:symbol]}</div>
                
                <div class=\"at_details\">#{element[:name]}<br />#{element[:number]}</div>
            </div>".html_safe
        else
           "<div class=\"cell\"></div>".html_safe
        end
    end
    
    
    
end
