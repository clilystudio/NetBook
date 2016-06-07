package com.iflytek.speech;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.iflytek.cloud.InitListener;
import com.iflytek.speech.aidl.ITextUnderstander;

public class TextUnderstanderAidl extends SpeechModuleAidl<ITextUnderstander>
{
  public static final String SCENE = "scene";
  private static final String TEXT = "text";

  public TextUnderstanderAidl(Context paramContext, InitListener paramInitListener)
  {
    super(paramContext, paramInitListener, "com.iflytek.vflynote.textunderstand");
  }

  public int cancel(TextUnderstanderListener paramTextUnderstanderListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramTextUnderstanderListener == null)
      return 20012;
    try
    {
      ((ITextUnderstander)this.mService).cancel(paramTextUnderstanderListener);
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
          boolean bool2 = ((ITextUnderstander)this.mService).isUnderstanding();
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

  public int understandText(String paramString, TextUnderstanderListener paramTextUnderstanderListener)
  {
    if (this.mService == null)
      return 21003;
    if (paramTextUnderstanderListener == null)
      return 20012;
    try
    {
      Intent localIntent = getIntent();
      localIntent.putExtra("text", paramString);
      ((ITextUnderstander)this.mService).understandText(localIntent, paramTextUnderstanderListener);
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.TextUnderstanderAidl
 * JD-Core Version:    0.6.0
 */