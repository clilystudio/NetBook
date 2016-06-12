
package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

public class MixTocRecord extends Model {

    private String bookId;
    private String chapterTitle;
    private String tocId;
    private int chapterIndex = -1;
    private int charIndex = 0;

    public static MixTocRecord create(String String1, String String2, int int3, int int4)
    {
        MixTocRecord MixTocRecord5 = new MixTocRecord();

        MixTocRecord5.setBookId( String1 );
        MixTocRecord5.setTocId( String2 );
        MixTocRecord5.setChapterIndex( int3 );
        MixTocRecord5.setCharIndex( int4 );
        MixTocRecord5.save();
        return MixTocRecord5;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void deleteByBookId(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static MixTocRecord get(String String1)
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

    public int getCharIndex()
    {
        return charIndex;
    }

    public String getTocId()
    {
        return tocId;
    }

    public void setBookId(String String1)
    {
        bookId = String1;
    }

    public void setChapterIndex(int int1)
    {
        chapterIndex = int1;
    }

    public void setCharIndex(int int1)
    {
        charIndex = int1;
    }

    public void setTocId(String String1)
    {
        tocId = String1;
    }
}
