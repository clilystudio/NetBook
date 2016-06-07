package com.ximalaya.ting.android.opensdk.player.service;

import android.os.IInterface;
import com.ximalaya.ting.android.opensdk.model.track.Track;

public abstract interface IXmGetDownloadPlayPathCallback extends IInterface
{
  public abstract String getDownloadPlayPath(Track paramTrack);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmGetDownloadPlayPathCallback
 * JD-Core Version:    0.6.0
 */