package com.clilystudio.netbook.db;

import com.activeandroid.Model;

import java.util.Date;
import java.util.List;

public class BookDlRecord extends Model {

    public static final int END = 4;
    public static final int IDLE = 0;
    public static final int PAUSE = 3;
    public static final int PENDING = 1;
    public static final int PREPARE = 5;
    public static final int RUN = 2;
    private String author;
    private String bookId;
    private String bookTitle;
    private Date created;
    private int start;
    private String tocId;
    private int total;
    private int mode = -1;
    private int progress = 0;
    private int status = 0;

    public static boolean containsTocInfo(BookDlRecord BookDlRecord1) {
        if (!android.text.TextUtils.isEmpty((CharSequence) BookDlRecord1.getBookTitle()) && !android.text.TextUtils.isEmpty((CharSequence) BookDlRecord1.getBookId()))
            return true;
        else
            return false;
    }

    public static void create(String String1, String String2, String String3, String String4, int int5, int int6, int int7, int int8) {
        BookDlRecord BookDlRecord9 = new BookDlRecord();

        BookDlRecord9.bookId = String1;
        BookDlRecord9.bookTitle = String2;
        BookDlRecord9.author = String3;
        BookDlRecord9.tocId = String4;
        BookDlRecord9.mode = int5;
        BookDlRecord9.start = int6;
        BookDlRecord9.total = int7;
        BookDlRecord9.status = int8;
        BookDlRecord9.created = new Date();
        BookDlRecord9.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void delete(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookDlRecord get(String String1) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookDlRecord get(String String1, int int2) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAll() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllPause() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllPending() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllPrepareAsc() {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllRun() {
    }

    public static void reset(BookDlRecord BookDlRecord1, int int2, int int3) {
        BookDlRecord1.start = int2;
        BookDlRecord1.total = int3;
        BookDlRecord1.status = 1;
        BookDlRecord1.created = new Date();
        BookDlRecord1.save();
    }

    public static void update(BookDlRecord BookDlRecord1, String String2, int int3, int int4, int int5, int int6) {
        BookDlRecord1.tocId = String2;
        BookDlRecord1.mode = int3;
        BookDlRecord1.start = int4;
        BookDlRecord1.total = int5;
        BookDlRecord1.status = int6;
        BookDlRecord1.created = new Date();
        BookDlRecord1.save();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String String1) {
        author = String1;
    }

    public String getBookId() {
        return bookId;
    }

    public void setBookId(String String1) {
        bookId = String1;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String String1) {
        bookTitle = String1;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date Date1) {
        created = Date1;
    }

    public int getMode() {
        return mode;
    }

    public void setMode(int int1) {
        mode = int1;
    }

    public int getProgress() {
        return progress;
    }

    public void setProgress(int int1) {
        progress = int1;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int int1) {
        start = int1;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int int1) {
        status = int1;
    }

    public String getTocId() {
        return tocId;
    }

    public void setTocId(String String1) {
        tocId = String1;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int int1) {
        total = int1;
    }
}
