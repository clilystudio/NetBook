
package com.clilystudio.netbook.db;

import android.support.design.widget.am;
import com.activeandroid.Model;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.squareup.a.b;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.h;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookGenderRecommend$RecommendBook;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.RemoteBookShelf$Book;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.util.t;
import java.util.Date;
import java.util.List;

public class BookReadRecord extends Model {

    private String account;
    private String author;
    private String book_id;
    private int chapterCount;
    private int chapterCountAtFeed;
    private String chapterTitle;
    private String cover;
    private String downloadedSource;
    public int have_cp;
    public long lastActionTime;
    private String last_chapter;
    private Date localModifiedDate;
    public Date readTime;
    public boolean recommended;
    private String title;
    private int tocIndex;
    private String toc_id;
    private Date updated;
    private boolean is_unread = false;
    private boolean is_top = false;
    private boolean deleted = false;
    private boolean feeding = false;
    private boolean feedFat = false;
    private int readMode = -1;

    public static void addAccountInfo(BookReadRecord BookReadRecord1)
    {
        Account Account2 = am.e();

        if( Account2 != null )
            BookReadRecord1.setAccount( Account2.getUser().getId() );
        else
            BookReadRecord1.setAccount( null );
        BookReadRecord1.setLocalModifiedDate( new Date() );
        BookReadRecord1.save();
    }

    public static void create(BookGenderRecommend$RecommendBook RecommendBook1)
    {
        BookReadRecord BookReadRecord2 = createBookRecord( RecommendBook1 );

        addAccountInfo( BookReadRecord2 );
        BookReadRecord2.save();
    }

    public static void create(BookInfo BookInfo1)
    {
        BookReadRecord BookReadRecord2;

        trulyDelete( BookInfo1.getId() );
        BookReadRecord2 = createBookRecord( BookInfo1 );
        addAccountInfo( BookReadRecord2 );
        BookReadRecord2.save();
        i.a().c( new com.clilystudio.netbook.event.c( BookReadRecord2.getBookId() ) );
    }

    public static void create(BookInfo BookInfo1, String String2, int int3, int int4, int int5)
    {
        String String6 = BookInfo1.getId();
        BookReadRecord BookReadRecord7;

        trulyDelete( String6 );
        BookReadRecord7 = createBookRecord( BookInfo1 );
        BookReadRecord7.toc_id = String2;
        BookReadRecord7.readMode = int5;
        addAccountInfo( BookReadRecord7 );
        BookReadRecord7.save();
        MixTocRecord.create( String6, String2, int3, int4 );
        i.a().c( new com.clilystudio.netbook.event.c( String6 ) );
    }

    public static void create(BookInfo BookInfo1, String String2, String String3, String String4, int int5, int int6, int int7)
    {
        String String8 = BookInfo1.getId();
        BookReadRecord BookReadRecord9;

        trulyDelete( String8 );
        BookReadRecord9 = createBookRecord( BookInfo1 );
        BookReadRecord9.toc_id = String2;
        BookReadRecord9.readMode = int7;
        addAccountInfo( BookReadRecord9 );
        BookReadRecord9.save();
        TocReadRecord.create( String8, String2, String3, String4, int5, int6 );
        i.a().c( new com.clilystudio.netbook.event.c( String8 ) );
    }

    public static void create(RemoteBookShelf$Book Book1, boolean boolean2)
    {
        BookReadRecord BookReadRecord3 = createBookRecord( Book1 );

        addAccountInfo( BookReadRecord3 );
        BookReadRecord3.save();
    }

