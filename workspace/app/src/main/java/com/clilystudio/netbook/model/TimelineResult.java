package com.clilystudio.netbook.model;

public class TimelineResult {
    private String code;
    private boolean ok;
    private TimelineResult.Names[] retweetNames;
    private TimelineResult.Temp[] timeline;

    public String getCode() {
        return this.code;
    }

    public void setCode(String paramString) {
        this.code = paramString;
    }

    public TimelineResult.Names[] getRetweetNames() {
        return this.retweetNames;
    }

    public void setRetweetNames(TimelineResult.Names[] paramArrayOfNames) {
        this.retweetNames = paramArrayOfNames;
    }

    public TimelineResult.Temp[] getTweets() {
        return this.timeline;
    }

    public void setTweets(TimelineResult.Temp[] paramArrayOfTemp) {
        this.timeline = paramArrayOfTemp;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }

    public class Names {
        private String id;
        private String[] names;

        public Names(TimelineResult paramTimelineResult) {
        }

        public String getId() {
            return this.id;
        }

        public void setId(String paramString) {
            this.id = paramString;
        }

        public String[] getNames() {
            return this.names;
        }

        public void setNames(String[] paramArrayOfString) {
            this.names = paramArrayOfString;
        }
    }

    public class Temp {
        private Tweet tweet;
        private User user;

        public Temp(TimelineResult paramTimelineResult) {
        }

        public Tweet getTweet() {
            return this.tweet;
        }

        public void setTweet(Tweet paramTweet) {
            this.tweet = paramTweet;
        }

        public User getUser() {
            return this.user;
        }

        public void setUser(User paramUser) {
            this.user = paramUser;
        }
    }

}

