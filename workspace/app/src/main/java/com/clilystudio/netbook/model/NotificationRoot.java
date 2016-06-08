package com.clilystudio.netbook.model;

public class NotificationRoot extends Root {
    private NotificationItem[] notifications = new NotificationItem[0];

    public NotificationItem[] getNotifications() {
        return this.notifications;
    }

    public void setNotifications(NotificationItem[] paramArrayOfNotificationItem) {
        this.notifications = paramArrayOfNotificationItem;
    }

    public class NotifComment {
        private String _id;
        private String content;
        private int floor;

        public NotifComment(NotificationRoot paramNotificationRoot) {
        }

        public String getContent() {
            return this.content;
        }

        public void setContent(String paramString) {
            this.content = paramString;
        }

        public int getFloor() {
            return this.floor;
        }

        public void setFloor(int paramInt) {
            this.floor = paramInt;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String paramString) {
            this._id = paramString;
        }
    }
}

