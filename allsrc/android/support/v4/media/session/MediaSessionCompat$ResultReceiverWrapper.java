package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.ResultReceiver;

final class MediaSessionCompat$ResultReceiverWrapper
  implements Parcelable
{
  public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new MediaSessionCompat.ResultReceiverWrapper.1();
  private ResultReceiver mResultReceiver;

  MediaSessionCompat$ResultReceiverWrapper(Parcel paramParcel)
  {
    this.mResultReceiver = ((ResultReceiver)ResultReceiver.CREATOR.createFromParcel(paramParcel));
  }

  public MediaSessionCompat$ResultReceiverWrapper(ResultReceiver paramResultReceiver)
  {
    this.mResultReceiver = paramResultReceiver;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    this.mResultReceiver.writeToParcel(paramParcel, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.media.session.MediaSessionCompat.ResultReceiverWrapper
 * JD-Core Version:    0.6.0
 */