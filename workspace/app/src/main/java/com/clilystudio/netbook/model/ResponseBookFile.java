
package com.clilystudio.netbook.model;

import com.clilystudio.netbook.db.BookFile;

public class ResponseBookFile {

    public ResponseBookFile(BookFile BookFile1)
    {
        size = BookFile1.getSize();
        name = BookFile1.getName();
    }

    private String name;
    private String size;

    public String getName()
    {
        return name;
    }

    public String getSize()
    {
        return size;
    }

    public void setName(String String1)
    {
        name = String1;
    }

    public void setSize(String String1)
    {
        size = String1;
    }
}