    private static BookReadRecord createBookRecord(BookGenderRecommend$RecommendBook RecommendBook1)
    {
        BookReadRecord BookReadRecord2 = new BookReadRecord();

        BookReadRecord2.book_id = RecommendBook1.get_id();
        BookReadRecord2.setTitle( RecommendBook1.getTitle() );
        BookReadRecord2.setCover( RecommendBook1.getCover() );
        BookReadRecord2.last_chapter = RecommendBook1.getLastChapter();
        BookReadRecord2.setUpdated( RecommendBook1.getUpdated() );
        BookReadRecord2.setChapterCount( RecommendBook1.getChaptersCount() );
        BookReadRecord2.setAuthor( RecommendBook1.getAuthor() );
        BookReadRecord2.setRecommended( true );
        return BookReadRecord2;
    }

    private static BookReadRecord createBookRecord(BookInfo BookInfo1)
    {
        BookReadRecord BookReadRecord2 = new BookReadRecord();

        BookReadRecord2.book_id = BookInfo1.getId();
        BookReadRecord2.setTitle( BookInfo1.getTitle() );
        BookReadRecord2.setCover( BookInfo1.getCover() );
        BookReadRecord2.last_chapter = BookInfo1.getLastChapter();
        BookReadRecord2.setUpdated( BookInfo1.getUpdated() );
        BookReadRecord2.setChapterCount( BookInfo1.getChaptersCount() );
        BookReadRecord2.setAuthor( BookInfo1.getAuthor() );
        if( BookInfo1.isHasCp() )
            BookReadRecord2.setHave_cp( 1 );
        else
            BookReadRecord2.setHave_cp( 2 );
        return BookReadRecord2;
    }

    private static BookReadRecord createBookRecord(RemoteBookShelf$Book Book1)
    {
        BookReadRecord BookReadRecord2 = new BookReadRecord();

        BookReadRecord2.book_id = Book1.getId();
        BookReadRecord2.setTitle( Book1.getTitle() );
        BookReadRecord2.setCover( Book1.getCover() );
        BookReadRecord2.last_chapter = Book1.getLastChapter();
        BookReadRecord2.setUpdated( Book1.getUpdated() );
        BookReadRecord2.setChapterCount( Book1.getChaptersCount() );
        BookReadRecord2.setAuthor( Book1.getAuthor() );
        if( Book1.isHasCp() )
        {
            BookReadRecord2.setHave_cp( 1 );
            BookReadRecord2.setReadMode( 9 );
        }
        else
            BookReadRecord2.setHave_cp( 2 );
        return BookReadRecord2;
    }

    public static void createFeed(RemoteBookShelf$Book Book1)
    {
        BookReadRecord BookReadRecord2 = createBookRecord( Book1 );

        BookReadRecord2.setFeeding( true );
        BookReadRecord2.setChapterCountAtFeed( Book1.getChaptersCount() );
        addAccountInfo( BookReadRecord2 );
        BookReadRecord2.save();
    }

    public static void delete(BookReadRecord BookReadRecord1)
    {
        if( BookReadRecord1 != null )
        {
            String String3;

            BookReadRecord1.setDeleted( true );
            BookReadRecord1.setFeeding( false );
            BookReadRecord1.setFeedFat( false );
            addAccountInfo( BookReadRecord1 );
            BookReadRecord1.save();
            String3 = BookReadRecord1.getBookId();
            deleteTocRecord( String3 );
            deleteModeRecord( String3 );
            deleteDlRecord( String3 );
        }
    }

    public static void delete(String String1)
    {
        delete( get( String1 ) );
    }

    public static void deleteAndSync(String String1)
    {
        delete( String1 );
        i.a().c( new h( String1 ) );
    }

    private static void deleteDlRecord(String String1)
    {
        BookDlRecord.delete( String1 );
    }

    private static void deleteModeRecord(String String1)
    {
        SourceRecord.delete( String1 );
    }

