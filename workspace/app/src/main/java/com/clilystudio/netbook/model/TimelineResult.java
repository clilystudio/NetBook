package com.clilystudio.netbook.model;

public class TimelineResult {
    private String code;
    private boolean ok;
    private TimelineResult$Names[] retweetNames;
    private TimelineResult$Temp[] timeline;

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public TimelineResult$Names[] getRetweetNames() {
        return this.retweetNames;
    }

    public void setRetweetNames(TimelineResult$Names[] arrtimelineResult$Names) {
        this.retweetNames = arrtimelineResult$Names;
    }

    public TimelineResult$Temp[] getTweets() {
        return this.timeline;
    }

    public void setTweets(TimelineResult$Temp[] arrtimelineResult$Temp) {
        this.timeline = arrtimelineResult$Temp;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class TimelineResult$Temp {
        final /* synthetic */ TimelineResult this$0;
        private Tweet tweet;
        private User user;

        public TimelineResult$Temp(TimelineResult timelineResult) {
            this.this$0 = timelineResult;
        }

        public Tweet getTweet() {
            return this.tweet;
        }

        public void setTweet(Tweet tweet) {
            this.tweet = tweet;
        }

        public User getUser() {
            return this.user;
        }

        public void setUser(User user) {
            this.user = user;
        }
    }
    public class TimelineResult$Names {
        final /* synthetic */ TimelineResult this$0;
        private String id;
        private String[] names;

        public TimelineResult$Names(TimelineResult timelineResult) {
            this.this$0 = timelineResult;
        }

        public String getId() {
            return this.id;
        }

        public void setId(String string) {
            this.id = string;
        }

        public String[] getNames() {
            return this.names;
        }

        public void setNames(String[] arrstring) {
            this.names = arrstring;
        }
    }

}
