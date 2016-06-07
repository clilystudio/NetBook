package com.iflytek.speech;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class VerifierListener$Stub extends Binder
  implements VerifierListener
{
  private static final String DESCRIPTOR = "com.iflytek.speech.VerifierListener";
  static final int TRANSACTION_onBeginOfSpeech = 2;
  static final int TRANSACTION_onCancel = 6;
  static final int TRANSACTION_onEnd = 5;
  static final int TRANSACTION_onEndOfSpeech = 3;
  static final int TRANSACTION_onError = 7;
  static final int TRANSACTION_onRegister = 4;
  static final int TRANSACTION_onVolumeChanged = 1;

  public VerifierListener$Stub()
  {
    attachInterface(this, "com.iflytek.speech.VerifierListener");
  }

  public static VerifierListener asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.VerifierListener");
    if ((localIInterface != null) && ((localIInterface instanceof VerifierListener)))
      return (VerifierListener)localIInterface;
    return new VerifierListener.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.VerifierListener");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.iflytek.speech.VerifierListener");
      onVolumeChanged(paramParcel1.readInt());
      return true;
    case 2:
      paramParcel1.enforceInterface("com.iflytek.speech.VerifierListener");
      onBeginOfSpeech();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.iflytek.speech.VerifierListener");
      onEndOfSpeech();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.iflytek.speech.VerifierListener");
      int j = paramParcel1.readInt();
      VerifierResult localVerifierResult2 = null;
      if (j != 0)
        localVerifierResult2 = (VerifierResult)VerifierResult.CREATOR.createFromParcel(paramParcel1);
      onRegister(localVerifierResult2);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.iflytek.speech.VerifierListener");
      int i = paramParcel1.readInt();
      VerifierResult localVerifierResult1 = null;
      if (i != 0)
        localVerifierResult1 = (VerifierResult)VerifierResult.CREATOR.createFromParcel(paramParcel1);
      onEnd(localVerifierResult1, paramParcel1.readInt());
      return true;
    case 6:
      paramParcel1.enforceInterface("com.iflytek.speech.VerifierListener");
      onCancel();
      return true;
    case 7:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.VerifierListener");
    onError(paramParcel1.readInt());
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.VerifierListener.Stub
 * JD-Core Version:    0.6.0
 */