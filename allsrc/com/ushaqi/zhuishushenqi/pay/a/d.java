package com.ushaqi.zhuishushenqi.pay.a;

import android.app.Activity;
import android.os.Handler;
import android.os.Message;
import com.alipay.sdk.app.PayTask;
import com.ushaqi.zhuishushenqi.model.AliPayOrder;
import com.ushaqi.zhuishushenqi.model.AliPayOrder.PayOrder;

final class d
  implements Runnable
{
  d(c paramc, AliPayOrder paramAliPayOrder)
  {
  }

  public final void run()
  {
    String str = new PayTask((Activity)a.a(this.b.a)).pay(this.a.getPayOrder().getPayString());
    Message localMessage = new Message();
    localMessage.what = 1;
    localMessage.obj = str;
    a.b(this.b.a).sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.pay.a.d
 * JD-Core Version:    0.6.0
 */