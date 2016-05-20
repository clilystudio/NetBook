package com.clilystudio.app.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.app.netbook.model.NotificationItem;
import com.clilystudio.app.netbook.model.NotificationItem.Trigger;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.ui.post.OtherUserActivity;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.viewbinder.notification.FollowBinder
 * JD-Core Version:    0.6.2
 */