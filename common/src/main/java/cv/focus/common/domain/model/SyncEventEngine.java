package cv.focus.common.domain.model;

import akka.actor.ActorRef;
import akka.actor.ActorSystem;
import akka.actor.Props;

/**
 * AkkaManager
 *
 * @author liuruichao
 * @date 15/8/13 下午1:35
 */
public final class SyncEventEngine implements EventEngine {
    public void fireEvent(DomainEvent event) {
        if(event.getEventType().equals("")){

        }
    }
}
