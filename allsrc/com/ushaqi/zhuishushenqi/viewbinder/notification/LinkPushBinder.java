package com.ushaqi.zhuishushenqi.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.ushaqi.zhuishushenqi.model.NotificationItem;

public class LinkPushBinder extends OfficialNotifBinder
{
  public static final String LABEL = "link_push";

  public LinkPushBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return 2130837915;
  }

  public Intent getIntent(Context paramContext)
  {
    return getWebIntent(getItem().getLink());
  }

  public String getLabel()
  {
    return "link_push";
  }

  public String getMainText()
  {
    return getItem().getTitle();
  }

  public String getSubText()
  {
    return getItem().getLinkTitle();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.LinkPushBinder
 * JD-Core Version:    0.6.0
 */