package com.iflytek.speech;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class LexiconListener$Stub extends Binder
  implements LexiconListener
{
  private static final String DESCRIPTOR = "com.iflytek.speech.LexiconListener";
  static final int TRANSACTION_onLexiconUpdated = 1;

  public LexiconListener$Stub()
  {
    attachInterface(this, "com.iflytek.speech.LexiconListener");
  }

  public static LexiconListener asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.LexiconListener");
    if ((localIInterface != null) && ((localIInterface instanceof LexiconListener)))
      return (LexiconListener)localIInterface;
    return new LexiconListener.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.LexiconListener");
      return true;
    case 1:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.LexiconListener");
    onLexiconUpdated(paramParcel1.readString(), paramParcel1.readInt());
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.LexiconListener.Stub
 * JD-Core Version:    0.6.0
 */