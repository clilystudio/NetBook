
package com.clilystudio.netbook.model;

import com.activeandroid.query.Delete;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.db.BookFile;
import java.util.Iterator;
import java.util.List;

public class TxtFileObject {
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean add(BookFile BookFile1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void delete(BookFile BookFile1)
    {
    }

    public static BookFile getProgress(String String1)
    {
        Iterator Iterator2 = getTxtFiles().iterator();

        while( Iterator2.hasNext() )
        {
            BookFile BookFile3 = (BookFile) Iterator2.next();

            if( !BookFile3.filePath.equals( String1 ) )
                continue;
            return BookFile3;
        }
        return null;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static BookFile getTxtFile(String String1)
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static List getTxtFiles()
    {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static void remove(BookFile BookFile1)
    {
    }

    public static void saveTxtFiles(List List1)
    {
        Iterator Iterator2 = List1.iterator();

        while( Iterator2.hasNext() )
            ((BookFile) Iterator2.next()).save();
    }

    public static void updateProgress(BookFile BookFile1)
    {
        BookFile BookFile2 = getTxtFile( BookFile1.getFilePath() );

        if( BookFile2 != null )
        {
            BookFile2.progress = BookFile1.getProgress();
            BookFile2.setProgressChapterIndex( BookFile1.getProgressChapterIndex() );
            BookFile2.setProgressCharOffset( BookFile1.getProgressCharOffset() );
            BookFile2.save();
        }
    }
}
