package com.iflytek.speech.aidl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.iflytek.speech.VerifierListener.Stub;

public abstract class ISpeakerVerifier$Stub extends Binder
  implements ISpeakerVerifier
{
  private static final String DESCRIPTOR = "com.iflytek.speech.aidl.ISpeakerVerifier";
  static final int TRANSACTION_endSpeak = 3;
  static final int TRANSACTION_getParameter = 6;
  static final int TRANSACTION_register = 2;
  static final int TRANSACTION_setParameter = 5;
  static final int TRANSACTION_stopSpeak = 4;
  static final int TRANSACTION_verify = 1;

  public ISpeakerVerifier$Stub()
  {
    attachInterface(this, "com.iflytek.speech.aidl.ISpeakerVerifier");
  }

  public static ISpeakerVerifier asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.aidl.ISpeakerVerifier");
    if ((localIInterface != null) && ((localIInterface instanceof ISpeakerVerifier)))
      return (ISpeakerVerifier)localIInterface;
    return new ISpeakerVerifier.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.aidl.ISpeakerVerifier");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeakerVerifier");
      int k = verify(paramParcel1.readString(), paramParcel1.readString(), VerifierListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel2.writeInt(k);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeakerVerifier");
      int j = register(paramParcel1.readString(), paramParcel1.readString(), VerifierListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel2.writeInt(j);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeakerVerifier");
      endSpeak();
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeakerVerifier");
      stopSpeak();
      paramParcel2.writeNoException();
      return true;
    case 5:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeakerVerifier");
      int i = setParameter(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i);
      return true;
    case 6:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeakerVerifier");
    String str = getParameter(paramParcel1.readString());
    paramParcel2.writeNoException();
    paramParcel2.writeString(str);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeakerVerifier.Stub
 * JD-Core Version:    0.6.0
 */