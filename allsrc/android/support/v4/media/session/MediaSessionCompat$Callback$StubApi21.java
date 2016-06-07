package android.support.v4.media.session;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.RatingCompat;

class MediaSessionCompat$Callback$StubApi21
  implements MediaSessionCompatApi21.Callback
{
  private MediaSessionCompat$Callback$StubApi21(MediaSessionCompat.Callback paramCallback)
  {
  }

  public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    this.this$0.onCommand(paramString, paramBundle, paramResultReceiver);
  }

  public void onCustomAction(String paramString, Bundle paramBundle)
  {
    this.this$0.onCustomAction(paramString, paramBundle);
  }

  public void onFastForward()
  {
    this.this$0.onFastForward();
  }

  public boolean onMediaButtonEvent(Intent paramIntent)
  {
    return this.this$0.onMediaButtonEvent(paramIntent);
  }

  public void onPause()
  {
    this.this$0.onPause();
  }

  public void onPlay()
  {
    this.this$0.onPlay();
  }

  public void onPlayFromMediaId(String paramString, Bundle paramBundle)
  {
    this.this$0.onPlayFromMediaId(paramString, paramBundle);
  }

  public void onPlayFromSearch(String paramString, Bundle paramBundle)
  {
    this.this$0.onPlayFromSearch(paramString, paramBundle);
  }

  public void onRewind()
  {
    this.this$0.onRewind();
  }

  public void onSeekTo(long paramLong)
  {
    this.this$0.onSeekTo(paramLong);
  }

  public void onSetRating(Object paramObject)
  {
    this.this$0.onSetRating(RatingCompat.fromRating(paramObject));
  }

  public void onSkipToNext()
  {
    this.this$0.onSkipToNext();
  }

  public void onSkipToPrevious()
  {
    this.this$0.onSkipToPrevious();
  }

  public void onSkipToQueueItem(long paramLong)
  {
    this.this$0.onSkipToQueueItem(paramLong);
  }

  public void onStop()
  {
    this.this$0.onStop();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.Callback.StubApi21
 * JD-Core Version:    0.6.0
 */