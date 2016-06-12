
package com.clilystudio.netbook.viewbinder.notification;

import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.CommonReplyeeInfo;
import com.clilystudio.netbook.model.NotificationItem;
import com.clilystudio.netbook.model.NotificationItem$NotifPost;
import com.clilystudio.netbook.model.NotificationItem$Trigger;
import com.clilystudio.netbook.model.NotificationRoot$NotifComment;
import java.io.Serializable;

public class PostReplyBinder extends UnimportatntNotifBinder {

    public PostReplyBinder(NotificationItem NotificationItem1)
    {
        super( NotificationItem1 );
    }

    public static final String LABEL = "post_reply";

    protected int getIconRes()
    {
        return getPostIcon();
    }

    public Intent getIntent(Context Context1)
    {
        Intent Intent2 = getPostIntent( Context1, getItem().getMyPost() );
        Object Object3 = new CommonReplyeeInfo();
        NotificationItem NotificationItem4 = getItem();

        ((CommonReplyeeInfo) Object3).setAuthor( NotificationItem4.getTrigger().toAuthor() );
        ((CommonReplyeeInfo) Object3).setFloor( NotificationItem4.getComment().getFloor() );
        ((CommonReplyeeInfo) Object3).setCommentId( NotificationItem4.getComment().get_id() );
        Intent2.putExtra( "KEY_POST_REPLIER_INFO", (Serializable) Object3 );
        return Intent2;
    }

    public String getLabel()
    {
        return "post_reply";
    }

    public String getMainText()
    {
        Object[] Object_1darray1 = new Object[2];

        Object_1darray1[0] = getItem().getTrigger().getNickname();
        Object_1darray1[1] = getItem().getComment().getContent();
        return String.format( "%s\uFF1A%s", Object_1darray1 );
    }

    public String getSubText()
    {
        return getItem().getMyPost().getTitle();
    }
}
