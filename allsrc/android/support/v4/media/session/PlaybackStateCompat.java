package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PlaybackStateCompat
  implements Parcelable
{
  public static final long ACTION_FAST_FORWARD = 64L;
  public static final long ACTION_PAUSE = 2L;
  public static final long ACTION_PLAY = 4L;
  public static final long ACTION_PLAY_FROM_MEDIA_ID = 1024L;
  public static final long ACTION_PLAY_FROM_SEARCH = 2048L;
  public static final long ACTION_PLAY_PAUSE = 512L;
  public static final long ACTION_REWIND = 8L;
  public static final long ACTION_SEEK_TO = 256L;
  public static final long ACTION_SET_RATING = 128L;
  public static final long ACTION_SKIP_TO_NEXT = 32L;
  public static final long ACTION_SKIP_TO_PREVIOUS = 16L;
  public static final long ACTION_SKIP_TO_QUEUE_ITEM = 4096L;
  public static final long ACTION_STOP = 1L;
  public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new PlaybackStateCompat.1();
  public static final long PLAYBACK_POSITION_UNKNOWN = -1L;
  public static final int STATE_BUFFERING = 6;
  public static final int STATE_CONNECTING = 8;
  public static final int STATE_ERROR = 7;
  public static final int STATE_FAST_FORWARDING = 4;
  public static final int STATE_NONE = 0;
  public static final int STATE_PAUSED = 2;
  public static final int STATE_PLAYING = 3;
  public static final int STATE_REWINDING = 5;
  public static final int STATE_SKIPPING_TO_NEXT = 10;
  public static final int STATE_SKIPPING_TO_PREVIOUS = 9;
  public static final int STATE_SKIPPING_TO_QUEUE_ITEM = 11;
  public static final int STATE_STOPPED = 1;
  private final long mActions;
  private final long mActiveItemId;
  private final long mBufferedPosition;
  private List<PlaybackStateCompat.CustomAction> mCustomActions;
  private final CharSequence mErrorMessage;
  private final Bundle mExtras;
  private final long mPosition;
  private final float mSpeed;
  private final int mState;
  private Object mStateObj;
  private final long mUpdateTime;

  private PlaybackStateCompat(int paramInt, long paramLong1, long paramLong2, float paramFloat, long paramLong3, CharSequence paramCharSequence, long paramLong4, List<PlaybackStateCompat.CustomAction> paramList, long paramLong5, Bundle paramBundle)
  {
    this.mState = paramInt;
    this.mPosition = paramLong1;
    this.mBufferedPosition = paramLong2;
    this.mSpeed = paramFloat;
    this.mActions = paramLong3;
    this.mErrorMessage = paramCharSequence;
    this.mUpdateTime = paramLong4;
    this.mCustomActions = new ArrayList(paramList);
    this.mActiveItemId = paramLong5;
    this.mExtras = paramBundle;
  }

  private PlaybackStateCompat(Parcel paramParcel)
  {
    this.mState = paramParcel.readInt();
    this.mPosition = paramParcel.readLong();
    this.mSpeed = paramParcel.readFloat();
    this.mUpdateTime = paramParcel.readLong();
    this.mBufferedPosition = paramParcel.readLong();
    this.mActions = paramParcel.readLong();
    this.mErrorMessage = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.mCustomActions = paramParcel.createTypedArrayList(PlaybackStateCompat.CustomAction.CREATOR);
    this.mActiveItemId = paramParcel.readLong();
    this.mExtras = paramParcel.readBundle();
  }

  public static PlaybackStateCompat fromPlaybackState(Object paramObject)
  {
    if ((paramObject == null) || (Build.VERSION.SDK_INT < 21))
      return null;
    List localList = PlaybackStateCompatApi21.getCustomActions(paramObject);
    ArrayList localArrayList = null;
    if (localList != null)
    {
      localArrayList = new ArrayList(localList.size());
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localArrayList.add(PlaybackStateCompat.CustomAction.fromCustomAction(localIterator.next()));
    }
    if (Build.VERSION.SDK_INT >= 22);
    for (Bundle localBundle = PlaybackStateCompatApi22.getExtras(paramObject); ; localBundle = null)
    {
      PlaybackStateCompat localPlaybackStateCompat = new PlaybackStateCompat(PlaybackStateCompatApi21.getState(paramObject), PlaybackStateCompatApi21.getPosition(paramObject), PlaybackStateCompatApi21.getBufferedPosition(paramObject), PlaybackStateCompatApi21.getPlaybackSpeed(paramObject), PlaybackStateCompatApi21.getActions(paramObject), PlaybackStateCompatApi21.getErrorMessage(paramObject), PlaybackStateCompatApi21.getLastPositionUpdateTime(paramObject), localArrayList, PlaybackStateCompatApi21.getActiveQueueItemId(paramObject), localBundle);
      localPlaybackStateCompat.mStateObj = paramObject;
      return localPlaybackStateCompat;
    }
  }

  public final int describeContents()
  {
    return 0;
  }

  public final long getActions()
  {
    return this.mActions;
  }

  public final long getActiveQueueItemId()
  {
    return this.mActiveItemId;
  }

  public final long getBufferedPosition()
  {
    return this.mBufferedPosition;
  }

  public final List<PlaybackStateCompat.CustomAction> getCustomActions()
  {
    return this.mCustomActions;
  }

  public final CharSequence getErrorMessage()
  {
    return this.mErrorMessage;
  }

  public final Bundle getExtras()
  {
    return this.mExtras;
  }

  public final long getLastPositionUpdateTime()
  {
    return this.mUpdateTime;
  }

  public final float getPlaybackSpeed()
  {
    return this.mSpeed;
  }

  public final Object getPlaybackState()
  {
    if ((this.mStateObj != null) || (Build.VERSION.SDK_INT < 21))
      return this.mStateObj;
    List localList = this.mCustomActions;
    ArrayList localArrayList = null;
    if (localList != null)
    {
      localArrayList = new ArrayList(this.mCustomActions.size());
      Iterator localIterator = this.mCustomActions.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((PlaybackStateCompat.CustomAction)localIterator.next()).getCustomAction());
    }
    if (Build.VERSION.SDK_INT >= 22);
    for (this.mStateObj = PlaybackStateCompatApi22.newInstance(this.mState, this.mPosition, this.mBufferedPosition, this.mSpeed, this.mActions, this.mErrorMessage, this.mUpdateTime, localArrayList, this.mActiveItemId, this.mExtras); ; this.mStateObj = PlaybackStateCompatApi21.newInstance(this.mState, this.mPosition, this.mBufferedPosition, this.mSpeed, this.mActions, this.mErrorMessage, this.mUpdateTime, localArrayList, this.mActiveItemId))
      return this.mStateObj;
  }

  public final long getPosition()
  {
    return this.mPosition;
  }

  public final int getState()
  {
    return this.mState;
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PlaybackState {");
    localStringBuilder.append("state=").append(this.mState);
    localStringBuilder.append(", position=").append(this.mPosition);
    localStringBuilder.append(", buffered position=").append(this.mBufferedPosition);
    localStringBuilder.append(", speed=").append(this.mSpeed);
    localStringBuilder.append(", updated=").append(this.mUpdateTime);
    localStringBuilder.append(", actions=").append(this.mActions);
    localStringBuilder.append(", error=").append(this.mErrorMessage);
    localStringBuilder.append(", custom actions=").append(this.mCustomActions);
    localStringBuilder.append(", active item id=").append(this.mActiveItemId);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mState);
    paramParcel.writeLong(this.mPosition);
    paramParcel.writeFloat(this.mSpeed);
    paramParcel.writeLong(this.mUpdateTime);
    paramParcel.writeLong(this.mBufferedPosition);
    paramParcel.writeLong(this.mActions);
    TextUtils.writeToParcel(this.mErrorMessage, paramParcel, paramInt);
    paramParcel.writeTypedList(this.mCustomActions);
    paramParcel.writeLong(this.mActiveItemId);
    paramParcel.writeBundle(this.mExtras);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat
 * JD-Core Version:    0.6.0
 */