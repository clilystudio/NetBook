package com.clilystudio.netbook.model;

public class TimelineResult {
    private String code;
    private boolean ok;
    private Names[] retweetNames;
    private Temp[] timeline;

    public String getCode() {
        return this.code;
    }

    public void setCode(String string) {
        this.code = string;
    }

    public Names[] getRetweetNames() {
        return this.retweetNames;
    }

    public void setRetweetNames(Names[] names) {
        this.retweetNames = names;
    }

    public Temp[] getTweets() {
        return this.timeline;
    }

    public void setTweets(Temp[] temps) {
        this.timeline = temps;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class Temp {
        private Tweet tweet;
        private User user;

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
    public class Names {
        private String id;
        private String[] names;

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
