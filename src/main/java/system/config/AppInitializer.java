package system.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	protected Class[] getRootConfigClasses(){
		return new Class[]{HibernateConfig.class};
	}

	@Override
	protected Class[] getServletConfigClasses(){
		return new Class[]{WebConfig.class};
	}

	@Override
	protected String[] getServletMappings(){
		return new String[]{"/"};
	}

}
