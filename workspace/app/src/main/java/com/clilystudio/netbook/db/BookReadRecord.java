package com.clilystudio.netbook.db;

import com.clilystudio.netbook.am;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.c;
import com.clilystudio.netbook.event.h;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookGenderRecommend.RecommendBook;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.RemoteBookShelf.Book;
import com.clilystudio.netbook.util.t;

import java.util.Date;
import java.util.List;

@Table(name = "BookReadRecords")
public class BookReadRecord extends Model {

    @Column(name = "have_cp")
    public int have_cp;
    @Column(name = "lastActionTime")
    public long lastActionTime;
    @Column(name = "readTime")
    public Date readTime;
    @Column(name = "recommended")
    public boolean recommended;
    @Column(name = "account")
    private String account;
    @Column(name = "author")
    private String author;
    @Column(name = "book_id", unique = true)
    private String book_id;
    @Column(name = "chapterCount")
    private int chapterCount;
    @Column(name = "chapterCountAtFeed")
    private int chapterCountAtFeed;
    @Column(name = "chapterTitle")
    private String chapterTitle;
    @Column(name = "cover")
    private String cover;
    @Column(name = "deleted")
    private boolean deleted = false;
    @Column(name = "downloadedSource")
    private String downloadedSource;
    @Column(name = "feedFat")
    private boolean feedFat = false;
    @Column(name = "feeding")
    private boolean feeding = false;
    @Column(name = "is_top")
    private boolean is_top = false;
    @Column(name = "is_unread")
    private boolean is_unread = false;
    @Column(name = "last_chapter")
    private String last_chapter;
    @Column(name = "localModifiedDate")
    private Date localModifiedDate;
    @Column(name = "readMode")
    private int readMode = -1;
    @Column(name = "title")
    private String title;

    @Column(name = "tocIndex")
    private int tocIndex;

    @Column(name = "toc_id")
    private String toc_id;

    @Column(name = "updated")
    private Date updated;

    public static void addAccountInfo(BookReadRecord paramBookReadRecord) {
        Account localAccount = am.e();
        if (localAccount != null)
            paramBookReadRecord.setAccount(localAccount.getUser().getId());
        while (true) {
            paramBookReadRecord.setLocalModifiedDate(new Date());
            paramBookReadRecord.save();
            return;
            paramBookReadRecord.setAccount(null);
        }
    }

    public static void create(BookGenderRecommend.RecommendBook paramRecommendBook) {
        BookReadRecord localBookReadRecord = createBookRecord(paramRecommendBook);
        addAccountInfo(localBookReadRecord);
        localBookReadRecord.save();
    }

    public static void create(BookInfo paramBookInfo) {
        trulyDelete(paramBookInfo.getId());
        BookReadRecord localBookReadRecord = createBookRecord(paramBookInfo);
        addAccountInfo(localBookReadRecord);
        localBookReadRecord.save();
        i.a().c(new c(localBookReadRecord.getBookId()));
    }

    public static void create(BookInfo paramBookInfo, String paramString, int paramInt1, int paramInt2, int paramInt3) {
        String str = paramBookInfo.getId();
        trulyDelete(str);
        BookReadRecord localBookReadRecord = createBookRecord(paramBookInfo);
        localBookReadRecord.toc_id = paramString;
        localBookReadRecord.readMode = paramInt3;
        addAccountInfo(localBookReadRecord);
        localBookReadRecord.save();
        MixTocRecord.create(str, paramString, paramInt1, paramInt2);
        i.a().c(new c(str));
    }

    public static void create(BookInfo paramBookInfo, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, int paramInt3) {
        String str = paramBookInfo.getId();
        trulyDelete(str);
        BookReadRecord localBookReadRecord = createBookRecord(paramBookInfo);
        localBookReadRecord.toc_id = paramString1;
        localBookReadRecord.readMode = paramInt3;
        addAccountInfo(localBookReadRecord);
        localBookReadRecord.save();
        TocReadRecord.create(str, paramString1, paramString2, paramString3, paramInt1, paramInt2);
        i.a().c(new c(str));
    }

    public static void create(RemoteBookShelf.Book paramBook, boolean paramBoolean) {
        BookReadRecord localBookReadRecord = createBookRecord(paramBook);
        addAccountInfo(localBookReadRecord);
        localBookReadRecord.save();
    }

    private static BookReadRecord createBookRecord(BookGenderRecommend.RecommendBook paramRecommendBook) {
        BookReadRecord localBookReadRecord = new BookReadRecord();
        localBookReadRecord.book_id = paramRecommendBook.get_id();
        localBookReadRecord.setTitle(paramRecommendBook.getTitle());
        localBookReadRecord.setCover(paramRecommendBook.getCover());
        localBookReadRecord.last_chapter = paramRecommendBook.getLastChapter();
        localBookReadRecord.setUpdated(paramRecommendBook.getUpdated());
        localBookReadRecord.setChapterCount(paramRecommendBook.getChaptersCount());
        localBookReadRecord.setAuthor(paramRecommendBook.getAuthor());
        localBookReadRecord.setRecommended(true);
        return localBookReadRecord;
    }

