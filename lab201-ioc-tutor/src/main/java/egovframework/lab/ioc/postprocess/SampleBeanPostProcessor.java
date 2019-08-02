package egovframework.lab.ioc.postprocess;

import java.lang.reflect.Method;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.Pointcut;
import org.springframework.aop.support.ComposablePointcut;
import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.aop.support.RootClassFilter;
import org.springframework.aop.support.annotation.AnnotationMethodMatcher;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class SampleBeanPostProcessor implements BeanPostProcessor, ApplicationContextAware {

	private static final Logger LOGGER = LoggerFactory.getLogger(SampleBeanPostProcessor.class);

	private ApplicationContext context;

	public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
		LOGGER.debug("postProcessAfterInitialization with : {}", beanName);
		return bean;
	}

	public Object postProcessBeforeInitialization(final Object bean, String beanName) throws BeansException {

		// 현재 생성처리할 bean 이름 출력
		LOGGER.debug("postProcessBeforeInitialization with : {}", beanName);

		Class<? extends Object> clazz = bean.getClass();

		// Debug Annotation 체크를 위한 MethodMatcher
		AnnotationMethodMatcher annotationMethodMatcher = new AnnotationMethodMatcher(Debug.class);

		// advice(설정파일을 보면 customizableTraceInterceptor 임) + Pointcut 으로 구성된
		// Advisor
		DefaultPointcutAdvisor advisor = (DefaultPointcutAdvisor) context.getBean("debugAdvisor");

		// 현재 bean Class 에 존재하는 모든 메서드를 검색하며 Debug Annotation 이 달려 있는 경우를 체크함
		for (Method method : clazz.getDeclaredMethods()) {
			// Debug Annotation 이 달려 있는 경우
			if (annotationMethodMatcher.matches(method, clazz)) {
				// maching method 로그 출력
				LOGGER.debug("maching method : {}.{}", clazz.getSimpleName(), method.getName());

				// debugAdvisor 조작 전 기본 Pointcut 인 경우 - 현재 찾아진 Debug Annotation
				// 이 달려있는 Bean 에 대한 Pointcut 으로 대체
				// cf.)(현재까지 생성된 Bean - SampleBeanPostProcessor 로 일반 bean 보다 먼저
				// 생성됨)은
				// 최초 등록시 Pointcut.TRUE 이기 때문에 customizableTraceInterceptor 가
				// 구동되었을 것임
				if (advisor.getPointcut() == Pointcut.TRUE) {
					advisor.setPointcut(new ComposablePointcut(new RootClassFilter(clazz), annotationMethodMatcher));
					// 한번 대체된 Pointcut 에 대해서는 다음에 찾아진 Debug Annotation 이 달려있는
					// Bean 에 대한 Pointcut 을 union 시켜 나감.
				} else {
					ComposablePointcut pointcut = (ComposablePointcut) advisor.getPointcut();
					pointcut.union(new ComposablePointcut(new RootClassFilter(clazz), annotationMethodMatcher));
					advisor.setPointcut(pointcut);
				}
			}
		}

		return bean;
	}

	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.context = applicationContext;
	}

}
