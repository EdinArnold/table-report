package com.bazinga.report.app;

import com.bazinga.report.handler.DataHandler;
import ratpack.guice.Guice;
import ratpack.server.RatpackServer;


public class BaseServer {

    public void start() throws Exception {
        try {
            RatpackServer.start(
                    server -> server.registry(Guice.registry(reg -> reg.module(BindModule.class)))
                            .serverConfig(serverConfig -> serverConfig.port(5050))
                            .handlers(chain -> chain
                                    .path("report/v1", DataHandler.class)));
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}