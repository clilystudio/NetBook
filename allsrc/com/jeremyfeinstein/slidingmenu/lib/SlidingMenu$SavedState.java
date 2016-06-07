package com.jeremyfeinstein.slidingmenu.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

public class SlidingMenu$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new h();
  private final int a;

  private SlidingMenu$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readInt();
  }

  public SlidingMenu$SavedState(Parcelable paramParcelable, int paramInt)
  {
    super(paramParcelable);
    this.a = paramInt;
  }

  public final int a()
  {
    return this.a;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.jeremyfeinstein.slidingmenu.lib.SlidingMenu.SavedState
 * JD-Core Version:    0.6.0
 */