package cv.focus.core.infrastructure.messaging.jms.init;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.actor.Props;
import cv.focus.common.domain.model.AsyncEventEngine;
import cv.focus.common.domain.model.SendEmail;
import cv.focus.common.domain.model.edm.EDMBaseEvent;
import cv.focus.core.infrastructure.messaging.jms.handler.CreateInformationHandler;
import cv.focus.core.infrastructure.messaging.jms.handler.EDMSendMailHandler;
import cv.focus.core.infrastructure.messaging.jms.handler.SendMailHandler;
import cv.focus.core.infrastructure.messaging.jms.handler.UserNewMsgHandler;
import cv.focus.core.infrastructure.messaging.jms.model.CreateInformationEvent;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * ActorsInitListener
 *
 * @author liuruichao
 * @date 15/8/12 下午2:50
 */
public class ActorsInitListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        ActorSystem rootSystem = AsyncEventEngine.getActorSystem();
        ActorRef sendMailHandler = rootSystem.actorOf(Props.create(SendMailHandler.class));
        ActorRef edmSendMailHandler = rootSystem.actorOf(Props.create(EDMSendMailHandler.class));
        ActorRef createInformationHandler = rootSystem.actorOf(Props.create(CreateInformationHandler.class));
        //ActorRef userNewMsgHandler = rootSystem.actorOf(Props.create(UserNewMsgHandler.class));
        // 注册监听者
        rootSystem.eventStream().subscribe(sendMailHandler, SendEmail.class);
        rootSystem.eventStream().subscribe(edmSendMailHandler, EDMBaseEvent.class);
        rootSystem.eventStream().subscribe(createInformationHandler, CreateInformationEvent.class);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        AsyncEventEngine.getActorSystem().shutdown();
        AsyncEventEngine.getActorSystem().awaitTermination();
    }
}
