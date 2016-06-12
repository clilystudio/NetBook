package com.clilystudio.netbook.db;

import com.activeandroid.Model;

import java.util.Date;
import java.util.List;

public class BookSyncRecord extends Model {

    private String bookId;
    private int type;
    private Date updated;
    private String userId;

    public static void create(String String1, String String2, int int3) {
        BookSyncRecord BookSyncRecord4 = new BookSyncRecord();

        BookSyncRecord4.setUserId(String1);
        BookSyncRecord4.setType(int3);
        BookSyncRecord4.setBookId(String2);
        BookSyncRecord4.setUpdated(new Date());
        BookSyncRecord4.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List find(String String1, int int2) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookSyncRecord get(String String1) {
    }

    public static int getTypeId(BookSyncRecord$BookModifyType BookModifyType1) {
        switch (a.a[BookModifyType1.ordinal()]) {
            default:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
            case 3:
                return 3;
            case 4:
                return 4;
            case 5:
                return 5;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void updateOrCreate(String String1, String String2, int int3) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void updateType(String String1, String String2, int int3) {
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String String1) {
        bookId = String1;
    }

    public int getType() {
        return type;
    }

    public void setType(int int1) {
        type = int1;
    }

    public Date getUpdated() {
        return updated;
    }

    public void setUpdated(Date Date1) {
        updated = Date1;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String String1) {
        userId = String1;
    }
}
