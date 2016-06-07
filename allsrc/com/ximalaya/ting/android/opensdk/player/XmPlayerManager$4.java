package com.ximalaya.ting.android.opensdk.player;

import android.os.Message;
import com.ximalaya.ting.android.opensdk.player.service.IXmPlayerEventDispatcher.Stub;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

class XmPlayerManager$4 extends IXmPlayerEventDispatcher.Stub
{
  public void onBufferProgress(int paramInt)
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(9);
    localMessage.arg1 = paramInt;
    localMessage.sendToTarget();
  }

  public void onBufferingStart()
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(6);
    localMessage.obj = Boolean.valueOf(true);
    localMessage.sendToTarget();
  }

  public void onBufferingStop()
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(6);
    localMessage.obj = Boolean.valueOf(false);
    localMessage.sendToTarget();
  }

  public void onError(XmPlayerException paramXmPlayerException)
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(10);
    localMessage.obj = paramXmPlayerException;
    localMessage.sendToTarget();
  }

  public void onPlayPause()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(2).sendToTarget();
  }

  public void onPlayProgress(int paramInt1, int paramInt2)
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(7);
    localMessage.arg1 = paramInt1;
    localMessage.arg2 = paramInt2;
    localMessage.sendToTarget();
  }

  public void onPlayStart()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(1).sendToTarget();
  }

  public void onPlayStop()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(3).sendToTarget();
  }

  public void onSoundPlayComplete()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(4).sendToTarget();
  }

  public void onSoundPrepared()
  {
    XmPlayerManager.access$11(this.this$0).obtainMessage(5).sendToTarget();
  }

  public void onSoundSwitch(int paramInt1, int paramInt2, int paramInt3)
  {
    Message localMessage = XmPlayerManager.access$11(this.this$0).obtainMessage(8);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    localMessage.obj = arrayOfObject;
    localMessage.sendToTarget();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmPlayerManager.4
 * JD-Core Version:    0.6.0
 */