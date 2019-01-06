package mblog.template.directive;

import mblog.modules.blog.service.ArticleTypeService;
import mblog.template.DirectiveHandler;
import mblog.template.TemplateDirective;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ArticleTypeDirective extends TemplateDirective {
    @Autowired
    private ArticleTypeService articleTypeService;

    @Override
    public String getName() {
        return "articleType";
    }

    @Override
    public void execute(DirectiveHandler handler) throws Exception {
        Integer id = handler.getInteger("id", 0);
        handler.put(RESULT, articleTypeService.getById(id)).render();
    }
}