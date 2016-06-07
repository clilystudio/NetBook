package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.annotation.Column;
import com.activeandroid.annotation.Table;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

@Table(name="PostUsefulRecord")
public class PostUsefulRecord extends Model
{
  public static final int TYPE_NO = 2;
  public static final int TYPE_YES = 1;

  @Column(name="postId")
  public String postId;

  @Column(name="type")
  public int type = 0;

  @Column(name="userId")
  public String userId;

  public static void create(String paramString1, String paramString2, int paramInt)
  {
    PostUsefulRecord localPostUsefulRecord = new PostUsefulRecord();
    localPostUsefulRecord.userId = paramString1;
    localPostUsefulRecord.postId = paramString2;
    localPostUsefulRecord.type = paramInt;
    localPostUsefulRecord.save();
  }

  public static PostUsefulRecord get(String paramString1, String paramString2)
  {
    List localList = new Select().from(PostUsefulRecord.class).where("userId = ? AND postId = ?", new Object[] { paramString1, paramString2 }).execute();
    if ((localList != null) && (localList.size() > 0))
      return (PostUsefulRecord)localList.get(0);
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.db.PostUsefulRecord
 * JD-Core Version:    0.6.0
 */