package com.clilystudio.app.netbook.model;

public class NotificationRoot extends Root {
    private NotificationItem[] notifications = new NotificationItem[0];

    public NotificationItem[] getNotifications() {
        return this.notifications;
    }

    public void setNotifications(NotificationItem[] paramArrayOfNotificationItem) {
        this.notifications = paramArrayOfNotificationItem;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.NotificationRoot
 * JD-Core Version:    0.6.2
 */