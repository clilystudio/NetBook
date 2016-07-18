package com.clilystudio.netbook.viewbinder.notification;

import com.clilystudio.netbook.model.NotificationItem;


import org.apache.commons.lang3.reflect.ConstructorUtils;
import org.apache.commons.lang3.reflect.FieldUtils;

import java.lang.reflect.InvocationTargetException;

public class NotifBinderFactory {
    private static final Class[] mNotifBinders = new Class[]{PostReplyBinder.class, PostDistillateBinder.class, PostPushBinder.class, LinkPushBinder.class, CommentReplyBinder.class, PostHotBinder.class, TweetComment.class, TweetCommentRely.class, CommentLikeBinder.class, PostLikeBinder.class, PostVoteBinder.class, RetweetBinder.class, FollowBinder.class};

    public static NotifBinder create(NotificationItem notificationItem) {
        if (notificationItem == null) {
            notificationItem = new NotificationItem();
        }
        String string = notificationItem.getType();
        for (Class cls : mNotifBinders) {
            try {
                if (FieldUtils.getDeclaredField(cls, "LABEL", false).get("").equals(string)) {
                    return (NotifBinder) ConstructorUtils.invokeConstructor(cls, (Object) notificationItem);
                }
            } catch (NoSuchMethodException | InstantiationException | InvocationTargetException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e1) {
                throw new RuntimeException("Label field must be set for every NotifBinder.");
            }
        }
        return new UnknowBinder(notificationItem);
    }
}
