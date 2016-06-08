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
    private Tweet.Post post;
    private Tweet refTweet;
    private int retweeted;
    private int score;
    private String shareLinkUrl;
    private String title;
    private String type;
    private User user;
    private Tweet.VoteOption[] votes;

    public boolean equals(Object paramObject) {
        if (paramObject != null && paramObject.getClass().equals(Tweet.class)) {
            return this._id.equals(((Tweet) paramObject).get_id());
        } else {
            return false;
        }
    }

    public Book getBook() {
        return this.book;
    }

    public void setBook(Book paramBook) {
        this.book = paramBook;
    }

    public int getCommented() {
        return this.commented;
    }

    public void setCommented(int paramInt) {
        this.commented = paramInt;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String paramString) {
        this.content = paramString;
    }

    public Date getCreated() {
        return this.created;
    }

    public void setCreated(Date paramDate) {
        this.created = paramDate;
    }

    public User getFrom() {
        return this.from;
    }

    public void setFrom(User paramUser) {
        this.from = paramUser;
    }

    public String[] getNames() {
        return this.names;
    }

    public void setNames(String[] paramArrayOfString) {
        this.names = paramArrayOfString;
    }

    public Tweet.Post getPost() {
        return this.post;
    }

    public void setPost(Tweet.Post paramPost) {
        this.post = paramPost;
    }

    public Tweet getRefTweet() {
        return this.refTweet;
    }

    public void setRefTweet(Tweet paramTweet) {
        this.refTweet = paramTweet;
    }

    public int getRetweeted() {
        return this.retweeted;
    }

    public void setRetweeted(int paramInt) {
        this.retweeted = paramInt;
    }

    public int getScore() {
        return this.score;
    }

    public void setScore(int paramInt) {
        this.score = paramInt;
    }

    public String getShareLinkUrl() {
        return this.shareLinkUrl;
    }

    public void setShareLinkUrl(String paramString) {
        this.shareLinkUrl = paramString;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public String getType() {
        return this.type;
    }

    public void setType(String paramString) {
        this.type = paramString;
    }

    public User getUser() {
        return this.user;
    }

    public void setUser(User paramUser) {
        this.user = paramUser;
    }

    public int getVoteCount() {
        int voteCount = 0;
        if (this.votes != null) {
            for (int i = 0; i < this.votes.length; i++) {
                voteCount += this.votes[i].count;
            }
        }
        return voteCount;
    }

    public Tweet.VoteOption[] getVotes() {
        return this.votes;
    }

    public void setVotes(Tweet.VoteOption[] paramArrayOfVoteOption) {
        this.votes = paramArrayOfVoteOption;
    }

    public String get_id() {
        return this._id;
    }

    public void set_id(String paramString) {
        this._id = paramString;
    }

    public boolean isArticle() {
        return "ARTICLE".equals(this.type);
    }

    public boolean isDeleted() {
        return this.deleted;
    }

    public void setDeleted(boolean paramBoolean) {
        this.deleted = paramBoolean;
    }

    public boolean isHot() {
        return this.isHot;
    }

    public boolean isRetween() {
        return getType().equals("RETWEET");
    }

    public boolean isTweet() {
        return "TWEET".equals(this.type);
    }

    public void setIsHot(boolean paramBoolean) {
        this.isHot = paramBoolean;
    }

    public class Post {
        private String _id;
        private String block;

        public Post(Tweet paramTweet) {
        }

        public String getBlock() {
            return this.block;
        }

        public void setBlock(String paramString) {
            this.block = paramString;
        }

        public String getId() {
            return this._id;
        }

        public void setId(String paramString) {
            this._id = paramString;
        }
    }


    public class VoteOption {
        public String content;
        public int count;

        public VoteOption(Tweet paramTweet) {
        }
    }
}
