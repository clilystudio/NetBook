package android.support.v4.media.session;

public final class MediaControllerCompat$PlaybackInfo
{
  public static final int PLAYBACK_TYPE_LOCAL = 1;
  public static final int PLAYBACK_TYPE_REMOTE = 2;
  private final int mAudioStream;
  private final int mCurrentVolume;
  private final int mMaxVolume;
  private final int mPlaybackType;
  private final int mVolumeControl;

  MediaControllerCompat$PlaybackInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.mPlaybackType = paramInt1;
    this.mAudioStream = paramInt2;
    this.mVolumeControl = paramInt3;
    this.mMaxVolume = paramInt4;
    this.mCurrentVolume = paramInt5;
  }

  public final int getAudioStream()
  {
    return this.mAudioStream;
  }

  public final int getCurrentVolume()
  {
    return this.mCurrentVolume;
  }

  public final int getMaxVolume()
  {
    return this.mMaxVolume;
  }

  public final int getPlaybackType()
  {
    return this.mPlaybackType;
  }

  public final int getVolumeControl()
  {
    return this.mVolumeControl;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.PlaybackInfo
 * JD-Core Version:    0.6.0
 */