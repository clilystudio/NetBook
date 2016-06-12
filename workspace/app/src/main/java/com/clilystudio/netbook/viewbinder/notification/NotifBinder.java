
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.TextView;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem$NotifPost;
import com.clilystudio.netbook.model.NotificationItem$Trigger;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.post.BookHelpActivity;
import com.clilystudio.netbook.ui.post.PostDetailActivity;
import com.clilystudio.netbook.ui.post.ReviewActivity;

public abstract class NotifBinder {

    public NotifBinder(NotificationItem NotificationItem1)
    {
        mItem = NotificationItem1;
    }

    protected NotificationItem mItem;

    public void fillIcon(TextView TextView1)
    {
        TextView1.setCompoundDrawablesWithIntrinsicBounds( getIconRes(), 0, 0, 0 );
    }

    public void fillImageView(SmartImageView SmartImageView1)
    {
        SmartImageView1.setApiImageUrl( mItem.getTrigger().getAvatar(), 2130837614 );
    }

    protected abstract int getIconRes();

    public abstract Intent getIntent(Context Context1);

    public NotificationItem getItem()
    {
        return mItem;
    }

    public abstract String getLabel();

    public abstract String getMainText();

    protected int getPostIcon()
    {
        NotificationItem$NotifPost NotifPost1;

        if( getItem().getPost() != null )
            NotifPost1 = getItem().getPost();
        else
            NotifPost1 = getItem().getMyPost();
        if( "vote".equals( NotifPost1.getType() ) )
            return 2130837917;
        else
            return 2130837916;
    }
// Error: Internal #201: 
// The following method may not be correct.

    protected Intent getPostIntent(Context Context1, NotificationItem$NotifPost NotifPost2)
    {
    }

    public abstract String getSubText();

    protected Intent getWebIntent(String String1)
    {
        return new Intent( "android.intent.action.VIEW", Uri.parse( String1 ) );
    }

    public void setItem(NotificationItem NotificationItem1)
    {
        mItem = NotificationItem1;
    }
}
