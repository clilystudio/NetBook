package com.iflytek.speech;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.speech.aidl.ISpeechUnderstander;

public class SpeechUnderstanderAidl extends SpeechModuleAidl<ISpeechUnderstander>
{
  public SpeechUnderstanderAidl(Context paramContext, InitListener paramInitListener)
  {
    super(paramContext, paramInitListener, "com.iflytek.vflynote.speechunderstand");
  }

  public int cancel(SpeechUnderstanderListener paramSpeechUnderstanderListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSpeechUnderstanderListener == null)
      return 20012;
    try
    {
      ((ISpeechUnderstander)this.mService).cancel(paramSpeechUnderstanderListener);
      return 0;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      return 21004;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public String getParameter(String paramString)
  {
    return super.getParameter(paramString);
  }

  public boolean isUnderstanding()
  {
    while (true)
    {
      try
      {
        if (this.mService != null)
        {
          boolean bool2 = ((ISpeechUnderstander)this.mService).isUnderstanding();
          bool1 = bool2;
          return bool1;
        }
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        return false;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
      boolean bool1 = false;
    }
  }

  public int setParameter(String paramString1, String paramString2)
  {
    return super.setParameter(paramString1, paramString2);
  }

  public int startUnderstanding(SpeechUnderstanderListener paramSpeechUnderstanderListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSpeechUnderstanderListener == null)
      return 20012;
    try
    {
      ((ISpeechUnderstander)this.mService).startUnderstanding(getIntent(), paramSpeechUnderstanderListener);
      return 0;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      return 21004;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public int stopUnderstanding(SpeechUnderstanderListener paramSpeechUnderstanderListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSpeechUnderstanderListener == null)
      return 20012;
    try
    {
      ((ISpeechUnderstander)this.mService).stopUnderstanding(paramSpeechUnderstanderListener);
      return 0;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      return 21004;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public int writeAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (SpeechUtility.getUtility().getServiceVersion() < 44)
      return 20018;
    if (this.mService == null)
      return 21003;
    try
    {
      Intent localIntent = getIntent();
      ((ISpeechUnderstander)this.mService).writeAudio(localIntent, paramArrayOfByte, paramInt1, paramInt2);
      return 0;
    }
    catch (RemoteException localRemoteException)
    {
      localRemoteException.printStackTrace();
      return 0;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeechUnderstanderAidl
 * JD-Core Version:    0.6.0
 */