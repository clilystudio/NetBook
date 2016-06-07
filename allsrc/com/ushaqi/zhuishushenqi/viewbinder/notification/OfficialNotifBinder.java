package com.ushaqi.zhuishushenqi.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.model.NotificationItem;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.OfficialNotifBinder
 * JD-Core Version:    0.6.0
 */