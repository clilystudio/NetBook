package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.NotificationItem;
import com.ushaqi.zhuishushenqi.model.NotificationRoot;
import java.util.List;

final class bw extends e<String, Void, NotificationRoot>
{
  private bw(NotifFragment paramNotifFragment)
  {
  }

  private NotificationRoot a(String[] paramArrayOfString)
  {
    if (!isCancelled())
    {
      String str = "";
      try
      {
        if ((NotifFragment.k(this.a) != null) && (NotifFragment.k(this.a).size() > 0))
          str = ((NotificationItem)NotifFragment.k(this.a).get(-1 + NotifFragment.k(this.a).size())).getCreated();
        if (this.a.a() == NotifFragment.Type.IMPORTANT)
        {
          NotifFragment.g(this.a);
          return b.b().r(paramArrayOfString[0], str);
        }
        NotifFragment.g(this.a);
        NotificationRoot localNotificationRoot = b.b().s(paramArrayOfString[0], str);
        return localNotificationRoot;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bw
 * JD-Core Version:    0.6.0
 */