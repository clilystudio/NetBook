package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.Date;
import java.util.List;

@Table(name="BookTopicEnterRecord")
public class BookTopicEnterRecord extends Model
{

  @Column(name="book_id")
  public String book_id;

  @Column(name="time")
  public Date time;

  @Column(name="visit_count")
  private int visitCount;

  public BookTopicEnterRecord()
  {
  }

  public BookTopicEnterRecord(String paramString)
  {
    this();
    this.book_id = paramString;
  }

  public static BookTopicEnterRecord get(String paramString)
  {
    if (paramString == null)
      return null;
    List localList = new Select().from(BookTopicEnterRecord.class).where("book_id = ?", new Object[] { paramString }).execute();
    if (localList.size() > 0)
      return (BookTopicEnterRecord)localList.get(0);
    return new BookTopicEnterRecord(paramString);
  }

  public static void updateCount(String paramString, int paramInt)
  {
    if (paramInt == 0);
    BookTopicEnterRecord localBookTopicEnterRecord;
    do
    {
      return;
      localBookTopicEnterRecord = get(paramString);
    }
    while ((localBookTopicEnterRecord == null) || (paramInt <= localBookTopicEnterRecord.getVisitCount()));
    localBookTopicEnterRecord.setVisitCount(paramInt);
    localBookTopicEnterRecord.save();
  }

  public String getBook_id()
  {
    return this.book_id;
  }

  @Deprecated
  public Date getTime()
  {
    return this.time;
  }

  public int getVisitCount()
  {
    return this.visitCount;
  }

  public void setBook_id(String paramString)
  {
    this.book_id = paramString;
  }

  @Deprecated
  public void setTime(Date paramDate)
  {
    this.time = paramDate;
  }

  public void setVisitCount(int paramInt)
  {
    this.visitCount = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.db.BookTopicEnterRecord
 * JD-Core Version:    0.6.0
 */