    private static void deleteTocRecord(String String1)
    {
        TocReadRecord.deleteByBookId( String1 );
        MixTocRecord.deleteByBookId( String1 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookReadRecord get(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAll()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllFeedFat()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllFeeding()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllFeedingOrderByCount()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllNoFeed()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllNotDeleted()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllWithDelNoFeed()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllWithTopNoFeed()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getAllWithTopNoFeedByRead()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookReadRecord getOnShelf(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void trulyDelete(String String1)
    {
    }

    public String buildDesc()
    {
        Object[] Object_1darray1 = new Object[2];

        Object_1darray1[0] = t.e( getUpdated() );
        Object_1darray1[1] = last_chapter;
        return String.format( "%s:%s", Object_1darray1 );
    }

    public String getAccount()
    {
        return account;
    }

    public String getAuthor()
    {
        return author;
    }

    public String getBookId()
    {
        return book_id;
    }

    public int getChapterCount()
    {
        return chapterCount;
    }

    public int getChapterCountAtFeed()
    {
        return chapterCountAtFeed;
    }

    public String getChapterTitle()
    {
        return chapterTitle;
    }

    public String getCover()
    {
        return cover;
    }

    public String getDownloadedSource()
    {
        return downloadedSource;
    }

    public String getFullCover()
    {
        return new StringBuilder().append( ApiService.a ).append( getCover() ).append( "-covers" ).toString();
    }

    public int getHave_cp()
    {
        return have_cp;
    }

    public long getLastActionTime()
    {
        return lastActionTime;
    }

    public String getLastChapter()
    {
        return last_chapter;
    }

    public Date getLocalModifiedDate()
    {
        if( localModifiedDate == null )
            return new Date( 0L );
        else
            return localModifiedDate;
    }

    public int getReadMode()
    {
        return readMode;
    }

    public String getTitle()
    {
        return title;
    }

    public String getTocId()
    {
        return toc_id;
    }

    public int getTocIndex()
    {
        return tocIndex;
    }

    public Date getUpdated()
    {
        return updated;
    }

    public boolean isDeleted()
    {
        return deleted;
    }

    public boolean isFeedFat()
    {
        return feedFat;
    }

    public boolean isFeeding()
    {
        return feeding;
    }

    public boolean isRecommended()
    {
        return recommended;
    }

    public boolean isTop()
    {
        return is_top;
    }

    public boolean isUnread()
    {
        return is_unread;
    }

    public void setAccount(String String1)
    {
        account = String1;
    }

    public void setAuthor(String String1)
    {
        author = String1;
    }

    public void setBookId(String String1)
    {
        book_id = String1;
    }

    public void setChapterCount(int int1)
    {
        chapterCount = int1;
    }

    public void setChapterCountAtFeed(int int1)
    {
        chapterCountAtFeed = int1;
    }

    public void setChapterTitle(String String1)
    {
        chapterTitle = String1;
    }

    public void setCover(String String1)
    {
        cover = String1;
    }

    public void setDeleted(boolean boolean1)
    {
        deleted = boolean1;
    }

    public void setDownloadedSource(String String1)
    {
        downloadedSource = String1;
    }

    public void setFeedFat(boolean boolean1)
    {
        feedFat = boolean1;
    }

    public void setFeeding(boolean boolean1)
    {
        feeding = boolean1;
    }

    public void setHave_cp(int int1)
    {
        have_cp = int1;
    }

    public void setLastActionTime(long long1)
    {
        lastActionTime = long1;
    }

    public void setLastChapter(String String1)
    {
        last_chapter = String1;
    }

    public void setLocalModifiedDate(Date Date1)
    {
        localModifiedDate = Date1;
    }

    public void setReadMode(int int1)
    {
        readMode = int1;
    }

    public void setRecommended(boolean boolean1)
    {
        recommended = boolean1;
    }

    public void setTitle(String String1)
    {
        title = String1;
    }

    public void setTocId(String String1)
    {
        toc_id = String1;
    }

    public void setTocIndex(int int1)
    {
        tocIndex = int1;
    }

    public void setTop(boolean boolean1)
    {
        is_top = boolean1;
    }

    public void setUnread(boolean boolean1)
    {
        is_unread = boolean1;
    }

    public void setUpdated(Date Date1)
    {
        updated = Date1;
    }
}
