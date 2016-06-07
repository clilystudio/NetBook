package com.iflytek.speech;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class WakeuperListener$Stub extends Binder
  implements WakeuperListener
{
  private static final String DESCRIPTOR = "com.iflytek.speech.WakeuperListener";
  static final int TRANSACTION_onBeginOfSpeech = 2;
  static final int TRANSACTION_onEndOfSpeech = 3;
  static final int TRANSACTION_onError = 5;
  static final int TRANSACTION_onResult = 4;
  static final int TRANSACTION_onVolumeChanged = 1;

  public WakeuperListener$Stub()
  {
    attachInterface(this, "com.iflytek.speech.WakeuperListener");
  }

  public static WakeuperListener asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.WakeuperListener");
    if ((localIInterface != null) && ((localIInterface instanceof WakeuperListener)))
      return (WakeuperListener)localIInterface;
    return new WakeuperListener.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.WakeuperListener");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.iflytek.speech.WakeuperListener");
      onVolumeChanged(paramParcel1.readInt());
      return true;
    case 2:
      paramParcel1.enforceInterface("com.iflytek.speech.WakeuperListener");
      onBeginOfSpeech();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.iflytek.speech.WakeuperListener");
      onEndOfSpeech();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.iflytek.speech.WakeuperListener");
      if (paramParcel1.readInt() != 0);
      for (WakeuperResult localWakeuperResult = (WakeuperResult)WakeuperResult.CREATOR.createFromParcel(paramParcel1); ; localWakeuperResult = null)
      {
        onResult(localWakeuperResult);
        return true;
      }
    case 5:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.WakeuperListener");
    onError(paramParcel1.readInt());
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.WakeuperListener.Stub
 * JD-Core Version:    0.6.0
 */