package android.support.v4.media.session;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.RatingCompat;
import android.util.Log;

class MediaControllerCompat$TransportControlsBase extends MediaControllerCompat.TransportControls
{
  private IMediaSession mBinder;

  public MediaControllerCompat$TransportControlsBase(IMediaSession paramIMediaSession)
  {
    this.mBinder = paramIMediaSession;
  }

  public void fastForward()
  {
    try
    {
      this.mBinder.fastForward();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in fastForward. " + localRemoteException);
    }
  }

  public void pause()
  {
    try
    {
      this.mBinder.pause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in pause. " + localRemoteException);
    }
  }

  public void play()
  {
    try
    {
      this.mBinder.play();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in play. " + localRemoteException);
    }
  }

  public void playFromMediaId(String paramString, Bundle paramBundle)
  {
    try
    {
      this.mBinder.playFromMediaId(paramString, paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in playFromMediaId. " + localRemoteException);
    }
  }

  public void playFromSearch(String paramString, Bundle paramBundle)
  {
    try
    {
      this.mBinder.playFromSearch(paramString, paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in playFromSearch. " + localRemoteException);
    }
  }

  public void rewind()
  {
    try
    {
      this.mBinder.rewind();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in rewind. " + localRemoteException);
    }
  }

  public void seekTo(long paramLong)
  {
    try
    {
      this.mBinder.seekTo(paramLong);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in seekTo. " + localRemoteException);
    }
  }

  public void sendCustomAction(PlaybackStateCompat.CustomAction paramCustomAction, Bundle paramBundle)
  {
    sendCustomAction(paramCustomAction.getAction(), paramBundle);
  }

  public void sendCustomAction(String paramString, Bundle paramBundle)
  {
    try
    {
      this.mBinder.sendCustomAction(paramString, paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in sendCustomAction. " + localRemoteException);
    }
  }

  public void setRating(RatingCompat paramRatingCompat)
  {
    try
    {
      this.mBinder.rate(paramRatingCompat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in setRating. " + localRemoteException);
    }
  }

  public void skipToNext()
  {
    try
    {
      this.mBinder.next();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in skipToNext. " + localRemoteException);
    }
  }

  public void skipToPrevious()
  {
    try
    {
      this.mBinder.previous();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in skipToPrevious. " + localRemoteException);
    }
  }

  public void skipToQueueItem(long paramLong)
  {
    try
    {
      this.mBinder.skipToQueueItem(paramLong);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in skipToQueueItem. " + localRemoteException);
    }
  }

  public void stop()
  {
    try
    {
      this.mBinder.stop();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("MediaControllerCompat", "Dead object in stop. " + localRemoteException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.TransportControlsBase
 * JD-Core Version:    0.6.0
 */