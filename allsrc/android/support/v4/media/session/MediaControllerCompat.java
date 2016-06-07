package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

public final class MediaControllerCompat
{
  private static final String TAG = "MediaControllerCompat";
  private final MediaControllerCompat.MediaControllerImpl mImpl;
  private final MediaSessionCompat.Token mToken;

  public MediaControllerCompat(Context paramContext, MediaSessionCompat.Token paramToken)
  {
    if (paramToken == null)
      throw new IllegalArgumentException("sessionToken must not be null");
    this.mToken = paramToken;
    if (Build.VERSION.SDK_INT >= 21)
    {
      this.mImpl = new MediaControllerCompat.MediaControllerImplApi21(paramContext, paramToken);
      return;
    }
    this.mImpl = new MediaControllerCompat.MediaControllerImplBase(this.mToken);
  }

  public MediaControllerCompat(Context paramContext, MediaSessionCompat paramMediaSessionCompat)
  {
    if (paramMediaSessionCompat == null)
      throw new IllegalArgumentException("session must not be null");
    this.mToken = paramMediaSessionCompat.getSessionToken();
    if (Build.VERSION.SDK_INT >= 21)
    {
      this.mImpl = new MediaControllerCompat.MediaControllerImplApi21(paramContext, paramMediaSessionCompat);
      return;
    }
    this.mImpl = new MediaControllerCompat.MediaControllerImplBase(this.mToken);
  }

  public final void adjustVolume(int paramInt1, int paramInt2)
  {
    this.mImpl.adjustVolume(paramInt1, paramInt2);
  }

  public final boolean dispatchMediaButtonEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent == null)
      throw new IllegalArgumentException("KeyEvent may not be null");
    return this.mImpl.dispatchMediaButtonEvent(paramKeyEvent);
  }

  public final Bundle getExtras()
  {
    return this.mImpl.getExtras();
  }

  public final long getFlags()
  {
    return this.mImpl.getFlags();
  }

  public final Object getMediaController()
  {
    return this.mImpl.getMediaController();
  }

  public final MediaMetadataCompat getMetadata()
  {
    return this.mImpl.getMetadata();
  }

  public final String getPackageName()
  {
    return this.mImpl.getPackageName();
  }

  public final MediaControllerCompat.PlaybackInfo getPlaybackInfo()
  {
    return this.mImpl.getPlaybackInfo();
  }

  public final PlaybackStateCompat getPlaybackState()
  {
    return this.mImpl.getPlaybackState();
  }

  public final List<MediaSessionCompat.QueueItem> getQueue()
  {
    return this.mImpl.getQueue();
  }

  public final CharSequence getQueueTitle()
  {
    return this.mImpl.getQueueTitle();
  }

  public final int getRatingType()
  {
    return this.mImpl.getRatingType();
  }

  public final PendingIntent getSessionActivity()
  {
    return this.mImpl.getSessionActivity();
  }

  public final MediaSessionCompat.Token getSessionToken()
  {
    return this.mToken;
  }

  public final MediaControllerCompat.TransportControls getTransportControls()
  {
    return this.mImpl.getTransportControls();
  }

  public final void registerCallback(MediaControllerCompat.Callback paramCallback)
  {
    registerCallback(paramCallback, null);
  }

  public final void registerCallback(MediaControllerCompat.Callback paramCallback, Handler paramHandler)
  {
    if (paramCallback == null)
      throw new IllegalArgumentException("callback cannot be null");
    if (paramHandler == null)
      paramHandler = new Handler();
    this.mImpl.registerCallback(paramCallback, paramHandler);
  }

  public final void sendCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("command cannot be null or empty");
    this.mImpl.sendCommand(paramString, paramBundle, paramResultReceiver);
  }

  public final void setVolumeTo(int paramInt1, int paramInt2)
  {
    this.mImpl.setVolumeTo(paramInt1, paramInt2);
  }

  public final void unregisterCallback(MediaControllerCompat.Callback paramCallback)
  {
    if (paramCallback == null)
      throw new IllegalArgumentException("callback cannot be null");
    this.mImpl.unregisterCallback(paramCallback);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat
 * JD-Core Version:    0.6.0
 */