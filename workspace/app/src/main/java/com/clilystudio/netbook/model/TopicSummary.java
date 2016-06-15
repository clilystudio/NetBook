package com.clilystudio.netbook.model;

public class TopicSummary {
    private TopicSummary$TopicSummaryBook[] books;
    private boolean ok;

    public TopicSummary$TopicSummaryBook[] getBooks() {
        for (int i = 0; i < this.books.length; ++i) {
            if (this.books[i] != null) continue;
            this.books[i] = new TopicSummary$TopicSummaryBook(this);
            this.books[i].set_id("");
        }
        return this.books;
    }

    public void setBooks(TopicSummary$TopicSummaryBook[] arrtopicSummary$TopicSummaryBook) {
        this.books = arrtopicSummary$TopicSummaryBook;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setOk(boolean bl) {
        this.ok = bl;
    }

    public class TopicSummary$TopicSummaryBook {
        final /* synthetic */ TopicSummary this$0;
        private String _id;
        private int postCount;

        public TopicSummary$TopicSummaryBook(TopicSummary topicSummary) {
            this.this$0 = topicSummary;
        }

        public int getPostCount() {
            return this.postCount;
        }

        public void setPostCount(int n) {
            this.postCount = n;
        }

        public String get_id() {
            return this._id;
        }

        public void set_id(String string) {
            this._id = string;
        }
    }

}
