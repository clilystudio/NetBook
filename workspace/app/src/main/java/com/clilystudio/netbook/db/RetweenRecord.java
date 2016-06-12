
package com.clilystudio.netbook.db;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.Model;
import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import java.util.Iterator;
import java.util.List;

public class RetweenRecord extends Model {

    private String tweetId;
    private String userId;
// Error: Internal #201: 
// The following method may not be correct.

    public static void cancelRetween(String String1, String String2)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void clear(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List findAll(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean isRetweened(String String1, String String2)
    {
    }

    public static void save2DB(String String1, String String2)
    {
        RetweenRecord RetweenRecord3 = new RetweenRecord();

        RetweenRecord3.setUserId( String1 );
        RetweenRecord3.setTweetId( String2 );
        RetweenRecord3.save();
    }

    public static void save2DB(List List1)
    {
        ActiveAndroid.beginTransaction();
        try
        {
            Iterator Iterator3 = List1.iterator();

            while( Iterator3.hasNext() )
                ((RetweenRecord) Iterator3.next()).save();
        }
        finally
        {
            ActiveAndroid.endTransaction();
            throw Object2;
        }
        try
        {
            ActiveAndroid.setTransactionSuccessful();
        }
        finally
        {
            ActiveAndroid.endTransaction();
            throw Object2;
        }
        ActiveAndroid.endTransaction();
    }

    public String getTweetId()
    {
        return tweetId;
    }

    public String getUserId()
    {
        return userId;
    }

    public void setTweetId(String String1)
    {
        tweetId = String1;
    }

    public void setUserId(String String1)
    {
        userId = String1;
    }
}
