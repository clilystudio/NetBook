package com.iflytek.speech;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class GrammarListener$Stub extends Binder
  implements GrammarListener
{
  private static final String DESCRIPTOR = "com.iflytek.speech.GrammarListener";
  static final int TRANSACTION_onBuildFinish = 1;

  public GrammarListener$Stub()
  {
    attachInterface(this, "com.iflytek.speech.GrammarListener");
  }

  public static GrammarListener asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.GrammarListener");
    if ((localIInterface != null) && ((localIInterface instanceof GrammarListener)))
      return (GrammarListener)localIInterface;
    return new GrammarListener.Stub.Proxy(paramIBinder);
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default:
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      paramParcel2.writeString("com.iflytek.speech.GrammarListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.GrammarListener");
    onBuildFinish(paramParcel1.readString(), paramParcel1.readInt());
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.GrammarListener.Stub
 * JD-Core Version:    0.6.0
 */