package android.support.v4.media.session;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;

public abstract interface MediaSessionCompatApi21$Callback
{
  public abstract void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver);

  public abstract void onCustomAction(String paramString, Bundle paramBundle);

  public abstract void onFastForward();

  public abstract boolean onMediaButtonEvent(Intent paramIntent);

  public abstract void onPause();

  public abstract void onPlay();

  public abstract void onPlayFromMediaId(String paramString, Bundle paramBundle);

  public abstract void onPlayFromSearch(String paramString, Bundle paramBundle);

  public abstract void onRewind();

  public abstract void onSeekTo(long paramLong);

  public abstract void onSetRating(Object paramObject);

  public abstract void onSkipToNext();

  public abstract void onSkipToPrevious();

  public abstract void onSkipToQueueItem(long paramLong);

  public abstract void onStop();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompatApi21.Callback
 * JD-Core Version:    0.6.0
 */