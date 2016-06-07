package android.support.v4.media.session;

import android.media.Rating;
import android.media.RemoteControlClient.OnMetadataUpdateListener;

class MediaSessionCompatApi19$OnMetadataUpdateListener<T extends MediaSessionCompatApi14.Callback>
  implements RemoteControlClient.OnMetadataUpdateListener
{
  protected final T mCallback;

  public MediaSessionCompatApi19$OnMetadataUpdateListener(T paramT)
  {
    this.mCallback = paramT;
  }

  public void onMetadataUpdate(int paramInt, Object paramObject)
  {
    if ((paramInt == 268435457) && ((paramObject instanceof Rating)))
      this.mCallback.onSetRating(paramObject);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompatApi19.OnMetadataUpdateListener
 * JD-Core Version:    0.6.0
 */