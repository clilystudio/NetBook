package com.clilystudio.app.netbook.ui;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.NotificationRoot;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bx
 * JD-Core Version:    0.6.2
 */