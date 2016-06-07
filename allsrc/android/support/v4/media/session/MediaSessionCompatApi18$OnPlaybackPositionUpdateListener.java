package android.support.v4.media.session;

import android.media.RemoteControlClient.OnPlaybackPositionUpdateListener;

class MediaSessionCompatApi18$OnPlaybackPositionUpdateListener<T extends MediaSessionCompatApi14.Callback>
  implements RemoteControlClient.OnPlaybackPositionUpdateListener
{
  protected final T mCallback;

  public MediaSessionCompatApi18$OnPlaybackPositionUpdateListener(T paramT)
  {
    this.mCallback = paramT;
  }

  public void onPlaybackPositionUpdate(long paramLong)
  {
    this.mCallback.onSeekTo(paramLong);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompatApi18.OnPlaybackPositionUpdateListener
 * JD-Core Version:    0.6.0
 */