package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class RatingCompat$1
  implements Parcelable.Creator<RatingCompat>
{
  public final RatingCompat createFromParcel(Parcel paramParcel)
  {
    return new RatingCompat(paramParcel.readInt(), paramParcel.readFloat(), null);
  }

  public final RatingCompat[] newArray(int paramInt)
  {
    return new RatingCompat[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.RatingCompat.1
 * JD-Core Version:    0.6.0
 */