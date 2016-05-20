package com.clilystudio.app.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.model.NotificationItem;
import com.clilystudio.app.netbook.ui.SmartImageView;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.OfficialNotifBinder
 * JD-Core Version:    0.6.2
 */