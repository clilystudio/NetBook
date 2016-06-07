package android.support.v4.media;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;

final class MediaDescriptionCompat$1
  implements Parcelable.Creator<MediaDescriptionCompat>
{
  public final MediaDescriptionCompat createFromParcel(Parcel paramParcel)
  {
    if (Build.VERSION.SDK_INT < 21)
      return new MediaDescriptionCompat(paramParcel, null);
    return MediaDescriptionCompat.fromMediaDescription(MediaDescriptionCompatApi21.fromParcel(paramParcel));
  }

  public final MediaDescriptionCompat[] newArray(int paramInt)
  {
    return new MediaDescriptionCompat[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.MediaDescriptionCompat.1
 * JD-Core Version:    0.6.0
 */