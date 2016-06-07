package com.iflytek.speech;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

public final class SpeechComponent
{
  private ArrayList<String> mEngines = new ArrayList();
  private String mPackageName = "";

  public SpeechComponent(String paramString)
  {
    if (paramString != null)
      this.mPackageName = paramString;
  }

  public final void addEngine(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      this.mEngines.add(paramString);
  }

  public final ArrayList<String> getEngines()
  {
    return this.mEngines;
  }

  public final String getPackageName()
  {
    return this.mPackageName;
  }

  public final boolean isEngineAvaible(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return false;
    if (this.mEngines.size() == 0)
      return false;
    Iterator localIterator = this.mEngines.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      try
      {
        boolean bool = str.contains(paramString);
        if (bool)
          return true;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeechComponent
 * JD-Core Version:    0.6.0
 */