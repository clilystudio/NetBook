package com.clilystudio.netbook.db;

import com.activeandroid.Model;

import java.util.Date;

public class BookTopicEnterRecord extends Model {

    public String book_id;
    public Date time;
    private int visitCount;
    public BookTopicEnterRecord(String String1) {
        this();
        book_id = String1;
    }

    public BookTopicEnterRecord() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookTopicEnterRecord get(String String1) {
    }

    public static void updateCount(String String1, int int2) {
        if (int2 != 0) {
            BookTopicEnterRecord BookTopicEnterRecord3 = get(String1);

            if (BookTopicEnterRecord3 != null && int2 > BookTopicEnterRecord3.getVisitCount()) {
                BookTopicEnterRecord3.setVisitCount(int2);
                BookTopicEnterRecord3.save();
                return;
            }
        }
    }

    public String getBook_id() {
        return book_id;
    }

    public void setBook_id(String String1) {
        book_id = String1;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date Date1) {
        time = Date1;
    }

    public int getVisitCount() {
        return visitCount;
    }

    public void setVisitCount(int int1) {
        visitCount = int1;
    }
}
