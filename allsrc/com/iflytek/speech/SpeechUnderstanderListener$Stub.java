package com.iflytek.speech;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class SpeechUnderstanderListener$Stub extends Binder
  implements SpeechUnderstanderListener
{
  private static final String DESCRIPTOR = "com.iflytek.speech.SpeechUnderstanderListener";
  static final int TRANSACTION_onBeginOfSpeech = 2;
  static final int TRANSACTION_onEndOfSpeech = 3;
  static final int TRANSACTION_onError = 5;
  static final int TRANSACTION_onEvent = 6;
  static final int TRANSACTION_onResult = 4;
  static final int TRANSACTION_onVolumeChanged = 1;

  public SpeechUnderstanderListener$Stub()
  {
    attachInterface(this, "com.iflytek.speech.SpeechUnderstanderListener");
  }

  public static SpeechUnderstanderListener asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null)
      return null;
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.iflytek.speech.SpeechUnderstanderListener");
    if ((localIInterface != null) && ((localIInterface instanceof SpeechUnderstanderListener)))
      return (SpeechUnderstanderListener)localIInterface;
    return new SpeechUnderstanderListener.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.iflytek.speech.SpeechUnderstanderListener");
      return true;
    case 1:
      paramParcel1.enforceInterface("com.iflytek.speech.SpeechUnderstanderListener");
      onVolumeChanged(paramParcel1.readInt(), paramParcel1.createByteArray());
      return true;
    case 2:
      paramParcel1.enforceInterface("com.iflytek.speech.SpeechUnderstanderListener");
      onBeginOfSpeech();
      return true;
    case 3:
      paramParcel1.enforceInterface("com.iflytek.speech.SpeechUnderstanderListener");
      onEndOfSpeech();
      return true;
    case 4:
      paramParcel1.enforceInterface("com.iflytek.speech.SpeechUnderstanderListener");
      int n = paramParcel1.readInt();
      UnderstanderResult localUnderstanderResult = null;
      if (n != 0)
        localUnderstanderResult = (UnderstanderResult)UnderstanderResult.CREATOR.createFromParcel(paramParcel1);
      onResult(localUnderstanderResult);
      return true;
    case 5:
      paramParcel1.enforceInterface("com.iflytek.speech.SpeechUnderstanderListener");
      onError(paramParcel1.readInt());
      return true;
    case 6:
    }
    paramParcel1.enforceInterface("com.iflytek.speech.SpeechUnderstanderListener");
    int i = paramParcel1.readInt();
    int j = paramParcel1.readInt();
    int k = paramParcel1.readInt();
    int m = paramParcel1.readInt();
    Bundle localBundle = null;
    if (m != 0)
      localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
    onEvent(i, j, k, localBundle);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeechUnderstanderListener.Stub
 * JD-Core Version:    0.6.0
 */