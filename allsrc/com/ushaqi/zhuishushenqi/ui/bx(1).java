package com.ushaqi.zhuishushenqi.ui;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.NotificationRoot;

final class bx extends e<String, Void, NotificationRoot>
{
  private bx(NotifFragment paramNotifFragment)
  {
  }

  private NotificationRoot a(String[] paramArrayOfString)
  {
    try
    {
      if (this.a.a() == NotifFragment.Type.IMPORTANT)
      {
        NotifFragment.g(this.a);
        return b.b().r(paramArrayOfString[0], "");
      }
      NotifFragment.g(this.a);
      NotificationRoot localNotificationRoot = b.b().s(paramArrayOfString[0], "");
      return localNotificationRoot;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bx
 * JD-Core Version:    0.6.0
 */