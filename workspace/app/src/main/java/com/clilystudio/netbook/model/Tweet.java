package com.clilystudio.netbook.model;

import java.util.Date;

public class Tweet {
    public static final String TYPE_ARTICLE = "ARTICLE";
    public static final String TYPE_COMMENT = "REVIEW";
    public static final String TYPE_RETWEET = "RETWEET";
    public static final String TYPE_TWEET = "TWEET";
    public String[] names;
    private String _id;
    private Book book;
    private int commented;
    private String content;
    private Date created;
    private boolean deleted;
    private User from;
    private boolean isHot;
    private Post post;
    private Tweet refTweet;
    private int retweeted;
    private int score;
    private String shareLinkUrl;
    private String title;
    private String type;
    private User user;
    private Tweet$VoteOption[] votes;

    /*
     * Enabled aggressive block sorting
     */
    public boolean equals(Object object) {
        if (object == null || !object.getClass().equals(Tweet.class)) {
            return false;
        }
        return this._id.equals(((Tweet) object).get_id());
    }

    public Book getBook() {
        return this.book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public int getCommented() {
        return this.commented;
    }

    public void setCommented(int n) {
        this.commented = n;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String string) {
        this.content = string;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date date) {
        this.created = date;
    }

    public User getFrom() {
        return this.from;
    }

    public void setFrom(User user) {
        this.from = user;
    }

    public String[] getNames() {
        return this.names;
    }

    public void setNames(String[] arrstring) {
        this.names = arrstring;
    }

    public Post getPost() {
        return this.post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Tweet getRefTweet() {
        return this.refTweet;
    }

    public void setRefTweet(Tweet tweet) {
        this.refTweet = tweet;
    }

    public int getRetweeted() {
        return this.retweeted;
    }

    public void setRetweeted(int n) {
        this.retweeted = n;
    }

    public int getScore() {
        return this.score;
    }

    public void setScore(int n) {
        this.score = n;
    }

    public String getShareLinkUrl() {
        return this.shareLinkUrl;
    }

    public void setShareLinkUrl(String string) {
        this.shareLinkUrl = string;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String string) {
        this.type = string;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public int getVoteCount() {
        Tweet$VoteOption[] arrtweet$VoteOption = this.votes;
        int n = 0;
        if (arrtweet$VoteOption == null) return n;
        int n2 = this.votes.length;
        n = 0;
        if (n2 == 0) {
            return n;
        }
        Tweet$VoteOption[] arrtweet$VoteOption2 = this.votes;
        int n3 = arrtweet$VoteOption2.length;
        int n4 = 0;
        while (n4 < n3) {
            int n5 = n + arrtweet$VoteOption2[n4].count;
            ++n4;
            n = n5;
        }
        return n;
    }

    public Tweet$VoteOption[] getVotes() {
        return this.votes;
    }

    public void setVotes(Tweet$VoteOption[] arrtweet$VoteOption) {
        this.votes = arrtweet$VoteOption;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String string) {
        this._id = string;
    }

    public boolean isArticle() {
        return "ARTICLE".equals(this.type);
    }

    public boolean isDeleted() {
        return this.deleted;
    }

    public void setDeleted(boolean bl) {
        this.deleted = bl;
    }

    public boolean isHot() {
        return this.isHot;
    }

    public boolean isRetween() {
        return this.getType().equals("RETWEET");
    }

    public boolean isTweet() {
        return "TWEET".equals(this.type);
    }

    public void setIsHot(boolean bl) {
        this.isHot = bl;
    }
}
