package com.iflytek.speech;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.speech.aidl.ISpeechSynthesizer;

public class SpeechSynthesizerAidl extends SpeechModuleAidl<ISpeechSynthesizer>
{
  public SpeechSynthesizerAidl(Context paramContext, InitListener paramInitListener)
  {
    super(paramContext, paramInitListener, "com.iflytek.vflynote.synthesize");
  }

  public boolean destory()
  {
    this.mService = null;
    return super.destory();
  }

  public String getParameter(String paramString)
  {
    String str1;
    if (paramString.equals("local_speakers"))
      try
      {
        if (SpeechUtility.getUtility() == null)
          return null;
        int i = SpeechUtility.getUtility().getServiceVersion();
        str1 = null;
        if (i < 44)
          break label83;
        if (i >= 10000)
        {
          str1 = null;
          if (i < 10013)
            break label83;
        }
        String str2 = ((ISpeechSynthesizer)this.mService).getLocalSpeakerList();
        return str2;
      }
      catch (RemoteException localRemoteException)
      {
        localRemoteException.printStackTrace();
        return "20999";
      }
    else
      str1 = super.getParameter(paramString);
    label83: return str1;
  }

  public boolean isSpeaking()
  {
    while (true)
    {
      try
      {
        if (this.mService != null)
        {
          boolean bool2 = ((ISpeechSynthesizer)this.mService).isSpeaking();
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

  public int pauseSpeaking(SynthesizerListener paramSynthesizerListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSynthesizerListener == null)
      return 20012;
    try
    {
      int i = ((ISpeechSynthesizer)this.mService).pauseSpeaking(paramSynthesizerListener);
      return i;
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

  public int resumeSpeaking(SynthesizerListener paramSynthesizerListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSynthesizerListener == null)
      return 20012;
    try
    {
      int i = ((ISpeechSynthesizer)this.mService).resumeSpeaking(paramSynthesizerListener);
      return i;
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

  public int setParameter(String paramString1, String paramString2)
  {
    return super.setParameter(paramString1, paramString2);
  }

  public int startSpeaking(String paramString, SynthesizerListener paramSynthesizerListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSynthesizerListener == null)
      return 20012;
    try
    {
      Intent localIntent = getIntent();
      localIntent.putExtra("text", paramString);
      int i = ((ISpeechSynthesizer)this.mService).startSpeaking(localIntent, paramSynthesizerListener);
      return i;
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

  public int stopSpeaking(SynthesizerListener paramSynthesizerListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSynthesizerListener == null)
      return 20012;
    try
    {
      int i = ((ISpeechSynthesizer)this.mService).stopSpeaking(paramSynthesizerListener);
      return i;
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

  public int synthesizeToUrl(String paramString, SynthesizerListener paramSynthesizerListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramSynthesizerListener == null)
      return 20012;
    try
    {
      Intent localIntent = getIntent();
      localIntent.putExtra("text", paramString);
      int i = ((ISpeechSynthesizer)this.mService).synthesizeToUrl(localIntent, paramSynthesizerListener);
      return i;
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeechSynthesizerAidl
 * JD-Core Version:    0.6.0
 */