package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ParcelableVolumeInfo$1
  implements Parcelable.Creator<ParcelableVolumeInfo>
{
  public final ParcelableVolumeInfo createFromParcel(Parcel paramParcel)
  {
    return new ParcelableVolumeInfo(paramParcel);
  }

  public final ParcelableVolumeInfo[] newArray(int paramInt)
  {
    return new ParcelableVolumeInfo[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.ParcelableVolumeInfo.1
 * JD-Core Version:    0.6.0
 */