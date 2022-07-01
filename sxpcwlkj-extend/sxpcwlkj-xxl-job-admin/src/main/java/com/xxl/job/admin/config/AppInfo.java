package com.xxl.job.admin.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.info.Info;
import org.springframework.boot.actuate.info.InfoContributor;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

/**
 * 自定义 info
 * shanpengnian
 */
@Component
public class AppInfo implements InfoContributor {

    @Autowired
    private Environment evn;


    @Override
    public void contribute(Info.Builder builder) {

        builder.withDetail("version",evn.getProperty("info.mavenVersion"));
        builder.withDetail("project",evn.getProperty("info.appName"));

    }
}
