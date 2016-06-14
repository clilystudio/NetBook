package com.clilystudio.netbook.model;

public class NotificationRoot extends Root {
    private NotificationItem[] notifications = new NotificationItem[0];

    public NotificationItem[] getNotifications() {
        return this.notifications;
    }

    public void setNotifications(NotificationItem[] arrnotificationItem) {
        this.notifications = arrnotificationItem;
    }
}
