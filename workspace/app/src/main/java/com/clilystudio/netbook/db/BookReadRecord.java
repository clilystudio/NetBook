package com.clilystudio.netbook.db;

import android.support.design.widget.am;

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
import com.clilystudio.netbook.model.BookGenderRecommend$RecommendBook;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.RemoteBookShelf$Book;
import com.clilystudio.netbook.util.t;

import java.util.Date;
import java.util.List;

@Table(name = "BookReadRecords")
public class BookReadRecord
        extends Model {
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
    @Column(name = "book_id", unique = 1)
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

    /*
     * Enabled aggressive block sorting
     */
    public static void addAccountInfo(BookReadRecord bookReadRecord) {
        Account account = am.e();
        if (account != null) {
            bookReadRecord.setAccount(account.getUser().getId());
        } else {
            bookReadRecord.setAccount(null);
        }
        bookReadRecord.setLocalModifiedDate(new Date());
        bookReadRecord.save();
    }

    public static void create(BookGenderRecommend$RecommendBook recommendBook) {
        BookReadRecord bookReadRecord = BookReadRecord.createBookRecord(recommendBook);
        BookReadRecord.addAccountInfo(bookReadRecord);
        bookReadRecord.save();
    }

    public static void create(BookInfo bookInfo) {
        BookReadRecord.trulyDelete(bookInfo.getId());
        BookReadRecord bookReadRecord = BookReadRecord.createBookRecord(bookInfo);
        BookReadRecord.addAccountInfo(bookReadRecord);
        bookReadRecord.save();
        i.a().c(new c(bookReadRecord.getBookId()));
    }

    public static void create(BookInfo bookInfo, String string, int n, int n2, int n3) {
        String string2 = bookInfo.getId();
        BookReadRecord.trulyDelete(string2);
        BookReadRecord bookReadRecord = BookReadRecord.createBookRecord(bookInfo);
        bookReadRecord.toc_id = string;
        bookReadRecord.readMode = n3;
        BookReadRecord.addAccountInfo(bookReadRecord);
        bookReadRecord.save();
        MixTocRecord.create(string2, string, n, n2);
        i.a().c(new c(string2));
    }

    public static void create(BookInfo bookInfo, String string, String string2, String string3, int n, int n2, int n3) {
        String string4 = bookInfo.getId();
        BookReadRecord.trulyDelete(string4);
        BookReadRecord bookReadRecord = BookReadRecord.createBookRecord(bookInfo);
        bookReadRecord.toc_id = string;
        bookReadRecord.readMode = n3;
        BookReadRecord.addAccountInfo(bookReadRecord);
        bookReadRecord.save();
        TocReadRecord.create(string4, string, string2, string3, n, n2);
        i.a().c(new c(string4));
    }

    public static void create(RemoteBookShelf$Book book, boolean bl) {
        BookReadRecord bookReadRecord = BookReadRecord.createBookRecord(book);
        BookReadRecord.addAccountInfo(bookReadRecord);
        bookReadRecord.save();
    }

    private static BookReadRecord createBookRecord(BookGenderRecommend$RecommendBook bookGenderRecommend$RecommendBook) {
        BookReadRecord bookReadRecord = new BookReadRecord();
        bookReadRecord.book_id = bookGenderRecommend$RecommendBook.get_id();
        bookReadRecord.setTitle(bookGenderRecommend$RecommendBook.getTitle());
        bookReadRecord.setCover(bookGenderRecommend$RecommendBook.getCover());
        bookReadRecord.last_chapter = bookGenderRecommend$RecommendBook.getLastChapter();
        bookReadRecord.setUpdated(bookGenderRecommend$RecommendBook.getUpdated());
        bookReadRecord.setChapterCount(bookGenderRecommend$RecommendBook.getChaptersCount());
        bookReadRecord.setAuthor(bookGenderRecommend$RecommendBook.getAuthor());
        bookReadRecord.setRecommended(true);
        return bookReadRecord;
    }

    private static BookReadRecord createBookRecord(BookInfo bookInfo) {
        BookReadRecord bookReadRecord = new BookReadRecord();
        bookReadRecord.book_id = bookInfo.getId();
        bookReadRecord.setTitle(bookInfo.getTitle());
        bookReadRecord.setCover(bookInfo.getCover());
        bookReadRecord.last_chapter = bookInfo.getLastChapter();
        bookReadRecord.setUpdated(bookInfo.getUpdated());
        bookReadRecord.setChapterCount(bookInfo.getChaptersCount());
        bookReadRecord.setAuthor(bookInfo.getAuthor());
        if (bookInfo.isHasCp()) {
            bookReadRecord.setHave_cp(1);
            return bookReadRecord;
        }
        bookReadRecord.setHave_cp(2);
        return bookReadRecord;
    }

    private static BookReadRecord createBookRecord(RemoteBookShelf$Book remoteBookShelf$Book) {
        BookReadRecord bookReadRecord = new BookReadRecord();
        bookReadRecord.book_id = remoteBookShelf$Book.getId();
        bookReadRecord.setTitle(remoteBookShelf$Book.getTitle());
        bookReadRecord.setCover(remoteBookShelf$Book.getCover());
        bookReadRecord.last_chapter = remoteBookShelf$Book.getLastChapter();
        bookReadRecord.setUpdated(remoteBookShelf$Book.getUpdated());
        bookReadRecord.setChapterCount(remoteBookShelf$Book.getChaptersCount());
        bookReadRecord.setAuthor(remoteBookShelf$Book.getAuthor());
        if (remoteBookShelf$Book.isHasCp()) {
            bookReadRecord.setHave_cp(1);
            bookReadRecord.setReadMode(9);
            return bookReadRecord;
        }
        bookReadRecord.setHave_cp(2);
        return bookReadRecord;
    }

    public static void createFeed(RemoteBookShelf$Book remoteBookShelf$Book) {
        BookReadRecord bookReadRecord = BookReadRecord.createBookRecord(remoteBookShelf$Book);
        bookReadRecord.setFeeding(true);
        bookReadRecord.setChapterCountAtFeed(remoteBookShelf$Book.getChaptersCount());
        BookReadRecord.addAccountInfo(bookReadRecord);
        bookReadRecord.save();
    }

    public static void delete(BookReadRecord bookReadRecord) {
        if (bookReadRecord == null) {
            return;
        }
        bookReadRecord.setDeleted(true);
        bookReadRecord.setFeeding(false);
        bookReadRecord.setFeedFat(false);
        BookReadRecord.addAccountInfo(bookReadRecord);
        bookReadRecord.save();
        String string = bookReadRecord.getBookId();
        BookReadRecord.deleteTocRecord(string);
        BookReadRecord.deleteModeRecord(string);
        BookReadRecord.deleteDlRecord(string);
    }

    public static void delete(String string) {
        BookReadRecord.delete(BookReadRecord.get(string));
    }

    public static void deleteAndSync(String string) {
        BookReadRecord.delete(string);
        i.a().c(new h(string));
    }

    private static void deleteDlRecord(String string) {
        BookDlRecord.delete(string);
    }

    private static void deleteModeRecord(String string) {
        SourceRecord.delete(string);
    }

    private static void deleteTocRecord(String string) {
        TocReadRecord.deleteByBookId(string);
        MixTocRecord.deleteByBookId(string);
    }

    public static BookReadRecord get(String string) {
        if (string == null) {
            return null;
        }
        return (BookReadRecord) new Select().from(BookReadRecord.class).where("book_id = ?", string).executeSingle();
    }

    public static List<BookReadRecord> getAll() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{0};
        return from.where("deleted = ?", arrobject).execute();
    }

    public static List<BookReadRecord> getAllFeedFat() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{1, 1};
        return from.where("feeding = ? AND feedFat = ?", arrobject).execute();
    }

    public static List<BookReadRecord> getAllFeeding() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{1};
        return from.where("feeding = ? ", arrobject).execute();
    }

    public static List<BookReadRecord> getAllFeedingOrderByCount() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{1};
        return from.where("feeding = ? ", arrobject).orderBy("(chapterCount - chapterCountAtFeed) DESC").execute();
    }

    public static List<BookReadRecord> getAllNoFeed() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{0, 0};
        return from.where("deleted = ? AND feeding = ?", arrobject).execute();
    }

    public static List<BookReadRecord> getAllNotDeleted() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{0};
        return from.where("deleted = ?", arrobject).orderBy("is_top DESC,readTime DESC").execute();
    }

    public static List<BookReadRecord> getAllWithDelNoFeed() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{0};
        return from.where("feeding = ?", arrobject).execute();
    }

    public static List<BookReadRecord> getAllWithTopNoFeed() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{0, 0};
        return from.where("deleted = ? AND feeding = ?", arrobject).orderBy("is_top DESC,updated DESC").execute();
    }

    public static List<BookReadRecord> getAllWithTopNoFeedByRead() {
        From from = new Select().from(BookReadRecord.class);
        Object[] arrobject = new Object[]{0, 0};
        return from.where("deleted = ? AND feeding = ?", arrobject).orderBy("is_top DESC,readTime DESC").execute();
    }

    public static BookReadRecord getOnShelf(String string) {
        if (string == null) {
            return null;
        }
        return (BookReadRecord) new Select().from(BookReadRecord.class).where("book_id = ? AND deleted = 0", string).executeSingle();
    }

    public static void trulyDelete(String string) {
        new Delete().from(BookReadRecord.class).where("book_id = ?", string).execute();
    }

    public String buildDesc() {
        Object[] arrobject = new Object[]{t.e((Date) this.getUpdated()), this.last_chapter};
        return String.format("%s:%s", arrobject);
    }

    public String getAccount() {
        return this.account;
    }

    public void setAccount(String string) {
        this.account = string;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String string) {
        this.author = string;
    }

    public String getBookId() {
        return this.book_id;
    }

    public void setBookId(String string) {
        this.book_id = string;
    }

    public int getChapterCount() {
        return this.chapterCount;
    }

    public void setChapterCount(int n) {
        this.chapterCount = n;
    }

    public int getChapterCountAtFeed() {
        return this.chapterCountAtFeed;
    }

    public void setChapterCountAtFeed(int n) {
        this.chapterCountAtFeed = n;
    }

    public String getChapterTitle() {
        return this.chapterTitle;
    }

    public void setChapterTitle(String string) {
        this.chapterTitle = string;
    }

    public String getCover() {
        return this.cover;
    }

    public void setCover(String string) {
        this.cover = string;
    }

    public String getDownloadedSource() {
        return this.downloadedSource;
    }

    public void setDownloadedSource(String string) {
        this.downloadedSource = string;
    }

    public String getFullCover() {
        return ApiService.a + this.getCover() + "-covers";
    }

    public int getHave_cp() {
        return this.have_cp;
    }

    public void setHave_cp(int n) {
        this.have_cp = n;
    }

    public long getLastActionTime() {
        return this.lastActionTime;
    }

    public void setLastActionTime(long l) {
        this.lastActionTime = l;
    }

    public String getLastChapter() {
        return this.last_chapter;
    }

    public void setLastChapter(String string) {
        this.last_chapter = string;
    }

    public Date getLocalModifiedDate() {
        if (this.localModifiedDate == null) {
            return new Date(0);
        }
        return this.localModifiedDate;
    }

    public void setLocalModifiedDate(Date date) {
        this.localModifiedDate = date;
    }

    public int getReadMode() {
        return this.readMode;
    }

    public void setReadMode(int n) {
        this.readMode = n;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String string) {
        this.title = string;
    }

    public String getTocId() {
        return this.toc_id;
    }

    public void setTocId(String string) {
        this.toc_id = string;
    }

    public int getTocIndex() {
        return this.tocIndex;
    }

    public void setTocIndex(int n) {
        this.tocIndex = n;
    }

    public Date getUpdated() {
        return this.updated;
    }

    public void setUpdated(Date date) {
        this.updated = date;
    }

    public boolean isDeleted() {
        return this.deleted;
    }

    public void setDeleted(boolean bl) {
        this.deleted = bl;
    }

    public boolean isFeedFat() {
        return this.feedFat;
    }

    public void setFeedFat(boolean bl) {
        this.feedFat = bl;
    }

    public boolean isFeeding() {
        return this.feeding;
    }

    public void setFeeding(boolean bl) {
        this.feeding = bl;
    }

    public boolean isRecommended() {
        return this.recommended;
    }

    public void setRecommended(boolean bl) {
        this.recommended = bl;
    }

    public boolean isTop() {
        return this.is_top;
    }

    public void setTop(boolean bl) {
        this.is_top = bl;
    }

    public boolean isUnread() {
        return this.is_unread;
    }

    public void setUnread(boolean bl) {
        this.is_unread = bl;
    }
}
