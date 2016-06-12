
package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;

public class SourceWebReadRecord extends Model {

    private String _id;
    private String bookId;
    private int chapterIndex;
    private String cmd;
    private int readMode = -1;

    public static void create(String String1, int int2, int int3)
    {
        SourceWebReadRecord SourceWebReadRecord4 = new SourceWebReadRecord();

        SourceWebReadRecord4.bookId = String1;
        SourceWebReadRecord4.readMode = int2;
        SourceWebReadRecord4.chapterIndex = int3;
        SourceWebReadRecord4.save();
    }

    public static void create(String String1, int int2, String String3)
    {
        SourceWebReadRecord SourceWebReadRecord4 = new SourceWebReadRecord();

        SourceWebReadRecord4.bookId = String1;
        SourceWebReadRecord4.readMode = int2;
        SourceWebReadRecord4.cmd = String3;
        SourceWebReadRecord4.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static SourceWebReadRecord get(String String1, int int2)
    {
    }

    public String getBookId()
    {
        return bookId;
    }

    public int getChapterIndex()
    {
        return chapterIndex;
    }

    public String getCmd()
    {
        return cmd;
    }

    public int getReadMode()
    {
        return readMode;
    }

    public void setBookId(String String1)
    {
        bookId = String1;
    }

    public void setChapterIndex(int int1)
    {
        chapterIndex = int1;
    }

    public void setCmd(String String1)
    {
        cmd = String1;
    }

    public void setReadMode(int int1)
    {
        readMode = int1;
    }
}
