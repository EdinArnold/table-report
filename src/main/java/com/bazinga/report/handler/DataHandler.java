package com.bazinga.report.handler;

import com.bazinga.report.service.DataService;
import com.google.inject.Inject;
import com.google.inject.Singleton;
import ratpack.handling.Context;
import ratpack.handling.Handler;

@Singleton
public class DataHandler implements Handler {

    //DataService dataService;

    @Inject
    public DataHandler() {
    }

    @Override
    public void handle(Context ctx) throws Exception {
        String json = "[ { order: \"123\", guest: \"abc\"}, {order: \"234\", guest: \"bcd\"}]";
        ctx.render(json);
    }

}
