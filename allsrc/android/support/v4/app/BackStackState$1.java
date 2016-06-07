package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class BackStackState$1
  implements Parcelable.Creator<BackStackState>
{
  public final BackStackState createFromParcel(Parcel paramParcel)
  {
    return new BackStackState(paramParcel);
  }

  public final BackStackState[] newArray(int paramInt)
  {
    return new BackStackState[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.app.BackStackState.1
 * JD-Core Version:    0.6.0
 */