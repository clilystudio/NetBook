package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.activeandroid.query.Update;

import java.util.Date;
import java.util.List;

@Table(name = "BookSyncRecord")
public class BookSyncRecord
        extends Model {
    @Column(name = "bookId")
    private String bookId;
    @Column(name = "type")
    private int type;
    @Column(name = "updated")
    private Date updated;
    @Column(name = "userId")
    private String userId;

    public static void create(String string, String string2, int n) {
        BookSyncRecord bookSyncRecord = new BookSyncRecord();
        bookSyncRecord.setUserId(string);
        bookSyncRecord.setType(n);
        bookSyncRecord.setBookId(string2);
        bookSyncRecord.setUpdated(new Date());
        bookSyncRecord.save();
    }

    public static List<BookSyncRecord> find(String string, int n) {
        From from = new Select().from(BookSyncRecord.class);
        Object[] arrobject = new Object[]{string, n};
        return from.where("( userId = ? or userId = \"\" ) and type = ? ", arrobject).orderBy(" id ").execute();
    }

    public static BookSyncRecord get(String string) {
        if (string == null) {
            return null;
        }
        return (BookSyncRecord) new Select().from(BookSyncRecord.class).where("bookId = ?", string).executeSingle();
    }

    public static int getTypeId(BookSyncRecord$BookModifyType bookSyncRecord$BookModifyType) {
        switch (a.a[bookSyncRecord$BookModifyType.ordinal()]) {
            default: {
                return 0;
            }
            case 1: {
                return 1;
            }
            case 2: {
                return 2;
            }
            case 3: {
                return 3;
            }
            case 4: {
                return 4;
            }
            case 5:
        }
        return 5;
    }

    public static void updateOrCreate(String string, String string2, int n) {
        List list = new Select().from(BookSyncRecord.class).where(" bookId = ? ", string2).execute();
        if (list != null && list.size() > 0) {
            BookSyncRecord.updateType(string, string2, n);
            return;
        }
        BookSyncRecord.create(string, string2, n);
    }

    public static void updateType(String string, String string2, int n) {
        Update update = new Update(BookSyncRecord.class);
        Object[] arrobject = new Object[]{string, n, new Date()};
        update.set("userId = ?,type=?, updated=?", arrobject).where(" bookId = ? ", string2).execute();
    }

    public String getBookId() {
        return this.bookId;
    }

    public void setBookId(String string) {
        this.bookId = string;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int n) {
        this.type = n;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date date) {
        this.updated = date;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String string) {
        this.userId = string;
    }
}
