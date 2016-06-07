package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class MediaSessionCompat$QueueItem$1
  implements Parcelable.Creator<MediaSessionCompat.QueueItem>
{
  public final MediaSessionCompat.QueueItem createFromParcel(Parcel paramParcel)
  {
    return new MediaSessionCompat.QueueItem(paramParcel, null);
  }

  public final MediaSessionCompat.QueueItem[] newArray(int paramInt)
  {
    return new MediaSessionCompat.QueueItem[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.QueueItem.1
 * JD-Core Version:    0.6.0
 */