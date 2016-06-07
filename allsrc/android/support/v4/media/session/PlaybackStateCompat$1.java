package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class PlaybackStateCompat$1
  implements Parcelable.Creator<PlaybackStateCompat>
{
  public final PlaybackStateCompat createFromParcel(Parcel paramParcel)
  {
    return new PlaybackStateCompat(paramParcel, null);
  }

  public final PlaybackStateCompat[] newArray(int paramInt)
  {
    return new PlaybackStateCompat[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.PlaybackStateCompat.1
 * JD-Core Version:    0.6.0
 */