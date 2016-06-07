package android.support.v4.media.session;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.support.v4.media.RatingCompat;

class MediaSessionCompat$MediaSessionImplBase$2
  implements MediaSessionCompatApi14.Callback
{
  public void onCommand(String paramString, Bundle paramBundle, ResultReceiver paramResultReceiver)
  {
    this.val$callback.onCommand(paramString, paramBundle, paramResultReceiver);
  }

  public void onFastForward()
  {
    this.val$callback.onFastForward();
  }

  public boolean onMediaButtonEvent(Intent paramIntent)
  {
    return this.val$callback.onMediaButtonEvent(paramIntent);
  }

  public void onPause()
  {
    this.val$callback.onPause();
  }

  public void onPlay()
  {
    this.val$callback.onPlay();
  }

  public void onRewind()
  {
    this.val$callback.onRewind();
  }

  public void onSeekTo(long paramLong)
  {
    this.val$callback.onSeekTo(paramLong);
  }

  public void onSetRating(Object paramObject)
  {
    this.val$callback.onSetRating(RatingCompat.fromRating(paramObject));
  }

  public void onSkipToNext()
  {
    this.val$callback.onSkipToNext();
  }

  public void onSkipToPrevious()
  {
    this.val$callback.onSkipToPrevious();
  }

  public void onStop()
  {
    this.val$callback.onStop();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.2
 * JD-Core Version:    0.6.0
 */