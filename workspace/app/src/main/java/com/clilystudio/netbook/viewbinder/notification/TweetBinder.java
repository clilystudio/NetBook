
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem$Trigger;
import com.clilystudio.netbook.ui.post.TweetDetailActivity;

public abstract class TweetBinder extends NotifBinder {

    public TweetBinder(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public Intent getIntent(Context Context1)
    {
        return TweetDetailActivity.a( Context1, getItem().getJumpTo() );
    }

    public String getMainText()
    {
        return new StringBuilder().append( getItem().getTrigger().getNickname() ).append( ": " ).append( getItem().getHeader() ).toString();
    }

    public String getSubText()
    {
        return getItem().getSubTitle();
    }
}
