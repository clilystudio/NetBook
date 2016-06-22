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
        Class[] arrclass = mNotifBinders;
        int n = arrclass.length;
        int n2 = 0;
        while (n2 < n) {
            Class class_ = arrclass[n2];
            try {
                 if (FieldUtils.getDeclaredField(class_, "LABEL", false).get("").equals(string)) {
                    return (NotifBinder) ConstructorUtils.invokeConstructor(class_, (Object)notificationItem);
                }
            } catch (IllegalAccessException var9_10) {
                throw new RuntimeException("Label field must be set for every NotifBinder.");
            } catch (NoSuchMethodException | InstantiationException | InvocationTargetException var8_8) {
                var8_8.printStackTrace();
            }
            ++n2;
        }
        return new UnknowBinder(notificationItem);
    }
}
