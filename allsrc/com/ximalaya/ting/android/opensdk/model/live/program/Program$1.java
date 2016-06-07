package com.ximalaya.ting.android.opensdk.model.live.program;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class Program$1
  implements Parcelable.Creator<Program>
{
  public Program createFromParcel(Parcel paramParcel)
  {
    Program localProgram = new Program();
    localProgram.readFromParcel(paramParcel);
    return localProgram;
  }

  public Program[] newArray(int paramInt)
  {
    return new Program[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.live.program.Program.1
 * JD-Core Version:    0.6.0
 */