package com.clilystudio.app.netbook.model;

public class TopicSummary {
    private TopicSummary.TopicSummaryBook[] books;
    private boolean ok;

    public TopicSummary.TopicSummaryBook[] getBooks() {
        for (int i = 0; i < this.books.length; i++)
            if (this.books[i] == null) {
                this.books[i] = new TopicSummary.TopicSummaryBook(this);
                this.books[i].set_id("");
            }
        return this.books;
    }

    public boolean isOk() {
        return this.ok;
    }

    public void setBooks(TopicSummary.TopicSummaryBook[] paramArrayOfTopicSummaryBook) {
        this.books = paramArrayOfTopicSummaryBook;
    }

    public void setOk(boolean paramBoolean) {
        this.ok = paramBoolean;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.TopicSummary
 * JD-Core Version:    0.6.2
 */