    private static BookReadRecord createBookRecord(BookInfo paramBookInfo) {
        BookReadRecord localBookReadRecord = new BookReadRecord();
        localBookReadRecord.book_id = paramBookInfo.getId();
        localBookReadRecord.setTitle(paramBookInfo.getTitle());
        localBookReadRecord.setCover(paramBookInfo.getCover());
        localBookReadRecord.last_chapter = paramBookInfo.getLastChapter();
        localBookReadRecord.setUpdated(paramBookInfo.getUpdated());
        localBookReadRecord.setChapterCount(paramBookInfo.getChaptersCount());
        localBookReadRecord.setAuthor(paramBookInfo.getAuthor());
        if (paramBookInfo.isHasCp()) {
            localBookReadRecord.setHave_cp(1);
            return localBookReadRecord;
        }
        localBookReadRecord.setHave_cp(2);
        return localBookReadRecord;
    }

    private static BookReadRecord createBookRecord(RemoteBookShelf.Book paramBook) {
        BookReadRecord localBookReadRecord = new BookReadRecord();
        localBookReadRecord.book_id = paramBook.getId();
        localBookReadRecord.setTitle(paramBook.getTitle());
        localBookReadRecord.setCover(paramBook.getCover());
        localBookReadRecord.last_chapter = paramBook.getLastChapter();
        localBookReadRecord.setUpdated(paramBook.getUpdated());
        localBookReadRecord.setChapterCount(paramBook.getChaptersCount());
        localBookReadRecord.setAuthor(paramBook.getAuthor());
        if (paramBook.isHasCp()) {
            localBookReadRecord.setHave_cp(1);
            localBookReadRecord.setReadMode(9);
            return localBookReadRecord;
        }
        localBookReadRecord.setHave_cp(2);
        return localBookReadRecord;
    }

    public static void createFeed(RemoteBookShelf.Book paramBook) {
        BookReadRecord localBookReadRecord = createBookRecord(paramBook);
        localBookReadRecord.setFeeding(true);
        localBookReadRecord.setChapterCountAtFeed(paramBook.getChaptersCount());
        addAccountInfo(localBookReadRecord);
        localBookReadRecord.save();
    }

    public static void delete(BookReadRecord paramBookReadRecord) {
        if (paramBookReadRecord == null)
            return;
        paramBookReadRecord.setDeleted(true);
        paramBookReadRecord.setFeeding(false);
        paramBookReadRecord.setFeedFat(false);
        addAccountInfo(paramBookReadRecord);
        paramBookReadRecord.save();
        String str = paramBookReadRecord.getBookId();
        deleteTocRecord(str);
        deleteModeRecord(str);
        deleteDlRecord(str);
    }

    public static void delete(String paramString) {
        delete(get(paramString));
    }

    public static void deleteAndSync(String paramString) {
        delete(paramString);
        i.a().c(new h(paramString));
    }

    private static void deleteDlRecord(String paramString) {
        BookDlRecord.delete(paramString);
    }

    private static void deleteModeRecord(String paramString) {
        SourceRecord.delete(paramString);
    }

    private static void deleteTocRecord(String paramString) {
        TocReadRecord.deleteByBookId(paramString);
        MixTocRecord.deleteByBookId(paramString);
    }

    public static BookReadRecord get(String paramString) {
        if (paramString == null)
            return null;
        return (BookReadRecord) new Select().from(BookReadRecord.class).where("book_id = ?", new Object[]{paramString}).executeSingle();
    }

