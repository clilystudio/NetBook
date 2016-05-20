package com.clilystudio.app.netbook.db;

import android.text.TextUtils;
import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.Date;
import java.util.List;

@Table(name="BookDlRecord")
public class BookDlRecord extends Model
{
  public static final int END = 4;
  public static final int IDLE = 0;
  public static final int PAUSE = 3;
  public static final int PENDING = 1;
  public static final int PREPARE = 5;
  public static final int RUN = 2;

  @Column(name="author")
  private String author;

  @Column(name="bookId", unique=true)
  private String bookId;

  @Column(name="bookTitle")
  private String bookTitle;

  @Column(name="created")
  private Date created;

  @Column(name="mode")
  private int mode = -1;

  @Column(name="progress")
  private int progress = 0;

  @Column(name="start")
  private int start;

  @Column(name="status")
  private int status = 0;

  @Column(name="tocId")
  private String tocId;

  @Column(name="total")
  private int total;

  public static boolean containsTocInfo(BookDlRecord paramBookDlRecord)
  {
    return (!TextUtils.isEmpty(paramBookDlRecord.getBookTitle())) && (!TextUtils.isEmpty(paramBookDlRecord.getBookId()));
  }

  public static void create(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    BookDlRecord localBookDlRecord = new BookDlRecord();
    localBookDlRecord.bookId = paramString1;
    localBookDlRecord.bookTitle = paramString2;
    localBookDlRecord.author = paramString3;
    localBookDlRecord.tocId = paramString4;
    localBookDlRecord.mode = paramInt1;
    localBookDlRecord.start = paramInt2;
    localBookDlRecord.total = paramInt3;
    localBookDlRecord.status = paramInt4;
    localBookDlRecord.created = new Date();
    localBookDlRecord.save();
  }

  public static void delete(String paramString)
  {
    new Delete().from(BookDlRecord.class).where("bookId = ?", new Object[] { paramString }).execute();
  }

  public static BookDlRecord get(String paramString)
  {
    if (paramString == null)
      return null;
    return (BookDlRecord)new Select().from(BookDlRecord.class).where("bookId = ?", new Object[] { paramString }).executeSingle();
  }

  public static BookDlRecord get(String paramString, int paramInt)
  {
    if (paramString == null)
      return null;
    From localFrom = new Select().from(BookDlRecord.class);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    return (BookDlRecord)localFrom.where("bookId = ? AND mode = ?", arrayOfObject).executeSingle();
  }

  public static List<BookDlRecord> getAll()
  {
    return new Select().from(BookDlRecord.class).orderBy("created ASC").execute();
  }

  public static List<BookDlRecord> getAllPause()
  {
    From localFrom = new Select().from(BookDlRecord.class);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(3);
    return localFrom.where("status = ? ", arrayOfObject).execute();
  }

  public static List<BookDlRecord> getAllPending()
  {
    From localFrom = new Select().from(BookDlRecord.class);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(1);
    return localFrom.where("status = ? ", arrayOfObject).orderBy("created ASC").execute();
  }

  public static List<BookDlRecord> getAllPrepareAsc()
  {
    From localFrom = new Select().from(BookDlRecord.class);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(5);
    return localFrom.where("status = ? ", arrayOfObject).orderBy("created ASC").execute();
  }

  public static List<BookDlRecord> getAllRun()
  {
    From localFrom = new Select().from(BookDlRecord.class);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(2);
    return localFrom.where("status = ? ", arrayOfObject).execute();
  }

  public static void reset(BookDlRecord paramBookDlRecord, int paramInt1, int paramInt2)
  {
    paramBookDlRecord.start = paramInt1;
    paramBookDlRecord.total = paramInt2;
    paramBookDlRecord.status = 1;
    paramBookDlRecord.created = new Date();
    paramBookDlRecord.save();
  }

  public static void update(BookDlRecord paramBookDlRecord, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBookDlRecord.tocId = paramString;
    paramBookDlRecord.mode = paramInt1;
    paramBookDlRecord.start = paramInt2;
    paramBookDlRecord.total = paramInt3;
    paramBookDlRecord.status = paramInt4;
    paramBookDlRecord.created = new Date();
    paramBookDlRecord.save();
  }

  public String getAuthor()
  {
    return this.author;
  }

  public String getBookId()
  {
    return this.bookId;
  }

  public String getBookTitle()
  {
    return this.bookTitle;
  }

  public Date getCreated()
  {
    return this.created;
  }

  public int getMode()
  {
    return this.mode;
  }

  public int getProgress()
  {
    return this.progress;
  }

  public int getStart()
  {
    return this.start;
  }

  public int getStatus()
  {
    return this.status;
  }

  public String getTocId()
  {
    return this.tocId;
  }

  public int getTotal()
  {
    return this.total;
  }

  public void setAuthor(String paramString)
  {
    this.author = paramString;
  }

  public void setBookId(String paramString)
  {
    this.bookId = paramString;
  }

  public void setBookTitle(String paramString)
  {
    this.bookTitle = paramString;
  }

  public void setCreated(Date paramDate)
  {
    this.created = paramDate;
  }

  public void setMode(int paramInt)
  {
    this.mode = paramInt;
  }

  public void setProgress(int paramInt)
  {
    this.progress = paramInt;
  }

  public void setStart(int paramInt)
  {
    this.start = paramInt;
  }

  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public void setTocId(String paramString)
  {
    this.tocId = paramString;
  }

  public void setTotal(int paramInt)
  {
    this.total = paramInt;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.BookDlRecord
 * JD-Core Version:    0.6.2
 */