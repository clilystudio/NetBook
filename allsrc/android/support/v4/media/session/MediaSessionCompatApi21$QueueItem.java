package android.support.v4.media.session;

import android.media.MediaDescription;
import android.media.session.MediaSession.QueueItem;

class MediaSessionCompatApi21$QueueItem
{
  public static Object createItem(Object paramObject, long paramLong)
  {
    return new MediaSession.QueueItem((MediaDescription)paramObject, paramLong);
  }

  public static Object getDescription(Object paramObject)
  {
    return ((MediaSession.QueueItem)paramObject).getDescription();
  }

  public static long getQueueId(Object paramObject)
  {
    return ((MediaSession.QueueItem)paramObject).getQueueId();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompatApi21.QueueItem
 * JD-Core Version:    0.6.0
 */