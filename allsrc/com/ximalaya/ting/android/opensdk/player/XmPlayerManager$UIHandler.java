package com.ximalaya.ting.android.opensdk.player;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.ximalaya.ting.android.opensdk.model.advertis.Advertis;
import com.ximalaya.ting.android.opensdk.model.advertis.AdvertisList;
import com.ximalaya.ting.android.opensdk.player.service.XmPlayerException;

class XmPlayerManager$UIHandler extends Handler
{
  public XmPlayerManager$UIHandler(XmPlayerManager paramXmPlayerManager, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 11:
    default:
      return;
    case 1:
      XmPlayerManager.access$12(this.this$0);
      return;
    case 2:
      XmPlayerManager.access$13(this.this$0);
      return;
    case 3:
      XmPlayerManager.access$14(this.this$0);
      return;
    case 4:
      XmPlayerManager.access$15(this.this$0);
      return;
    case 5:
      XmPlayerManager.access$16(this.this$0);
      return;
    case 6:
      XmPlayerManager.access$17(this.this$0, ((Boolean)paramMessage.obj).booleanValue());
      return;
    case 7:
      XmPlayerManager.access$18(this.this$0, paramMessage.arg1, paramMessage.arg2);
      return;
    case 8:
      Object[] arrayOfObject = (Object[])paramMessage.obj;
      XmPlayerManager.access$19(this.this$0, ((Integer)arrayOfObject[0]).intValue(), ((Integer)arrayOfObject[1]).intValue(), ((Integer)arrayOfObject[2]).intValue());
      return;
    case 9:
      XmPlayerManager.access$20(this.this$0, paramMessage.arg1);
      return;
    case 10:
      XmPlayerManager.access$21(this.this$0, (XmPlayerException)paramMessage.obj);
      return;
    case 12:
      XmPlayerManager.access$22(this.this$0);
      return;
    case 13:
      XmPlayerManager.access$23(this.this$0, (AdvertisList)paramMessage.obj);
      return;
    case 14:
      XmPlayerManager.access$24(this.this$0);
      return;
    case 15:
      XmPlayerManager.access$25(this.this$0);
      return;
    case 16:
      XmPlayerManager.access$26(this.this$0, (Advertis)paramMessage.obj, paramMessage.arg1);
      return;
    case 17:
      XmPlayerManager.access$27(this.this$0);
      return;
    case 18:
    }
    XmPlayerManager.access$28(this.this$0, paramMessage.arg1, paramMessage.arg2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.XmPlayerManager.UIHandler
 * JD-Core Version:    0.6.0
 */