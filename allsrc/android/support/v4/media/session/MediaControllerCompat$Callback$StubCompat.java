package android.support.v4.media.session;

import android.os.Bundle;
import android.support.v4.media.MediaMetadataCompat;
import java.util.List;

class MediaControllerCompat$Callback$StubCompat extends IMediaControllerCallback.Stub
{
  private MediaControllerCompat$Callback$StubCompat(MediaControllerCompat.Callback paramCallback)
  {
  }

  public void onEvent(String paramString, Bundle paramBundle)
  {
    MediaControllerCompat.Callback.access$200(this.this$0).post(1, paramString, paramBundle);
  }

  public void onExtrasChanged(Bundle paramBundle)
  {
    MediaControllerCompat.Callback.access$200(this.this$0).post(7, paramBundle, null);
  }

  public void onMetadataChanged(MediaMetadataCompat paramMediaMetadataCompat)
  {
    MediaControllerCompat.Callback.access$200(this.this$0).post(3, paramMediaMetadataCompat, null);
  }

  public void onPlaybackStateChanged(PlaybackStateCompat paramPlaybackStateCompat)
  {
    MediaControllerCompat.Callback.access$200(this.this$0).post(2, paramPlaybackStateCompat, null);
  }

  public void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
  {
    MediaControllerCompat.Callback.access$200(this.this$0).post(5, paramList, null);
  }

  public void onQueueTitleChanged(CharSequence paramCharSequence)
  {
    MediaControllerCompat.Callback.access$200(this.this$0).post(6, paramCharSequence, null);
  }

  public void onSessionDestroyed()
  {
    MediaControllerCompat.Callback.access$200(this.this$0).post(8, null, null);
  }

  public void onVolumeInfoChanged(ParcelableVolumeInfo paramParcelableVolumeInfo)
  {
    if (paramParcelableVolumeInfo != null);
    for (MediaControllerCompat.PlaybackInfo localPlaybackInfo = new MediaControllerCompat.PlaybackInfo(paramParcelableVolumeInfo.volumeType, paramParcelableVolumeInfo.audioStream, paramParcelableVolumeInfo.controlType, paramParcelableVolumeInfo.maxVolume, paramParcelableVolumeInfo.currentVolume); ; localPlaybackInfo = null)
    {
      MediaControllerCompat.Callback.access$200(this.this$0).post(4, localPlaybackInfo, null);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaControllerCompat.Callback.StubCompat
 * JD-Core Version:    0.6.0
 */