package mblog.template.directive;

import mblog.modules.blog.service.BlogClassService;
import mblog.template.DirectiveHandler;
import mblog.template.TemplateDirective;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BlogClassDirective extends TemplateDirective {
    @Autowired
    private BlogClassService blogClassService;

    @Override
    public String getName() {
        return "blogClass";
    }

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        Integer id = handler.getInteger("id", 0);
        handler.put(RESULT, blogClassService.getById(id)).render();
    }
}