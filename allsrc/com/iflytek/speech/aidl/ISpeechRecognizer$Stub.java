package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.iflytek.speech.GrammarListener.Stub;
import com.iflytek.speech.LexiconListener.Stub;
import com.iflytek.speech.RecognizerListener.Stub;

public abstract class ISpeechRecognizer$Stub extends Binder
  implements ISpeechRecognizer
{
  private static final String DESCRIPTOR = "com.iflytek.speech.aidl.ISpeechRecognizer";
  static final int TRANSACTION_buildGrammar = 5;
  static final int TRANSACTION_cancel = 3;
  static final int TRANSACTION_isListening = 4;
  static final int TRANSACTION_startListening = 1;
  static final int TRANSACTION_stopListening = 2;
  static final int TRANSACTION_updateLexicon = 6;
  static final int TRANSACTION_writeAudio = 7;

  public ISpeechRecognizer$Stub()
  {
    attachInterface(this, "com.iflytek.speech.aidl.ISpeechRecognizer");
  }

  public static ISpeechRecognizer asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
    if ((localIInterface != null) && ((localIInterface instanceof ISpeechRecognizer)))
      return (ISpeechRecognizer)localIInterface;
    return new ISpeechRecognizer.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.aidl.ISpeechRecognizer");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
      int n = paramParcel1.readInt();
      Intent localIntent4 = null;
      if (n != 0)
        localIntent4 = (Intent)Intent.CREATOR.createFromParcel(paramParcel1);
      startListening(localIntent4, RecognizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 2:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
      stopListening(RecognizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
      cancel(RecognizerListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
      boolean bool = isListening();
      paramParcel2.writeNoException();
      if (bool);
      for (int m = 1; ; m = 0)
      {
        paramParcel2.writeInt(m);
        return true;
      }
    case 5:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
      int k = paramParcel1.readInt();
      Intent localIntent3 = null;
      if (k != 0)
        localIntent3 = (Intent)Intent.CREATOR.createFromParcel(paramParcel1);
      buildGrammar(localIntent3, GrammarListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 6:
      paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
      int j = paramParcel1.readInt();
      Intent localIntent2 = null;
      if (j != 0)
        localIntent2 = (Intent)Intent.CREATOR.createFromParcel(paramParcel1);
      updateLexicon(localIntent2, LexiconListener.Stub.asInterface(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 7:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.aidl.ISpeechRecognizer");
    int i = paramParcel1.readInt();
    Intent localIntent1 = null;
    if (i != 0)
      localIntent1 = (Intent)Intent.CREATOR.createFromParcel(paramParcel1);
    writeAudio(localIntent1, paramParcel1.createByteArray(), paramParcel1.readInt(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeechRecognizer.Stub
 * JD-Core Version:    0.6.0
 */