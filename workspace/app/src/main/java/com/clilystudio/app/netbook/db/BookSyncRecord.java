package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.activeandroid.query.Update;

import java.util.Date;
import java.util.List;

@Table(name = "BookSyncRecord")
public class BookSyncRecord extends Model {

    @Column(name = "bookId")
    private String bookId;

    @Column(name = "type")
    private int type;

    @Column(name = "updated")
    private Date updated;

    @Column(name = "userId")
    private String userId;

    public static void create(String paramString1, String paramString2, int paramInt) {
        BookSyncRecord localBookSyncRecord = new BookSyncRecord();
        localBookSyncRecord.setUserId(paramString1);
        localBookSyncRecord.setType(paramInt);
        localBookSyncRecord.setBookId(paramString2);
        localBookSyncRecord.setUpdated(new Date());
        localBookSyncRecord.save();
    }

    public static List<BookSyncRecord> find(String paramString, int paramInt) {
        From localFrom = new Select().from(BookSyncRecord.class);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramString;
        arrayOfObject[1] = Integer.valueOf(paramInt);
        return localFrom.where("( userId = ? or userId = \"\" ) and type = ? ", arrayOfObject).orderBy(" id ").execute();
    }

    public static BookSyncRecord get(String paramString) {
        if (paramString == null)
            return null;
        return (BookSyncRecord) new Select().from(BookSyncRecord.class).where("bookId = ?", new Object[]{paramString}).executeSingle();
    }

    public static int getTypeId(BookSyncRecord.BookModifyType paramBookModifyType) {
        switch (a.a[paramBookModifyType.ordinal()]) {
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
        }
        return 5;
    }

    public static void updateOrCreate(String paramString1, String paramString2, int paramInt) {
        List localList = new Select().from(BookSyncRecord.class).where(" bookId = ? ", new Object[]{paramString2}).execute();
        if ((localList != null) && (localList.size() > 0)) {
            updateType(paramString1, paramString2, paramInt);
            return;
        }
        create(paramString1, paramString2, paramInt);
    }

    public static void updateType(String paramString1, String paramString2, int paramInt) {
        Update localUpdate = new Update(BookSyncRecord.class);
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = paramString1;
        arrayOfObject[1] = Integer.valueOf(paramInt);
        arrayOfObject[2] = new Date();
        localUpdate.set("userId = ?,type=?, updated=?", arrayOfObject).where(" bookId = ? ", new Object[]{paramString2}).execute();
    }

    public String getBookId() {
        return this.bookId;
    }

    public int getType() {
        return this.type;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setBookId(String paramString) {
        this.bookId = paramString;
    }

    public void setType(int paramInt) {
        this.type = paramInt;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public void setUserId(String paramString) {
        this.userId = paramString;
    }

    public enum BookModifyType {
        SHELF_ADD,SHELF_REMOVE,FEED_ADD,FEED_REMOVE,SYNC_SUCCESS;
   }
}
