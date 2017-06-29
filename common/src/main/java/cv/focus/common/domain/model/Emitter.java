package cv.focus.common.domain.model;

import akka.actor.UntypedActor;

/**
 * 总线
 *
 * @author liuruichao
 * @date 15/8/29 下午4:54
 */
public class Emitter extends UntypedActor {
    @Override
    public void onReceive(Object msg) throws Exception {
        if (msg instanceof DomainEvent) {
            getContext().system().eventStream().publish(msg);
        }
    }
}
