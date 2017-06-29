package cv.focus.common.domain.model;

/**
 * A domain event is something that is unique, but does not have a lifecycle.
 * The identity may be explicit, for example the sequence number of a payment,
 * or it could be derived from various aspects of the event such as where, when and what
 * has happened.
 */
public abstract class DomainEvent<T> {

  /**
   * @param other The other domain event.
   * @return <code>true</code> if the given domain event and this event are regarded as being the same event.
   */

  public abstract EventType getEventType();
  public final String getHandlerName() {
        return this.getClass().getName() + "Handler";
    }
  public abstract boolean sameEventAs(T other);

}
