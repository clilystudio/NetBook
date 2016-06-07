package com.iflytek.speech;

import java.util.ArrayList;

public abstract interface SpeakerVerifierAidl$DownloadListener
{
  public abstract void onData(ArrayList<SpeakerVerifierAidl.PassWord> paramArrayList);

  public abstract void onError(int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeakerVerifierAidl.DownloadListener
 * JD-Core Version:    0.6.0
 */