package android.support.v4.media.session;

import android.os.Bundle;
import android.support.v4.media.RatingCompat;

public abstract class MediaControllerCompat$TransportControls
{
  public abstract void fastForward();

  public abstract void pause();

  public abstract void play();

  public abstract void playFromMediaId(String paramString, Bundle paramBundle);

  public abstract void playFromSearch(String paramString, Bundle paramBundle);

  public abstract void rewind();

  public abstract void seekTo(long paramLong);

  public abstract void sendCustomAction(PlaybackStateCompat.CustomAction paramCustomAction, Bundle paramBundle);

  public abstract void sendCustomAction(String paramString, Bundle paramBundle);

  public abstract void setRating(RatingCompat paramRatingCompat);

  public abstract void skipToNext();

  public abstract void skipToPrevious();

  public abstract void skipToQueueItem(long paramLong);

  public abstract void stop();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.TransportControls
 * JD-Core Version:    0.6.0
 */