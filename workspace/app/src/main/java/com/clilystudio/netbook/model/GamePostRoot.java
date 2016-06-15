package com.clilystudio.netbook.model;

import java.util.Date;

public class GamePostRoot {
    private boolean ok;
    private GamePost[] posts;

    public GamePost[] getPosts() {
        return this.posts;
    }

    public void setPosts(GamePost[] gamePosts) {
        this.posts = gamePosts;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }
    public class GamePost {
        private String _id;
        private Author author;
        private String block;
        private int commentCount;
        private String content;
        private Date created;
        private int likeCount;
        private String state;
        private String type;

        public Author getAuthor() {
            return this.author;
        }

        public void setAuthor(Author author) {
            this.author = author;
        }

        public String getBlock() {
            return this.block;
        }

        public void setBlock(String string) {
            this.block = string;
        }

        public int getCommentCount() {
            return this.commentCount;
        }

        public void setCommentCount(int n) {
            this.commentCount = n;
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

        public int getLikeCount() {
            return this.likeCount;
        }

        public void setLikeCount(int n) {
            this.likeCount = n;
        }

        public String getState() {
            return this.state;
        }

        public void setState(String string) {
            this.state = string;
        }

        public String getType() {
            return this.type;
        }

        public void setType(String string) {
            this.type = string;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

}
