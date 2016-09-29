package com.bazinga.report.app;

import com.google.inject.AbstractModule;

import com.bazinga.report.handler.DataHandler;

public class BindModule extends AbstractModule {

    @Override
    protected void configure() {
        bind(DataHandler.class);
    }

}
