package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.iflytek.speech.GrammarListener;
import com.iflytek.speech.LexiconListener;
import com.iflytek.speech.RecognizerListener;

class ISpeechRecognizer$Stub$Proxy
  implements ISpeechRecognizer
{
  private IBinder mRemote;

  ISpeechRecognizer$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }

  public IBinder asBinder()
  {
    return this.mRemote;
  }

  public void buildGrammar(Intent paramIntent, GrammarListener paramGrammarListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.ISpeechRecognizer");
        if (paramIntent == null)
          continue;
        localParcel1.writeInt(1);
        paramIntent.writeToParcel(localParcel1, 0);
        if (paramGrammarListener != null)
        {
          localIBinder = paramGrammarListener.asBinder();
          localParcel1.writeStrongBinder(localIBinder);
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      IBinder localIBinder = null;
    }
  }

  public void cancel(RecognizerListener paramRecognizerListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.ISpeechRecognizer");
      if (paramRecognizerListener != null);
      for (IBinder localIBinder = paramRecognizerListener.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.mRemote.transact(3, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }

  public String getInterfaceDescriptor()
  {
    return "com.iflytek.speech.aidl.ISpeechRecognizer";
  }

  public boolean isListening()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.ISpeechRecognizer");
      this.mRemote.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      int j = 0;
      if (i != 0)
        j = 1;
      return j;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }

  public void startListening(Intent paramIntent, RecognizerListener paramRecognizerListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.ISpeechRecognizer");
        if (paramIntent == null)
          continue;
        localParcel1.writeInt(1);
        paramIntent.writeToParcel(localParcel1, 0);
        if (paramRecognizerListener != null)
        {
          localIBinder = paramRecognizerListener.asBinder();
          localParcel1.writeStrongBinder(localIBinder);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      IBinder localIBinder = null;
    }
  }

  public void stopListening(RecognizerListener paramRecognizerListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.ISpeechRecognizer");
      if (paramRecognizerListener != null);
      for (IBinder localIBinder = paramRecognizerListener.asBinder(); ; localIBinder = null)
      {
        localParcel1.writeStrongBinder(localIBinder);
        this.mRemote.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }

  public void updateLexicon(Intent paramIntent, LexiconListener paramLexiconListener)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.ISpeechRecognizer");
        if (paramIntent == null)
          continue;
        localParcel1.writeInt(1);
        paramIntent.writeToParcel(localParcel1, 0);
        if (paramLexiconListener != null)
        {
          localIBinder = paramLexiconListener.asBinder();
          localParcel1.writeStrongBinder(localIBinder);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
          localParcel1.writeInt(0);
          continue;
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      IBinder localIBinder = null;
    }
  }

  public void writeAudio(Intent paramIntent, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.iflytek.speech.aidl.ISpeechRecognizer");
      if (paramIntent != null)
      {
        localParcel1.writeInt(1);
        paramIntent.writeToParcel(localParcel1, 0);
      }
      while (true)
      {
        localParcel1.writeByteArray(paramArrayOfByte);
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
        this.mRemote.transact(7, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
        localParcel1.writeInt(0);
      }
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeechRecognizer.Stub.Proxy
 * JD-Core Version:    0.6.0
 */