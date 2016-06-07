package android.support.v4.media.session;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

public final class PlaybackStateCompat$Builder
{
  private long mActions;
  private long mActiveItemId = -1L;
  private long mBufferedPosition;
  private final List<PlaybackStateCompat.CustomAction> mCustomActions = new ArrayList();
  private CharSequence mErrorMessage;
  private Bundle mExtras;
  private long mPosition;
  private float mRate;
  private int mState;
  private long mUpdateTime;

  public PlaybackStateCompat$Builder()
  {
  }

  public PlaybackStateCompat$Builder(PlaybackStateCompat paramPlaybackStateCompat)
  {
    this.mState = PlaybackStateCompat.access$300(paramPlaybackStateCompat);
    this.mPosition = PlaybackStateCompat.access$400(paramPlaybackStateCompat);
    this.mRate = PlaybackStateCompat.access$500(paramPlaybackStateCompat);
    this.mUpdateTime = PlaybackStateCompat.access$600(paramPlaybackStateCompat);
    this.mBufferedPosition = PlaybackStateCompat.access$700(paramPlaybackStateCompat);
    this.mActions = PlaybackStateCompat.access$800(paramPlaybackStateCompat);
    this.mErrorMessage = PlaybackStateCompat.access$900(paramPlaybackStateCompat);
    if (PlaybackStateCompat.access$1000(paramPlaybackStateCompat) != null)
      this.mCustomActions.addAll(PlaybackStateCompat.access$1000(paramPlaybackStateCompat));
    this.mActiveItemId = PlaybackStateCompat.access$1100(paramPlaybackStateCompat);
    this.mExtras = PlaybackStateCompat.access$1200(paramPlaybackStateCompat);
  }

  public final Builder addCustomAction(PlaybackStateCompat.CustomAction paramCustomAction)
  {
    if (paramCustomAction == null)
      throw new IllegalArgumentException("You may not add a null CustomAction to PlaybackStateCompat.");
    this.mCustomActions.add(paramCustomAction);
    return this;
  }

  public final Builder addCustomAction(String paramString1, String paramString2, int paramInt)
  {
    return addCustomAction(new PlaybackStateCompat.CustomAction(paramString1, paramString2, paramInt, null, null));
  }

  public final PlaybackStateCompat build()
  {
    return new PlaybackStateCompat(this.mState, this.mPosition, this.mBufferedPosition, this.mRate, this.mActions, this.mErrorMessage, this.mUpdateTime, this.mCustomActions, this.mActiveItemId, this.mExtras, null);
  }

  public final Builder setActions(long paramLong)
  {
    this.mActions = paramLong;
    return this;
  }

  public final Builder setActiveQueueItemId(long paramLong)
  {
    this.mActiveItemId = paramLong;
    return this;
  }

  public final Builder setBufferedPosition(long paramLong)
  {
    this.mBufferedPosition = paramLong;
    return this;
  }

  public final Builder setErrorMessage(CharSequence paramCharSequence)
  {
    this.mErrorMessage = paramCharSequence;
    return this;
  }

  public final Builder setExtras(Bundle paramBundle)
  {
    this.mExtras = paramBundle;
    return this;
  }

  public final Builder setState(int paramInt, long paramLong, float paramFloat)
  {
    return setState(paramInt, paramLong, paramFloat, SystemClock.elapsedRealtime());
  }

  public final Builder setState(int paramInt, long paramLong1, float paramFloat, long paramLong2)
  {
    this.mState = paramInt;
    this.mPosition = paramLong1;
    this.mUpdateTime = paramLong2;
    this.mRate = paramFloat;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat.Builder
 * JD-Core Version:    0.6.0
 */