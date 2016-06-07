package com.ushaqi.zhuishushenqi.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.ushaqi.zhuishushenqi.model.NotificationItem;
import com.ushaqi.zhuishushenqi.model.NotificationItem.Trigger;
import com.ushaqi.zhuishushenqi.model.User;
import com.ushaqi.zhuishushenqi.ui.post.OtherUserActivity;

public class FollowBinder extends NotifBinder
{
  public static final String LABEL = "follow";

  public FollowBinder(NotificationItem paramNotificationItem)
  {
    super(paramNotificationItem);
  }

  protected int getIconRes()
  {
    return 2130837914;
  }

  public Intent getIntent(Context paramContext)
  {
    User localUser = new User();
    localUser.setId(getItem().getJumpTo());
    localUser.setNickname(getItem().getTrigger().getNickname());
    Intent localIntent = OtherUserActivity.a(paramContext);
    localIntent.putExtra("USER_ID", localUser.getId());
    localIntent.putExtra("USER_NAME", localUser.getNickname());
    paramContext.startActivity(localIntent);
    return null;
  }

  public String getLabel()
  {
    return "follow";
  }

  public String getMainText()
  {
    return getItem().getTrigger().getNickname() + " " + getItem().getHeader();
  }

  public String getSubText()
  {
    return "";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.viewbinder.notification.FollowBinder
 * JD-Core Version:    0.6.0
 */