    public static List<BookReadRecord> getAll() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(0);
        return localFrom.where("deleted = ?", arrayOfObject).execute();
    }

    public static List<BookReadRecord> getAllFeedFat() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(1);
        arrayOfObject[1] = Integer.valueOf(1);
        return localFrom.where("feeding = ? AND feedFat = ?", arrayOfObject).execute();
    }

    public static List<BookReadRecord> getAllFeeding() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(1);
        return localFrom.where("feeding = ? ", arrayOfObject).execute();
    }

    public static List<BookReadRecord> getAllFeedingOrderByCount() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(1);
        return localFrom.where("feeding = ? ", arrayOfObject).orderBy("(chapterCount - chapterCountAtFeed) DESC").execute();
    }

    public static List<BookReadRecord> getAllNoFeed() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(0);
        arrayOfObject[1] = Integer.valueOf(0);
        return localFrom.where("deleted = ? AND feeding = ?", arrayOfObject).execute();
    }

    public static List<BookReadRecord> getAllNotDeleted() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(0);
        return localFrom.where("deleted = ?", arrayOfObject).orderBy("is_top DESC,readTime DESC").execute();
    }

    public static List<BookReadRecord> getAllWithDelNoFeed() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(0);
        return localFrom.where("feeding = ?", arrayOfObject).execute();
    }

    public static List<BookReadRecord> getAllWithTopNoFeed() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(0);
        arrayOfObject[1] = Integer.valueOf(0);
        return localFrom.where("deleted = ? AND feeding = ?", arrayOfObject).orderBy("is_top DESC,updated DESC").execute();
    }

    public static List<BookReadRecord> getAllWithTopNoFeedByRead() {
        From localFrom = new Select().from(BookReadRecord.class);
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(0);
        arrayOfObject[1] = Integer.valueOf(0);
        return localFrom.where("deleted = ? AND feeding = ?", arrayOfObject).orderBy("is_top DESC,readTime DESC").execute();
    }

    public static BookReadRecord getOnShelf(String paramString) {
        if (paramString == null)
            return null;
        return (BookReadRecord) new Select().from(BookReadRecord.class).where("book_id = ? AND deleted = 0", new Object[]{paramString}).executeSingle();
    }

    public static void trulyDelete(String paramString) {
        new Delete().from(BookReadRecord.class).where("book_id = ?", new Object[]{paramString}).execute();
    }

    public String buildDesc() {
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = t.e(getUpdated());
        arrayOfObject[1] = this.last_chapter;
        return String.format("%s:%s", arrayOfObject);
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String paramString) {
        this.account = paramString;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String paramString) {
        this.author = paramString;
    }

    public String getBookId() {
        return this.book_id;
    }

    public void setBookId(String paramString) {
        this.book_id = paramString;
    }

    public int getChapterCount() {
        return this.chapterCount;
    }

    public void setChapterCount(int paramInt) {
        this.chapterCount = paramInt;
    }

    public int getChapterCountAtFeed() {
        return this.chapterCountAtFeed;
    }

    public void setChapterCountAtFeed(int paramInt) {
        this.chapterCountAtFeed = paramInt;
    }

    public String getChapterTitle() {
        return this.chapterTitle;
    }

    public void setChapterTitle(String paramString) {
        this.chapterTitle = paramString;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String paramString) {
        this.cover = paramString;
    }

    public String getDownloadedSource() {
        return this.downloadedSource;
    }

    public void setDownloadedSource(String paramString) {
        this.downloadedSource = paramString;
    }

    public String getFullCover() {
        return ApiService.a + getCover() + "-covers";
    }

    public int getHave_cp() {
        return this.have_cp;
    }

    public void setHave_cp(int paramInt) {
        this.have_cp = paramInt;
    }

    public long getLastActionTime() {
        return this.lastActionTime;
    }

    public void setLastActionTime(long paramLong) {
        this.lastActionTime = paramLong;
    }

    public String getLastChapter() {
        return this.last_chapter;
    }

    public void setLastChapter(String paramString) {
        this.last_chapter = paramString;
    }

    public Date getLocalModifiedDate() {
        if (this.localModifiedDate == null)
            return new Date(0L);
        return this.localModifiedDate;
    }

    public void setLocalModifiedDate(Date paramDate) {
        this.localModifiedDate = paramDate;
    }

    public int getReadMode() {
        return this.readMode;
    }

    public void setReadMode(int paramInt) {
        this.readMode = paramInt;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String paramString) {
        this.title = paramString;
    }

    public String getTocId() {
        return this.toc_id;
    }

    public void setTocId(String paramString) {
        this.toc_id = paramString;
    }

    public int getTocIndex() {
        return this.tocIndex;
    }

    public void setTocIndex(int paramInt) {
        this.tocIndex = paramInt;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date paramDate) {
        this.updated = paramDate;
    }

    public boolean isDeleted() {
        return this.deleted;
    }

    public void setDeleted(boolean paramBoolean) {
        this.deleted = paramBoolean;
    }

    public boolean isFeedFat() {
        return this.feedFat;
    }

    public void setFeedFat(boolean paramBoolean) {
        this.feedFat = paramBoolean;
    }

    public boolean isFeeding() {
        return this.feeding;
    }

    public void setFeeding(boolean paramBoolean) {
        this.feeding = paramBoolean;
    }

    public boolean isRecommended() {
        return this.recommended;
    }

    public void setRecommended(boolean paramBoolean) {
        this.recommended = paramBoolean;
    }

    public boolean isTop() {
        return this.is_top;
    }

    public void setTop(boolean paramBoolean) {
        this.is_top = paramBoolean;
    }

    public boolean isUnread() {
        return this.is_unread;
    }

    public void setUnread(boolean paramBoolean) {
        this.is_unread = paramBoolean;
    }
}

