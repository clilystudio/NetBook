package com.clilystudio.app.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

@Table(name="PostAgreeRecord")
public class PostAgreeRecord extends Model
{

  @Column(name="account_id")
  public String account_id;

  @Column(name="post_id")
  public String post_id;

  public static void add(String paramString1, String paramString2)
  {
    PostAgreeRecord localPostAgreeRecord = new PostAgreeRecord();
    localPostAgreeRecord.account_id = paramString1;
    localPostAgreeRecord.post_id = paramString2;
    localPostAgreeRecord.save();
  }

  public static PostAgreeRecord get(String paramString1, String paramString2)
  {
    List localList = new Select().from(PostAgreeRecord.class).where("account_id = ? AND post_id = ?", new Object[] { paramString1, paramString2 }).execute();
    if ((localList != null) && (localList.size() > 0))
      return (PostAgreeRecord)localList.get(0);
    return null;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.db.PostAgreeRecord
 * JD-Core Version:    0.6.2
 */