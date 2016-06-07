package com.clilystudio.netbook.push;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.arcsoft.hpay100.a.a;
import java.util.List;

@Table(name="BookUnSubRecords")
public class BookUnSubRecord extends Model
{

  @Column(name="pushId", unique=true)
  public String pushId;

  public static void create(String paramString)
  {
    if (get(paramString) == null)
    {
      BookUnSubRecord localBookUnSubRecord = new BookUnSubRecord();
      localBookUnSubRecord.pushId = paramString;
      localBookUnSubRecord.save();
    }
  }

  public static void delete(String paramString)
  {
    new Delete().from(BookUnSubRecord.class).where("pushId = ?", new Object[] { paramString }).execute();
  }

  public static BookUnSubRecord get(String paramString)
  {
    if (paramString == null)
      return null;
    return (BookUnSubRecord)new Select().from(BookUnSubRecord.class).where("pushId = ?", new Object[] { paramString }).executeSingle();
  }

  public static List<BookUnSubRecord> getAll()
  {
    return new Select().from(BookUnSubRecord.class).execute();
  }

  public static BookUnSubRecord getBookId(String paramString)
  {
    return get(a.s(paramString));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.push.BookUnSubRecord
 * JD-Core Version:    0.6.0
 */