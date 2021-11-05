本项目基于[rayson517](https://gitee.com/rayson517/eladmin-plus)的eladmin mybatis-plus版本
### 更改特性
定时任务更换成 quartz，原系统定时任务在集群环境下定时任务会执行两次
Websocket由@ServerEndpoint注解更换为使用STOMP(Simple Text Oriented Messaging Protoco)

前端项目见 eladmin-ui 模块

**原项目地址：**  [https://github.com/elunez/eladmin](https://github.com/elunez/eladmin)
### springboot版本升级 CORS 跨域
Spring Boot Starter Parent >= 2.4.0 版本 corsfilter配置有改动
```
 @Bean
    public CorsFilter corsFilter() {
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        CorsConfiguration config = new CorsConfiguration();
        config.setAllowCredentials(true);
        // Spring Boot Starter Parent < 2.4.0 使用如下
        // config.addAllowedOrigin("*");
        // Spring Boot Starter Parent >=2.4.0 使用如下
        config.addAllowedOriginPattern("*");
        config.addAllowedHeader("*");
        config.addAllowedMethod("*");
        source.registerCorsConfiguration("/**", config);
        return new CorsFilter(source);
    }
```
Websocket配置 STOMP 端点时跨域配置同样更改
```
@Override
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		/*
		 * 1. 将 /api/my-device-app 路径注册为STOMP的端点，
		 *    用户连接了这个端点后就可以进行websocket通讯，支持socketJs
		 * 2. setAllowedOriginPatterns("*")表示可以跨域
		 * 3. withSockJS()表示支持socktJS访问
		 * 4. addInterceptors 添加自定义拦截器，这个拦截器是上一个demo自己定义的获取httpsession的拦截器
		 * 5. addInterceptors 添加拦截处理，这里MyPrincipalHandshakeHandler 封装的认证用户信息
		 */

		registry
				.addEndpoint("/api/my-device-app")
				// Spring Boot Starter Parent < 2.4.0 使用如下
				// .setAllowedOrigins("*")
				// Spring Boot Starter Parent >=2.4.0 使用如下
				.setAllowedOriginPatterns("*")
				.withSockJS();
	}
```
