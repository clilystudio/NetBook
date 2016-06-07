package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.VolumeProviderCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class MediaSessionCompat$MediaSessionImplApi21
  implements MediaSessionCompat.MediaSessionImpl
{
  private PendingIntent mMediaButtonIntent;
  private final Object mSessionObj;
  private final MediaSessionCompat.Token mToken;

  public MediaSessionCompat$MediaSessionImplApi21(Context paramContext, String paramString)
  {
    this.mSessionObj = MediaSessionCompatApi21.createSession(paramContext, paramString);
    this.mToken = new MediaSessionCompat.Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj));
  }

  public MediaSessionCompat$MediaSessionImplApi21(Object paramObject)
  {
    this.mSessionObj = MediaSessionCompatApi21.verifySession(paramObject);
    this.mToken = new MediaSessionCompat.Token(MediaSessionCompatApi21.getSessionToken(this.mSessionObj));
  }

  public Object getMediaSession()
  {
    return this.mSessionObj;
  }

  public Object getRemoteControlClient()
  {
    return null;
  }

  public MediaSessionCompat.Token getSessionToken()
  {
    return this.mToken;
  }

  public boolean isActive()
  {
    return MediaSessionCompatApi21.isActive(this.mSessionObj);
  }

  public void release()
  {
    MediaSessionCompatApi21.release(this.mSessionObj);
  }

  public void sendSessionEvent(String paramString, Bundle paramBundle)
  {
    MediaSessionCompatApi21.sendSessionEvent(this.mSessionObj, paramString, paramBundle);
  }

  public void setActive(boolean paramBoolean)
  {
    MediaSessionCompatApi21.setActive(this.mSessionObj, paramBoolean);
  }

  public void setCallback(MediaSessionCompat.Callback paramCallback, Handler paramHandler)
  {
    MediaSessionCompatApi21.setCallback(this.mSessionObj, paramCallback.mCallbackObj, paramHandler);
  }

  public void setExtras(Bundle paramBundle)
  {
    MediaSessionCompatApi21.setExtras(this.mSessionObj, paramBundle);
  }

  public void setFlags(int paramInt)
  {
    MediaSessionCompatApi21.setFlags(this.mSessionObj, paramInt);
  }

  public void setMediaButtonReceiver(PendingIntent paramPendingIntent)
  {
    this.mMediaButtonIntent = paramPendingIntent;
    MediaSessionCompatApi21.setMediaButtonReceiver(this.mSessionObj, paramPendingIntent);
  }

  public void setMetadata(MediaMetadataCompat paramMediaMetadataCompat)
  {
    MediaSessionCompatApi21.setMetadata(this.mSessionObj, paramMediaMetadataCompat.getMediaMetadata());
  }

  public void setPlaybackState(PlaybackStateCompat paramPlaybackStateCompat)
  {
    MediaSessionCompatApi21.setPlaybackState(this.mSessionObj, paramPlaybackStateCompat.getPlaybackState());
  }

  public void setPlaybackToLocal(int paramInt)
  {
    MediaSessionCompatApi21.setPlaybackToLocal(this.mSessionObj, paramInt);
  }

  public void setPlaybackToRemote(VolumeProviderCompat paramVolumeProviderCompat)
  {
    MediaSessionCompatApi21.setPlaybackToRemote(this.mSessionObj, paramVolumeProviderCompat.getVolumeProvider());
  }

  public void setQueue(List<MediaSessionCompat.QueueItem> paramList)
  {
    Object localObject = null;
    if (paramList != null)
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((MediaSessionCompat.QueueItem)localIterator.next()).getQueueItem());
      localObject = localArrayList;
    }
    MediaSessionCompatApi21.setQueue(this.mSessionObj, localObject);
  }

  public void setQueueTitle(CharSequence paramCharSequence)
  {
    MediaSessionCompatApi21.setQueueTitle(this.mSessionObj, paramCharSequence);
  }

  public void setRatingType(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 22)
      MediaSessionCompatApi22.setRatingType(this.mSessionObj, paramInt);
  }

  public void setSessionActivity(PendingIntent paramPendingIntent)
  {
    MediaSessionCompatApi21.setSessionActivity(this.mSessionObj, paramPendingIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImplApi21
 * JD-Core Version:    0.6.0
 */