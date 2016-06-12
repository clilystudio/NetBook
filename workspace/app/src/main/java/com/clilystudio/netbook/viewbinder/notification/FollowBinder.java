
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem$Trigger;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.post.OtherUserActivity;

public class FollowBinder extends NotifBinder {

    public FollowBinder(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public static final String LABEL = "follow";

    protected int getIconRes()
    {
        return 2130837914;
    }

    public Intent getIntent(Context Context1)
    {
        User User2 = new User();
        Intent Intent3;

        User2.setId( getItem().getJumpTo() );
        User2.setNickname( getItem().getTrigger().getNickname() );
        Intent3 = OtherUserActivity.a( Context1 );
        Intent3.putExtra( "USER_ID", User2.getId() );
        Intent3.putExtra( "USER_NAME", User2.getNickname() );
        Context1.startActivity( Intent3 );
        return null;
    }

    public String getLabel()
    {
        return "follow";
    }

    public String getMainText()
    {
        return new StringBuilder().append( getItem().getTrigger().getNickname() ).append( " " ).append( getItem().getHeader() ).toString();
    }

    public String getSubText()
    {
        return "";
    }
}
