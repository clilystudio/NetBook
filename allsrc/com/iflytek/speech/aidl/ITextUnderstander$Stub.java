package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.iflytek.speech.TextUnderstanderListener.Stub;

public abstract class ITextUnderstander$Stub extends Binder
  implements ITextUnderstander
{
  private static final String DESCRIPTOR = "com.iflytek.speech.aidl.ITextUnderstander";
  static final int TRANSACTION_cancel = 2;
  static final int TRANSACTION_isUnderstanding = 3;
  static final int TRANSACTION_understandText = 1;

  public ITextUnderstander$Stub()
  {
    attachInterface(this, "com.iflytek.speech.aidl.ITextUnderstander");
  }

  public static ITextUnderstander asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.aidl.ITextUnderstander");
    if ((localIInterface != null) && ((localIInterface instanceof ITextUnderstander)))
      return (ITextUnderstander)localIInterface;
    return new ITextUnderstander.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.aidl.ITextUnderstander");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ITextUnderstander");
      if (paramParcel1.readInt() != 0);
      for (Intent localIntent = (Intent)Intent.CREATOR.createFromParcel(paramParcel1); ; localIntent = null)
      {
        understandText(localIntent, TextUnderstanderListener.Stub.asInterface(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      }
    case 2:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ITextUnderstander");
      cancel(TextUnderstanderListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 3:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.aidl.ITextUnderstander");
    boolean bool = isUnderstanding();
    paramParcel2.writeNoException();
    if (bool);
    for (int i = 1; ; i = 0)
    {
      paramParcel2.writeInt(i);
      return true;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ITextUnderstander.Stub
 * JD-Core Version:    0.6.0
 */