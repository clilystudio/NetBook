package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.ui.SmartImageView;

public abstract class OfficialNotifBinder extends NotifBinder
{
  public OfficialNotifBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  public void fillImageView(SmartImageView paramSmartImageView)
  {
    paramSmartImageView.setImageBitmap(a.a(BitmapFactory.decodeResource(paramSmartImageView.getResources(), 2130838027)));
  }

  public Intent getIntent(Context paramContext)
  {
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.viewbinder.notification.OfficialNotifBinder
 * JD-Core Version:    0.6.0
 */