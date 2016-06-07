package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.iflytek.speech.SynthesizerListener.Stub;

public abstract class ISpeechSynthesizer$Stub extends Binder
  implements ISpeechSynthesizer
{
  private static final String DESCRIPTOR = "com.iflytek.speech.aidl.ISpeechSynthesizer";
  static final int TRANSACTION_getLocalSpeakerList = 7;
  static final int TRANSACTION_isSpeaking = 6;
  static final int TRANSACTION_pauseSpeaking = 3;
  static final int TRANSACTION_resumeSpeaking = 4;
  static final int TRANSACTION_startSpeaking = 2;
  static final int TRANSACTION_stopSpeaking = 5;
  static final int TRANSACTION_synthesizeToUrl = 1;

  public ISpeechSynthesizer$Stub()
  {
    attachInterface(this, "com.iflytek.speech.aidl.ISpeechSynthesizer");
  }

  public static ISpeechSynthesizer asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
    if ((localIInterface != null) && ((localIInterface instanceof ISpeechSynthesizer)))
      return (ISpeechSynthesizer)localIInterface;
    return new ISpeechSynthesizer.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.aidl.ISpeechSynthesizer");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
      int i2 = paramParcel1.readInt();
      Intent localIntent2 = null;
      if (i2 != 0)
        localIntent2 = (Intent)Intent.CREATOR.createFromParcel(paramParcel1);
      int i3 = synthesizeToUrl(localIntent2, SynthesizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i3);
      return true;
    case 2:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
      int n = paramParcel1.readInt();
      Intent localIntent1 = null;
      if (n != 0)
        localIntent1 = (Intent)Intent.CREATOR.createFromParcel(paramParcel1);
      int i1 = startSpeaking(localIntent1, SynthesizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel2.writeInt(i1);
      return true;
    case 3:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
      int m = pauseSpeaking(SynthesizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel2.writeInt(m);
      return true;
    case 4:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
      int k = resumeSpeaking(SynthesizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel2.writeInt(k);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
      int j = stopSpeaking(SynthesizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel2.writeInt(j);
      return true;
    case 6:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
      boolean bool = isSpeaking();
      paramParcel2.writeNoException();
      if (bool);
      for (int i = 1; ; i = 0)
      {
        paramParcel2.writeInt(i);
        return true;
      }
    case 7:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechSynthesizer");
    String str = getLocalSpeakerList();
    paramParcel2.writeNoException();
    paramParcel2.writeString(str);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeechSynthesizer.Stub
 * JD-Core Version:    0.6.0
 */