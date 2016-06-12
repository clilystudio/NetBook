
package com.clilystudio.netbook.db;

import com.activeandroid.Model;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.List;

public class SourceRecord extends Model {

    private String bookId;
    private String sogouMd;
    private String source;
    private String sourceId;

    public static void create(String String1, String String2, String String3)
    {
        SourceRecord SourceRecord4 = new SourceRecord();

        SourceRecord4.bookId = String1;
        SourceRecord4.source = String2;
        SourceRecord4.sourceId = String3;
        SourceRecord4.save();
    }

    public static void create(String String1, String String2, String String3, String String4)
    {
        SourceRecord SourceRecord5 = new SourceRecord();

        SourceRecord5.bookId = String1;
        SourceRecord5.source = String2;
        SourceRecord5.sourceId = String3;
        SourceRecord5.sogouMd = String4;
        SourceRecord5.save();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void delete(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static SourceRecord get(String String1, String String2)
    {
    }

    public String getBookId()
    {
        return bookId;
    }

    public String getSogouMd()
    {
        return sogouMd;
    }

    public String getSource()
    {
        return source;
    }

    public String getSourceId()
    {
        return sourceId;
    }

    public void setBookId(String String1)
    {
        bookId = String1;
    }

    public void setSogouMd(String String1)
    {
        sogouMd = String1;
    }

    public void setSource(String String1)
    {
        source = String1;
    }

    public void setSourceId(String String1)
    {
        sourceId = String1;
    }
}
