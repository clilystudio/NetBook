package android.support.v4.media.session;

import android.support.v4.media.VolumeProviderCompat;
import android.support.v4.media.VolumeProviderCompat.Callback;

class MediaSessionCompat$MediaSessionImplBase$1 extends VolumeProviderCompat.Callback
{
  public void onVolumeChanged(VolumeProviderCompat paramVolumeProviderCompat)
  {
    if (MediaSessionCompat.MediaSessionImplBase.access$200(this.this$0) != paramVolumeProviderCompat)
      return;
    ParcelableVolumeInfo localParcelableVolumeInfo = new ParcelableVolumeInfo(MediaSessionCompat.MediaSessionImplBase.access$300(this.this$0), MediaSessionCompat.MediaSessionImplBase.access$400(this.this$0), paramVolumeProviderCompat.getVolumeControl(), paramVolumeProviderCompat.getMaxVolume(), paramVolumeProviderCompat.getCurrentVolume());
    MediaSessionCompat.MediaSessionImplBase.access$500(this.this$0, localParcelableVolumeInfo);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.MediaSessionImplBase.1
 * JD-Core Version:    0.6.0
 */